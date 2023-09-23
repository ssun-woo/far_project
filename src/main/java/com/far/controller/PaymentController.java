package com.far.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
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
	public ModelAndView payment(HttpSession session, HttpServletRequest request) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String id = authentication.getName();
		id = "sunwoo"; // 일단 결과를 위해 하드코딩 한 부분, 나중에 없애야 함
		ModelAndView mav = new ModelAndView();
		
		// 쿠폰 선택 옵션에 쿠폰 목록 불러오기
		List<CouponDTO> coupons = paymentService.getCoupons(id);
		
		int roomNum = Integer.parseInt(request.getParameter("room_num"));
		// 메뉴 정보
		RoomDTO room = paymentService.getMenu(roomNum);
		
		// 가게 정보
		StoreDTO store = paymentService.getStore(room.getStoreNum());
		
		// 포인트
		MemberDTO member = paymentService.getMember(id);
		
		/*
		 * for(CouponDTO c : coupons) { System.out.println("쿠폰이름 : " +
		 * c.getCoupon_name()); System.out.println("쿠폰 할인율 : " +
		 * c.getCoupon_discount()); }
		 */
		
		// 날짜 형식 변환
		for(int i=0; i<coupons.size(); i++) {
			coupons.get(i).setCouponStartDate(coupons.get(i).getCouponStartDate().substring(0, 10));
			coupons.get(i).setCouponEndDate(coupons.get(i).getCouponEndDate().substring(0, 10));
		}
		
		mav.addObject("coupons", coupons);
		mav.addObject("room", room);
		mav.addObject("store", store);
		mav.addObject("member", member);
		
		mav.setViewName("payment/payment");
		return mav;
	}
	
	// 쿠폰 발급
	@RequestMapping("/couponIssue")
	public @ResponseBody String couponIssue(HttpSession session,
			@RequestParam("couponName") String couponName) {

		System.out.println("couponName = " + couponName);
		
		String memId = (String)session.getAttribute("memId");
		//String mem_id = "qwer";
		String cName = couponName;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("mem_id", memId);
		map.put("coupon_name", cName);
		CouponDTO c = paymentService.getCouponIssue(map);
		
		
		String msg = null;
		
		CouponDTO newc = new CouponDTO();
		
		newc.setCouponNum(1);
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

}