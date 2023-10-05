package com.far.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.far.dto.CouponDTO;
import com.far.dto.MemberDTO;
import com.far.dto.RoomDTO;
import com.far.dto.StoreDTO;
import com.far.service.PaymentService;

@Controller
@RequestMapping("/payment")
public class PaymentController {

	@Autowired
	private PaymentService paymentService;
	
	// 결제 페이지
	@RequestMapping("")
	public ModelAndView payment(HttpServletRequest request) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String id = authentication.getName();
		
		String date = request.getParameter("date2");
        Pattern pattern = Pattern.compile("(\\d+)박");
        Matcher matcher = pattern.matcher(date);
        int nights = 0;
        
        if (matcher.find()) {
            String matchedText = matcher.group(1); // 첫 번째 그룹(괄호 안의 내용)의 값
            nights = Integer.parseInt(matchedText);
        }
        
        
		String date1 = extractDate(date);
		String date2 = extractDate(date.substring(date.indexOf("~") + 1));
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String sdate = year + "-" + date1;
		
		
//		
//		if(Integer.parseInt(date1.substring(0,2)) > Integer.parseInt(date2.substring(0,2))) {
//			year += 1;
//		}
		String edate = year + "-" + date2;
		
		int totalCount = Integer.parseInt(request.getParameter("totalCount"));
		
		
		ModelAndView mav = new ModelAndView();
		// 쿠폰 선택 옵션에 쿠폰 목록 불러오기
		List<CouponDTO> coupons = paymentService.getCoupons(id);
		
		
		int roomNum = Integer.parseInt(request.getParameter("roomNum"));
		
		// 메뉴 정보
		RoomDTO room = paymentService.getMenu(roomNum);
		StoreDTO store = paymentService.getStore(room.getStoreNum());

		// 포인트
		MemberDTO member = paymentService.getMember(id);
		
		// 날짜 형식 변환
		for(int i=0; i<coupons.size(); i++) {
			coupons.get(i).setCouponStartDate(coupons.get(i).getCouponStartDate().substring(0, 10));
			coupons.get(i).setCouponEndDate(coupons.get(i).getCouponEndDate().substring(0, 10));
		}
		
		mav.addObject("coupons", coupons);
		mav.addObject("room", room);
		mav.addObject("store", store);
		mav.addObject("member", member);
		mav.addObject("sdate", sdate);
		mav.addObject("edate", edate);
		mav.addObject("nights", nights);
		
		mav.setViewName("payment/payment");
		return mav;
	}
	
	// 쿠폰 발급
	@Secured("Role_m")
	@RequestMapping("/couponIssue")
	public @ResponseBody String couponIssue(@RequestParam("coupon_name") String couponName) {

		System.out.println("couponName = " + couponName);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String memId = authentication.getName();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("mem_id", memId);
		map.put("coupon_name", couponName);
		CouponDTO c = paymentService.getCouponIssue(map);
		
		String msg = null;
		
		CouponDTO newc = new CouponDTO();
		
		
		newc.setCouponName(couponName);
		newc.setMemId(memId);
		
		if(c == null) {
			paymentService.insertCoupon(newc);
			msg = "쿠폰이 발급되었습니다.";
		}else {
			msg = "이미 쿠폰을 보유하고 있습니다.";
		}
		return msg;
	}

	// 결제 완료 페이지
	@RequestMapping("/end")
	public ModelAndView payment_end() {
		ModelAndView mav = new ModelAndView("payment/payment_end");
		return mav;
	}
	
	@GetMapping("/paymentEnd")
	public String gopaymentEnd() {
		return "/payment/payment_end";
	}
	
	@PostMapping("/paymentEnds")
	public ResponseEntity<String> paymentEnd(@RequestBody Map<String, Integer> requestMap) {
	    int pointDiscount = requestMap.get("pointDiscount");
	    int pointEarn = requestMap.get("pointEarn");
	    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    String memId = authentication.getName();
	    String msg = null;
	    
	    try {
	    	Map<String, Object> pMap = new HashMap<>();
			pMap.put("memId", memId);
			pMap.put("pointDiscount", pointDiscount);
			pMap.put("pointEarn", pointEarn);
			paymentService.pointEarn(pMap);
			
			msg = "포인트가 적립되었습니다.";
	    	
	    	ModelAndView mav = new ModelAndView();
	        mav.setViewName("redirect:/payment/payment_end");
	        return ResponseEntity.ok(msg);
		} catch (Exception e) {
			msg = "포인트 적립에 실패하였습니다.";
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(msg);
		}
	}
	
	private String extractDate(String input) {
		String[] parts = input.split(" ");
		for (String part : parts) {
			if (part.matches("\\d{2}-\\d{2}")) {
				return part;
			}
		}
		return null; // 날짜를 찾지 못한 경우
	}

}