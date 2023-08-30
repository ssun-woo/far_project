package com.far.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/far")
public class MainController {
		
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("main/index");
		return mav;	
	}
	
	
}
