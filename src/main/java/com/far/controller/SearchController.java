package com.far.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/search")
public class SearchController {

	@RequestMapping("/search/detail")
	public ModelAndView search_detail() {
		ModelAndView mav = new ModelAndView("search/search_detail");
		return mav;	
	}
}