package com.far.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.far.dto.JJimDTO;
import com.far.dto.ReviewDTO;
import com.far.dto.RoomDTO;
import com.far.dto.StoreDTO;
import com.far.service.AccResvService;
import com.far.service.CeoService;
import com.far.service.JJimService;
import com.far.service.ReviewService;
import com.far.service.StoreService;

@Controller
@RequestMapping("/acc")
public class AccController {

	@Autowired
	private AccResvService accResvService;

	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private JJimService jjimService;

	@Autowired
	private StoreService storeService;

	@Autowired
	private CeoService ceoService;

	// 숙소 상세 카테고리 페이지
	@RequestMapping("/cate_list")
	public ModelAndView acc_list(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("acc/acc_index");
		return mav;
	}

	// 세부 카테 클릭 시 출력되는 목록
	@RequestMapping("/list")
	public ModelAndView acc_hotel(HttpServletRequest request, HttpSession session, Model model, @RequestParam(defaultValue = "0") int page) {
	    // 버튼을 눌러서 엄어올때는 여기에 값
		String detailCate = request.getParameter("detail_cate");
		
	    String cate = request.getParameter("cate");
	    String keyword = request.getParameter("keyword");
	    String memId = request.getParameter("memId");
	    int countStore = -1;
	    Map<String, String> map = new HashMap<>();
	    if(keyword == null) {
	    	countStore = storeService.countStore(detailCate);
	    }else {
	    	map.put("cate", cate);
	    	map.put("keyword", keyword);
	    	countStore = storeService.countStore2(map);
	    }
	    
	    System.out.println("detailCate : " + detailCate);
	    Pageable pageable = PageRequest.of(page, 10, Sort.by(Sort.Direction.DESC, "storeNum"));
	    ModelAndView mav = new ModelAndView();
	    Page<StoreDTO> storePage = storeService.storeList(pageable, detailCate);
	    session.setAttribute("list", storePage);
	    session.setAttribute("countStore", countStore);
	    System.out.println("memId = " + memId);
	    mav.setViewName("acc/acc_list");
	    return mav;
}

	// 상품 상세보기
	@RequestMapping("/cont")
	public ModelAndView acc_cont(HttpServletRequest request) {
		String detail_cate = request.getParameter("detail_cate"); // 현재 cate 받아옴
		String cate = request.getParameter("cate"); // 현재 cate 받아옴
		// int page = Integer.parseInt(request.getParameter("page")); // 페이지 책갈피 기능
		int store_num = Integer.parseInt(request.getParameter("store_num"));
		StoreDTO s = accResvService.getInfo(store_num);

		List<RoomDTO> mList = ceoService.getMenuList(store_num);

		for (RoomDTO m : mList) {
			m.setCheckIn(m.getCheckIn().substring(0, 2) + ":" + m.getCheckIn().substring(2, 4));
			m.setCheckOut(m.getCheckOut().substring(0, 2) + ":" + m.getCheckOut().substring(2, 4));
		}
//		System.out.println(s.getStoreAddr1());
		String region = s.getStoreAddr1().substring(0, 2);
		String sebu_cate = null;
//		System.out.println(s.getDetail_cate());
		if (s.getDetailCate().equals("hotel")) {
			sebu_cate = "호텔";
		} else if (s.getDetailCate().equals("motel")) {
			sebu_cate = "모텔";
		} else if (s.getDetailCate().equals("camping")) {
			sebu_cate = "캠핑";
		} else {
			sebu_cate = "팬션";
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("detail_cate", detail_cate);
		mav.addObject("s", s);
		mav.addObject("store_num", store_num);
		mav.addObject("region", region);
		mav.addObject("sebu_cate", sebu_cate);
		mav.setViewName("acc/acc_cont");
		mav.addObject("mList", mList);

		return mav;
	}


	// 리뷰 삭제
	@RequestMapping("/cont/delete")
	public ModelAndView delete_review(HttpServletRequest request) {

		int review_num = Integer.parseInt(request.getParameter("review_num"));
		String store_num = request.getParameter("store_num");
		String cate = request.getParameter("cate");

		System.out.println(cate);
		System.out.println(store_num);

		reviewService.delReview(review_num);

		return new ModelAndView("redirect:/acc/cont?cate=" + cate + "&store_num=" + store_num);
	}

	// 리뷰 수정폼 이동
	@RequestMapping("/cont/edit")
	public ModelAndView edit_review(HttpServletRequest request) {
		int review_num = Integer.parseInt(request.getParameter("review_num"));
		String store_num = request.getParameter("store_num");
		String cate = request.getParameter("cate");

		// reviewService.editReview(review_num);
		ReviewDTO dto = reviewService.getUpdateReview(review_num);
		String memId = dto.getMemId();
		String review_date = dto.getReviewDate();
		String review_cont = dto.getReviewCont();
		double review_rating = dto.getReviewRating();

		ModelAndView mav = new ModelAndView();
		mav.addObject("review_num", review_num);
		mav.addObject("review_cont", review_cont);
		mav.addObject("review_rating", review_rating);
		mav.addObject("memId", memId);
		mav.addObject("review_date", review_date);
		mav.addObject("store_num", store_num);
		mav.addObject("cate", cate);
		mav.setViewName("acc/acc_review_edit");

		System.out.println(review_date);
		return mav;

	}

	// 리뷰 수정
	@RequestMapping("/cont/update")
	public ModelAndView update_review(HttpServletRequest request, ReviewDTO dto) {
		int review_num = Integer.parseInt(request.getParameter("review_num"));
		String store_num = request.getParameter("store_num");
		String cate = request.getParameter("cate");

//		System.out.println(cate);
//		System.out.println(store_num);
//		System.out.println(review_num);

		reviewService.editReview(dto);

		return new ModelAndView(
				"redirect:/acc/cont/edit?cate=" + cate + "&store_num=" + store_num + "&review_num=" + review_num);
	}
	
	//찜 등록
	@PostMapping("/cont/jjim")
	public String jjim_btn(HttpServletRequest request) {
		int store_num = Integer.parseInt(request.getParameter("store_num"));
		String jjim = request.getParameter("jjim");
		JJimDTO jdto = new JJimDTO();
		jdto.setMemId("abdg1");
		jdto.setStoreNum(store_num);
		
		jjimService.setJJim(jdto);
				
		
		String cate = request.getParameter("cate");
		
		
		System.out.println("jjim : " + jjim);
        
		return "redirect:/acc/cont?cate="+cate+"&store_num="+store_num;
	}
	//찜 삭제
	@PostMapping("/cont/jjim_del")
	public String jjim_del_btn(HttpServletRequest request) {
		int store_num = Integer.parseInt(request.getParameter("store_num"));
		String cate = request.getParameter("cate");
		
		JJimDTO jdto = new JJimDTO();
		jdto.setMemId("abdg1");
		jdto.setStoreNum(store_num);
		
		jjimService.delJJim(jdto);
		
		return "redirect:/acc/cont?cate="+cate+"&store_num="+store_num;
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
	
	@RequestMapping("/reload_menu")
	public ModelAndView acc_reload_menu(HttpServletRequest request) {
		
		String date = request.getParameter("date");
		int totalCount = Integer.parseInt(request.getParameter("totalCount"));
		int store_num = Integer.parseInt(request.getParameter("store_num"));
		String date1 = extractDate(date);
		String date2 = extractDate(date.substring(date.indexOf("~") + 1));
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String sdate = year + "-" + date1;
		
		if(Integer.parseInt(date1.substring(0,2)) > Integer.parseInt(date2.substring(0,2))) {
			year += 1;
		}
		String edate = year + "-" + date2;
		
//		System.out.println("store_num : " + store_num);
//		System.out.println("시작일: " + sdate);
//		System.out.println("끝일 : " + edate);
//		System.out.println("총인원 : " + totalCount);
		StoreDTO s = accResvService.getInfo(store_num);
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("startDay", sdate);
		map.put("endDay", edate);
		map.put("totalPeople", totalCount);
		map.put("storeNum", store_num);
		
		List<RoomDTO> rlist = accResvService.getPossibleRoom(map);
		
		for(RoomDTO r : rlist) {
			String in_hour = r.getCheckIn().substring(0, 2);
			String in_min = r.getCheckIn().substring(2, 4);
			r.setCheckIn(in_hour + " : " + in_min);
			
			String out_hour = r.getCheckOut().substring(0, 2);
			String out_min = r.getCheckOut().substring(2, 4);
			r.setCheckOut(out_hour + " : " + out_min);
		}
		
//		System.out.println("size : " + rlist.size());
//		System.out.println("totalCount : " + totalCount);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("acc/acc_reload_menu");
		mav.addObject("rlist", rlist);
		mav.addObject("s", s);
		
		
		return mav;
	}
	
	

}
