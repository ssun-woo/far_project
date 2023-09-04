package com.far.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/culture")
public class CultureController {

	@RequestMapping("/cate_list")
	public ModelAndView acc_list() {
		
		ModelAndView mav = new ModelAndView("culture/culture_index");
		return mav;
	}
	
}
