package com.far.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/acc")
public class AccController {
	
	@RequestMapping("/all_list")
	public ModelAndView acc_list() {
		
		ModelAndView mav = new ModelAndView("acc/acc_index");
		
		return mav;
	}
	
	
	
}
