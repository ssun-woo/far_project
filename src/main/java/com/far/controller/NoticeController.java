package com.far.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.far.service.NoticeService;


@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	
	
	// 공지 메인 인덱스
	@RequestMapping("")
	public ModelAndView index() {
		return new ModelAndView("notice/notice");
	}
	
	// 이벤트 게시판
	@GetMapping("/event_list")
	public ModelAndView notice_evnet_list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notice/event_list");
		return mav;
	}
	
	// 공지 게시판
	@GetMapping("/notice_list")
	public ModelAndView notice_notice_list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notice/notice_list");
		return mav;
	}
	
}
