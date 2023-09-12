package com.far.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/my_page")
public class MyPageControlller {

	@GetMapping("/chkResv")
	public ModelAndView chkresv() {
		ModelAndView mav = new ModelAndView("myPage/chkReservation");
		return mav;
	}
	
	@GetMapping("/wishlist")
	public ModelAndView wishlist() {
		ModelAndView mav = new ModelAndView("myPage/Jjim");
		return mav;
	}
	
	@GetMapping("/changeMyInfo")
	public ModelAndView changeMyInfo() {
		ModelAndView mav = new ModelAndView("myPage/chk_pwd");
		return mav;
	}
	
//	@GetMapping("/chkResv")
//	public ModelAndView chkresv() {
//		ModelAndView mav = new ModelAndView("myPage/chkReservation");
//		return mav;
//	}

}
