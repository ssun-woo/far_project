package com.far.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.far.dto.JJimDTO;
import com.far.dto.ResvDTO;
import com.far.dto.ReviewDTO;
import com.far.service.AccResvService;
import com.far.service.JJimService;
import com.far.service.ReviewService;

@Controller
@RequestMapping("/acc")
public class AccController {

	@Autowired
	private AccResvService accResvService;

	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private JJimService jjimService;
	

	// 숙소 상세 카테고리 페이지
	@RequestMapping("/cate_list")
	public ModelAndView acc_list() {
		ModelAndView mav = new ModelAndView("acc/acc_index");
		return mav;
	}

	// 세부 카테 클릭 시
	@RequestMapping("/list")
	public ModelAndView acc_hotel(HttpServletRequest request) {
		String cate = request.getParameter("cate");
		ModelAndView mav = new ModelAndView();
		mav.addObject("cate", cate);
		mav.setViewName("acc/acc_list");
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

	//리뷰목록
	@GetMapping("/cont")
	public ModelAndView acc_reviewlist(HttpServletRequest request, ReviewDTO rdto) {
		
		int storeNum = Integer.parseInt(request.getParameter("storeNum"));
		List<ReviewDTO> rlist = reviewService.getReview(storeNum);
		String cate = request.getParameter("cate");
		
		JJimDTO jdto = new JJimDTO();
		jdto.setMemId("abdg1");
		jdto.setStore_num(storeNum);
		System.out.println("memId:"+jdto);
		
		
		int count = jjimService.getCount(jdto);
		System.out.println("JJim_count: "+count);
		
		int review_count = reviewService.getReivewCount(rdto);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("acc/acc_cont");
		mav.addObject("cate", cate);
		mav.addObject("JJim",count);
		mav.addObject("review_count",review_count);
		mav.addObject("reviewList", rlist);
		mav.addObject("storeNum", storeNum);
		
		return mav;
	}
	
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
		if (session.getAttribute("id") == null) {
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

	// 숙소 결제 페이지
	@RequestMapping("/payment_end")
	public ModelAndView acc_payment_end(String cate, int store_num, HttpSession session) {

		String id = (String) session.getAttribute("id");
		id = "a";

		ResvDTO resv = new ResvDTO();
		resv.setResv_num(1);
		resv.setStore_num(store_num);
		resv.setMem_id(id);
		resv.setStart_day("시작일, 시간입니다");
		resv.setEnd_day("마지막날, 시간입니다");
		resv.setPeople_num(2);
		accResvService.resvStroe(resv);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("payment/payment_end");
		return mav;
	}

	// 숙소 결제 페이지
	/*
	 * @RequestMapping("/payment_end") public ModelAndView acc_payment_end(String
	 * cate, int store_num, HttpSession session) {
	 * 
	 * String id = (String)session.getAttribute("id"); id = "a";
	 * 
	 * ResvDTO resv = new ResvDTO(); resv.setResv_num(1);
	 * resv.setStore_num(store_num); resv.setMem_id(id);
	 * resv.setStart_day("시작일, 시간입니다"); resv.setEnd_day("마지막날, 시간입니다");
	 * resv.setPeople_num(2); accResvService.resvStroe(resv); ModelAndView mav = new
	 * ModelAndView(); mav.setViewName("payment/payment_end"); return mav; }
	 */

}
