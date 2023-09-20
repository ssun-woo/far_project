package com.far.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.far.dto.ResvDTO;
import com.far.dto.ReviewDTO;
import com.far.service.AccResvService;
import com.far.service.ReviewService;

@Controller
@RequestMapping("/acc")
public class AccController {

	@Autowired
	private AccResvService accResvService;

	@Autowired
	private ReviewService reviewService;

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

	// 상품 상세보기
//	@RequestMapping("/cont")
//	public ModelAndView acc_cont(HttpServletRequest request, ReviewDTO rdto) {
//		
//		reviewService.setReview(rdto);
//		int store_num = Integer.parseInt(request.getParameter("store_num"));
//		List<ReviewDTO> rlist = reviewService.getReview(store_num);
//		String cate = request.getParameter("cate"); // 현재 cate 받아옴
//		int page = Integer.parseInt(request.getParameter("page"));	// 페이지 책갈피 기능
		

		 
		
//		ModelAndView mav = new ModelAndView();
//		
//		mav.addObject("cate", cate);
////		mav.addObject("page", page);
//		
//		mav.setViewName("acc/acc_cont");
//		mav.addObject("reviewList", rlist);
//		mav.addObject("store_num", store_num);
//		mav.addObject("dto",rdto);
//		System.out.println("store_num : " + store_num);
//
//		System.out.println("cate : " + cate);
////		System.out.println(page);
//		System.out.println(rdto);
//		
//		
//
//		return mav;
//		
//	}

	//리뷰목록
	@GetMapping("/cont")
	public ModelAndView acc_reviewlist(HttpServletRequest request) {
		
		
		int store_num = Integer.parseInt(request.getParameter("store_num"));
		List<ReviewDTO> rlist = reviewService.getReview(store_num);
		String cate = request.getParameter("cate");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("acc/acc_cont");
		mav.addObject("cate", cate);
		mav.addObject("reviewList", rlist);
		mav.addObject("store_num", store_num);
		System.out.println("store_num : " + store_num);
		System.out.println("cate : " + cate);
		return mav;
	}
	
	//리뷰등록
	@PostMapping("/cont")
	public String acc_reviewForm(HttpServletRequest request,ReviewDTO rdto) {
		
		int store_num = Integer.parseInt(request.getParameter("store_num"));
		reviewService.setReview(rdto);
//		reviewService.delReview(rdto);
		String cate = request.getParameter("cate");
		
		return "redirect:/acc/cont?cate="+cate+"&store_num="+store_num;
	}
	

//	@PostMapping("/delete/{review_num}")
//	public String deleteReview(@PathVariable("review_num") int review_num, HttpServletRequest request)throws Exception {
//		
//		int store_num = Integer.parseInt(request.getParameter("store_num"));
//		reviewService.delReview(review_num);
//		String cate = request.getParameter("cate");
//		
//		return "redirect:/acc/cont?cate="+cate+"&store_num="+store_num;
//	}
	
	//리뷰 삭제
	 @RequestMapping("/cont/delete")
	 public ModelAndView delete_review(HttpServletRequest request) {
		 
		 int review_num = Integer.parseInt(request.getParameter("review_num"));
		 String store_num  = request.getParameter("store_num");
		 String cate = request.getParameter("cate");
		 
		 System.out.println(cate);
		 System.out.println(store_num);
//		 System.out.println(review_num);
		 
		 reviewService.delReview(review_num);
		 
		 
		 
		 return new ModelAndView("redirect:/acc/cont?cate=" + cate + "&store_num="+ store_num);
	 }
	 
	 //리뷰 수정폼 이동
	 @RequestMapping("/cont/edit")
	 public ModelAndView edit_review(HttpServletRequest request) {
		 int review_num = Integer.parseInt(request.getParameter("review_num"));
		 String store_num = request.getParameter("store_num");
		 String cate = request.getParameter("cate");
		 
		//reviewService.editReview(review_num);
		 ReviewDTO dto = reviewService.getUpdateReview(review_num);
		 String memId = dto.getMemId();
		 String review_date = dto.getReview_date();
		 String review_cont = dto.getReview_cont();
		 double review_rating = dto.getReview_rating();
		 
		 ModelAndView mav = new ModelAndView();
		 mav.addObject("review_num", review_num);
		 mav.addObject("review_cont", review_cont);
		 mav.addObject("review_rating", review_rating);
		 mav.addObject("memId", memId);
		 mav.addObject("review_date", review_date);
		 mav.addObject("store_num",store_num);
		 mav.addObject("cate", cate);
		 mav.setViewName("acc/acc_review_edit");
		
		 System.out.println(review_date);
		 return mav;
		 
		 
		// return new ModelAndView("redirect:/acc/cont?cate=" + cate + "&store_num="+ store_num);
	 }
	 
	 //리뷰 수정
	 @RequestMapping("/cont/update")
	 public ModelAndView update_review(HttpServletRequest request, ReviewDTO dto){
		 int review_num = Integer.parseInt(request.getParameter("review_num"));
		 String store_num  = request.getParameter("store_num");
		 String cate = request.getParameter("cate");
		 
		 System.out.println(cate);
		 System.out.println(store_num);
		 System.out.println(review_num);
		 
		 reviewService.editReview(dto);
		 
		 
		 return new ModelAndView("redirect:/acc/cont/edit?cate=" + cate + "&store_num="+ store_num+"&review_num="+review_num);
	 }
	
//	 //리뷰 수정
//	 @RequestMapping("/cont/update")
//	 public ModelAndView update_review(HttpServletRequest request, ReviewDTO dto){
//		 int review_num = Integer.parseInt(request.getParameter("review_num"));
//		 String store_num  = request.getParameter("store_num");
//		 String cate = request.getParameter("cate");
//		 
//		 System.out.println(cate);
//		 System.out.println(store_num);
//		 System.out.println(review_num);
//		 
//		 reviewService.editReview(dto);
//		 
//		 ModelAndView mav = new ModelAndView();
//		 mav.setViewName("acc/acc_review_close");
//		 return mav;
//		
//	 }
	

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
