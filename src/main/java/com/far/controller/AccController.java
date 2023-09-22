
package com.far.controller;

import java.io.PrintWriter;
import java.util.List;

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

import com.far.dto.MenuDTO;
import com.far.dto.ResvDTO;
import com.far.dto.ReviewDTO;
import com.far.dto.StoreDTO;
import com.far.service.AccResvService;
import com.far.service.CeoService;
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
	private StoreService storeService;

	@Autowired
	private CeoService ceoService;

	// 숙소 상세 카테고리 페이지
	@RequestMapping("/cate_list")
	public ModelAndView acc_list() {
		ModelAndView mav = new ModelAndView("acc/acc_index");
		return mav;
	}

	// 세부 카테 클릭 시 출력되는 목록
	@RequestMapping("/list")
	public ModelAndView acc_hotel(HttpServletRequest request, HttpSession session, Model model, @RequestParam(defaultValue = "0") int page) {
	    String detailCate = request.getParameter("detail_cate");
	    int countStore = storeService.countStore(detailCate);
	    Pageable pageable = PageRequest.of(page, 10, Sort.by(Sort.Direction.DESC, "storeNum"));
	    ModelAndView mav = new ModelAndView();
	    Page<StoreDTO> storePage = storeService.storeList(pageable, detailCate);
	    session.setAttribute("list", storePage);
	    session.setAttribute("countStore", countStore);
	    
	    mav.setViewName("acc/acc_list");
	    return mav;
}

//	// 세부 카테 클릭 시 출력되는 목록
	
//	public ModelAndView acc_hotel(HttpServletRequest request, @PageableDefault(page = 0, size = 10, sort = "storeName", direction = Sort.Direction.DESC)Pageable pageable) {

//	public ModelAndView acc_hotel(HttpServletRequest request,
//			@PageableDefault(page = 0, size = 10, sort = "storeName", direction = Sort.Direction.DESC) Pageable pageable) {

//		String cate = request.getParameter("cate");
//		String detail_cate = request.getParameter("detail_cate");
//
//		List<StoreDTO> slist = accResvService.getCateList(detail_cate);
//		int totalCount = accResvService.getTotalCount(detail_cate);
//		ModelAndView mav = new ModelAndView();
//
//		mav.addObject("detail_cate", detail_cate);
//		mav.addObject("totalCount", totalCount);

//		Page<Store> acc_list = ListUpService.storeList(pageable);

//		Page<Store> acc_list = listUpService.storeList(pageable);

//		System.out.println(acc_list);
//		System.out.println(acc_list.getSize());
//		mav.addObject("acc_list", acc_list);
//		mav.addObject("cate", cate);
//		mav.setViewName("acc/acc_list");
//		mav.addObject("slist", slist);
//		return mav;
//	}

//	public ModelAndView acc_hotel(HttpServletRequest request, @PageableDefault(page = 0, size = 10, sort = "storeName", direction = Sort.Direction.DESC)Pageable pageable) {
//		String cate = request.getParameter("cate");
//		String detail_cate = request.getParameter("detail_cate");
//
//		List<StoreDTO> slist = accResvService.getCateList(detail_cate);
//		int totalCount = accResvService.getTotalCount(detail_cate);
//		ModelAndView mav = new ModelAndView();
//
//		mav.addObject("detail_cate", detail_cate);
//		mav.addObject("totalCount", totalCount);
//		Page<Store> acc_list = listUpService.storeList(pageable);
//		System.out.println(acc_list);
//		System.out.println(acc_list.getSize());
//		mav.addObject("acc_list", acc_list);
//		mav.addObject("cate", cate);
//		mav.setViewName("acc/acc_list");
//		mav.addObject("slist", slist);
//		return mav;


	// 상품 상세보기
	@RequestMapping("/cont")
	public ModelAndView acc_cont(HttpServletRequest request) {
		String detail_cate = request.getParameter("detail_cate"); // 현재 cate 받아옴
		String cate = request.getParameter("cate"); // 현재 cate 받아옴
		// int page = Integer.parseInt(request.getParameter("page")); // 페이지 책갈피 기능
		int store_num = Integer.parseInt(request.getParameter("store_num"));
		StoreDTO s = accResvService.getInfo(store_num);

		List<MenuDTO> mList = ceoService.getMenuList(store_num);

		for (MenuDTO m : mList) {
			m.setCheck_in(m.getCheck_in().substring(0, 2) + ":" + m.getCheck_in().substring(2, 4));
			m.setCheck_out(m.getCheck_out().substring(0, 2) + ":" + m.getCheck_out().substring(2, 4));

		}

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

//		

//	// 리뷰목록
//	@GetMapping("/cont")
//	public ModelAndView acc_reviewlist(HttpServletRequest request) {
//
//		int store_num = Integer.parseInt(request.getParameter("store_num"));
//		List<ReviewDTO> rlist = reviewService.getReview(store_num);
//		String cate = request.getParameter("cate");
//
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("acc/acc_cont");
//		mav.addObject("cate", cate);
//		mav.addObject("reviewList", rlist);
//		mav.addObject("store_num", store_num);
//		System.out.println("store_num : " + store_num);
//		System.out.println("cate : " + cate);
//		return mav;
//	}
//
//	// 리뷰등록
//	@PostMapping("/cont")
//	public String acc_reviewForm(HttpServletRequest request, ReviewDTO rdto) {
//
//		int store_num = Integer.parseInt(request.getParameter("store_num"));
//		reviewService.setReview(rdto);
//		String cate = request.getParameter("cate");
//
//		return "redirect:/acc/cont?cate=" + cate + "&store_num=" + store_num;
//	}

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
		String review_date = dto.getReview_date();
		String review_cont = dto.getReview_cont();
		double review_rating = dto.getReview_rating();

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

		System.out.println(cate);
		System.out.println(store_num);
		System.out.println(review_num);

		reviewService.editReview(dto);

		return new ModelAndView(
				"redirect:/acc/cont/edit?cate=" + cate + "&store_num=" + store_num + "&review_num=" + review_num);
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

	// 숙소 결제 페이지
	@RequestMapping("/payment_end")
	public ModelAndView acc_payment_end(String cate, int store_num, HttpSession session) {
		String id = (String) session.getAttribute("id");
		id = "a";
		ResvDTO resv = new ResvDTO();
		resv.setResv_num(3); // 시퀀스가 들어갈 자리
		resv.setStore_num(store_num);
		resv.setMemId(id);
		resv.setStart_day("시작일, 시간입니다");
		resv.setEnd_day("마지막날, 시간입니다");
		resv.setPeople_num(2);
		accResvService.resvStroe(resv);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("payment/payment_end");
		return mav;
	}

}
