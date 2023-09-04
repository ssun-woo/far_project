package com.far.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/culture")
public class CultureController {

	@RequestMapping("/all_list")
	public ModelAndView acc_list() {
		
		ModelAndView mav = new ModelAndView("culture/culture_index");
		return mav;
	}
	
	// 콘서트 리스트로 이동
	@GetMapping("/all_list/consert")
	public ModelAndView concert_list() {
		ModelAndView mav = new ModelAndView("culture/cu_Concert_list");
		return mav;
	}
	
	// 플레이 리스트로 이동
	@GetMapping("/all_list/play")
	public ModelAndView play_list() {
		ModelAndView mav = new ModelAndView("culture/cu_Play_list");
		return mav;
	}
	
	// 뮤지컬 리스트로 이동
	@GetMapping("/all_list/musical")
	public ModelAndView musical_list() {
		ModelAndView mav = new ModelAndView("culture/cu_Musical_list");
		return mav;
	}
	
	// 전시회 리스트로 이동
	@GetMapping("/all_list/exhibition")
	public ModelAndView exhibition_list() {
		ModelAndView mav = new ModelAndView("culture/cu_Exhibition_list");
		return mav;
	}
}
