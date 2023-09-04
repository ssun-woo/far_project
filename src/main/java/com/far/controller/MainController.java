package com.far.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
		
	
	// index 페이지를 나타냄
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("main/index");
		return mav;	
	}
	
	// 로그인 페이지 이동
	@RequestMapping("/login")
	public ModelAndView login() {
		
		ModelAndView mav = new ModelAndView("login/login");
		return mav;
	}
	
}