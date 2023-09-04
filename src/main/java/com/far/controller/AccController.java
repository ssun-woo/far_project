package com.far.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/acc")
public class AccController {
	
	// 숙소 상세 페이지
	@RequestMapping("/cate_list")
	public ModelAndView acc_list() {
		ModelAndView mav = new ModelAndView("acc/acc_index");
		return mav;
	}
	
	// 세부 카테 클릭 시
	@RequestMapping("/list")
	public ModelAndView acc_hotel(HttpServletRequest request) {
		String cate = request.getParameter("cate");
		ModelAndView mav = new ModelAndView("acc/acc_list");
//		System.out.println("cate : " + cate);
		return mav;
	}
	
	// 상품 상세보기
	@RequestMapping("/cont")
	public ModelAndView acc_cont(HttpServletRequest request) {
		
		String cate = request.getParameter("cate");	// 현재 cate 받아옴
		String page = request.getParameter("page");	// 페이지 책갈피 기능
		String no = request.getParameter("no");
	
		
		ModelAndView mav = new ModelAndView("acc/acc_cont");
		mav.addObject("cate", cate);
		mav.addObject("page", page);
		
		System.out.println(cate);
		System.out.println(page);
		System.out.println(no);
		
		
		return mav;
	}
	
	
	
	
	
}
