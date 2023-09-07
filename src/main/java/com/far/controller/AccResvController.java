package com.far.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.far.service.AccResvServiceimpl;

// 숙소 예약관리자 Controller
@Controller
@RequestMapping("/acc")
public class AccResvController {
	
	@Autowired
	private AccResvServiceimpl accResvService;
	
	@RequestMapping("")
	public ModelAndView 
	
	
}
