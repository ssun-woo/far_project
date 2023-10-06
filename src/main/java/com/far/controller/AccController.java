package com.far.controller;


import java.io.PrintWriter;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	    ModelAndView mav = new ModelAndView();
	    List<StoreDTO> storePage = storeService.storeList(detailCate);
	    
	    Map<Integer, Integer> lowPrice = new HashMap<>();
	    Map<Integer, Integer> reviewCount = new HashMap<>();
	    Map<Integer, Float> score = new HashMap<>(); 
	    
	    for(StoreDTO s : storePage) {
	    	// System.out.println("어떤식으로 나옴 : " + s);
	    	// System.out.println("이런것도됨? " + s.getStoreNum());
	    	int lowerPrice = 0;
	    	
	    	if(storePage.size() != 0) {
	    		lowerPrice = storeService.getLowerPrice(s.getStoreNum());
	    	}
	    	
	    	lowPrice.put(s.getStoreNum(), lowerPrice);
//	    	int reviewCount2 = storeService.getReviewCount(s.getStoreNum());
//	    	reviewCount.put(s.getStoreNum(), reviewCount2);
//	    	
//	    	Float starScore = storeService.getStarScore(s.getStoreNum());
//	    	score.put(s.getStoreNum(), starScore);
	    	
	    	
	    }
	   
	    
	    session.setAttribute("list", storePage);
	    session.setAttribute("countStore", countStore);
	    System.out.println("memId = " + memId);
	    mav.setViewName("acc/acc_list");
	    mav.addObject("page", page);
	    if(storePage.size() != 0) {
	    	mav.addObject("lowPrice", lowPrice);
	    }else {
	    	mav.addObject("lowPrice", 0);
	    }
	    return mav;
}

	// 상품 상세보기
	@RequestMapping("/cont")
	public ModelAndView acc_cont(HttpServletRequest request) {
		String detail_cate = request.getParameter("detail_cate"); // 현재 cate 받아옴
		String cate = request.getParameter("cate"); // 현재 cate 받아옴
		// int page = Integer.parseInt(request.getParameter("page")); // 페이지 책갈피 기능
		int store_num = Integer.parseInt(request.getParameter("store_num"));
		System.out.println("store_num : " + store_num);
		
		String date = request.getParameter("date2");
		System.out.println("date2 : " + date);
		
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



	//찜 등록
	@PostMapping("/cont/jjim")
	public String jjim_btn(HttpServletRequest request) {
		int storeNum = Integer.parseInt(request.getParameter("storeNum"));
		String jjim = request.getParameter("jjim");
		JJimDTO jdto = new JJimDTO();
		jdto.setMemId("abdg1");
		jdto.setStoreNum(storeNum);
		
		jjimService.setJJim(jdto);
				
		
		String cate = request.getParameter("cate");
		
		
		System.out.println("jjim : " + jjim);
        
		return "redirect:/acc/cont?cate="+cate+"&storeNum="+storeNum;
	}
	
	//찜 삭제
	@PostMapping("/cont/jjim_del")
	public String jjim_del_btn(HttpServletRequest request) {
		int storeNum = Integer.parseInt(request.getParameter("storeNum"));
		String cate = request.getParameter("cate");
		
		JJimDTO jdto = new JJimDTO();
		jdto.setMemId("abdg1");
		jdto.setStoreNum(storeNum);
		
		jjimService.delJJim(jdto);
		
		return "redirect:/acc/cont?cate="+cate+"&storeNum="+storeNum;
	}

//	//리뷰목록
//	@GetMapping("/cont")
//	public ModelAndView acc_reviewlist(HttpServletRequest request, ReviewDTO rdto) {
//		
//		int storeNum = Integer.parseInt(request.getParameter("store_num"));
//		List<ReviewDTO> rlist = reviewService.getReview(storeNum);
//		String cate = request.getParameter("cate");
//		
//		JJimDTO jdto = new JJimDTO();
//		jdto.setMemId("abdg1");
//		jdto.setStoreNum(storeNum);
//		System.out.println("memId:"+jdto);
//		
//		
//		int count = jjimService.getCount(jdto);
//		System.out.println("JJim_count: "+count);
//		
//		int review_count = reviewService.getReivewCount(rdto);
//		
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("acc/acc_cont");
//		mav.addObject("cate", cate);
//		mav.addObject("JJim",count);
//		mav.addObject("review_count",review_count);
//		mav.addObject("reviewList", rlist);
//		mav.addObject("storeNum", storeNum);
//		
//		return mav;
//	}
	
	//리뷰등록
	@PostMapping("/cont")
	public String acc_reviewForm(HttpServletRequest request,ReviewDTO rdto) {
		
		int storeNum = Integer.parseInt(request.getParameter("storeNum"));
		reviewService.setReview(rdto);
		String cate = request.getParameter("cate");
		
		return "redirect:/acc/cont?cate="+cate+"&storeNum="+storeNum;
	}
	


	
	//리뷰 삭제
	 @RequestMapping("/cont/delete")
	 public ModelAndView delete_review(HttpServletRequest request) {
		 
		 int reviewNum = Integer.parseInt(request.getParameter("reviewNum"));
		 String storeNum  = request.getParameter("storeNum");
		 String cate = request.getParameter("cate");
		 
		 System.out.println(cate);
		 System.out.println(storeNum);
//		 System.out.println(review_num);
		 
		 reviewService.delReview(reviewNum);
		 
		 
		 
		 return new ModelAndView("redirect:/acc/cont?cate=" + cate + "&storeNum="+ storeNum);
	 }
	 
	 //리뷰 수정폼 이동
	 @RequestMapping("/cont/edit")
	 public ModelAndView edit_review(HttpServletRequest request) {
		 int reviewNum = Integer.parseInt(request.getParameter("reviewNum"));
		 String store_num = request.getParameter("storeNum");
		 String cate = request.getParameter("cate");
		 
		//reviewService.editReview(review_num);
		 ReviewDTO dto = reviewService.getUpdateReview(reviewNum);
		 String memId = dto.getMemId();
		 String reviewDate = dto.getReviewDate();
		 String reviewCont = dto.getReviewCont();
		 double reviewRating = dto.getReviewRating();
		 
		 ModelAndView mav = new ModelAndView();
		 mav.addObject("reviewNum", reviewNum);
		 mav.addObject("reviewCont", reviewCont);
		 mav.addObject("reviewRating", reviewRating);
		 mav.addObject("memId", memId);
		 mav.addObject("reviewDate", reviewDate);
		 mav.addObject("storeNum",store_num);
		 mav.addObject("cate", cate);
		 mav.setViewName("acc/acc_review_edit");
		
		 
		 System.out.println(reviewDate);
		 return mav;
		 
		 
		// return new ModelAndView("redirect:/acc/cont?cate=" + cate + "&store_num="+ store_num);
	 }
	 
	 //리뷰 수정
	 @RequestMapping("/cont/update")
	 public ModelAndView update_review(HttpServletRequest request, ReviewDTO dto){
		 int reviewNum = Integer.parseInt(request.getParameter("reviewNum"));
		 String storeNum  = request.getParameter("storeNum");
		 String cate = request.getParameter("cate");
		 
		 System.out.println(cate);
		 System.out.println(storeNum);
		 System.out.println(reviewNum);
		 
		 reviewService.editReview(dto);
		 
		 return new ModelAndView("redirect:/acc/cont/edit?cate=" + cate + "&storeNum="+ storeNum+"&reviewNum="+reviewNum);
	 }
	
	//리뷰 추천
		@RequestMapping("/cont/recommend")
		public String recommend_btn(HttpServletRequest request, ReviewDTO rdto) {
			int storeNum = Integer.parseInt(request.getParameter("storeNum"));
			int reviewNum = Integer.parseInt(request.getParameter("reviewNum"));
			
			//int recommendCheck = Integer.parseInt(request.getParameter("recommendCheck"));
			String cate = request.getParameter("cate");
			
			
//			ReviewDTO rdto = new ReviewDTO();
//			rdto.setReviewNum(reviewNum);
			
			//rdto.setStoreNum(10); 

			System.out.println(rdto);
			
			reviewService.setRecommend(rdto);
			
	        
			return "redirect:/acc/cont?cate="+cate+"&storeNum="+storeNum;

			
		}
		


	// 숙소 결제페이지 이동
	@RequestMapping("/payment_info")
	public ModelAndView acc_payment_info(String cate, int store_num, HttpSession session, HttpServletResponse response,
			String target) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		store_num = 10;
		if (session.getAttribute("memId") == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 기능입니다');");
			out.println("location = '/login?target=/acc/payment_info?cate=" + cate + "&store_num=" + store_num + "'");
			out.println("</script>");
		} else {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("payment/payment");
			mav.addObject("cate", cate);
			mav.addObject("store_num", 10);

			return mav;
		}
		return null;

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
