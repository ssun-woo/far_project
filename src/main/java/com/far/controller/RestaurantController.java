package com.far.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("resto")
public class RestaurantController {
	
	// 세부카테고리 리스트
	@RequestMapping("/cate_list")
	public ModelAndView resto_list() {
		ModelAndView mav = new ModelAndView("resto/resto_index");
		return mav;
	}
	
	
	// 카테고리별 리스트
	@RequestMapping("/list")
	public ModelAndView resto_list(HttpServletRequest request) {
		
		String cate = request.getParameter("cate");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("resto/resto_list");
		mav.addObject("cate", cate);
		return mav;
	}
	
	// 음식점 상세보기
	@RequestMapping("/cont")
	public ModelAndView resto_cont(HttpServletRequest request) {
		
		String cate = request.getParameter("cate");
		String page = request.getParameter("page");
		String no = request.getParameter("no");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("resto/resto_cont");
		
		System.out.println(cate);
		System.out.println(page);
		System.out.println(no);
		
		
		return mav;
		
	}
	
	
}
