package com.far.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.far.dao.FindMemClassDAO;
import com.far.service.CeoService;


@Controller
public class MainController {
	@Autowired
	private CeoService ceoService;
	@Autowired
	private SessionRegistry sessionRegistry;
	
	@Autowired
	private FindMemClassDAO findMemClass;
	
	// index 페이지를 나타냄
	@RequestMapping("/")
	public ModelAndView index(HttpSession session) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String memId = authentication.getName();
        String memClass = findMemClass.findMemClass(memId);
    
        session.setAttribute("memId", memId);
        ModelAndView mav = new ModelAndView("main/index");
        mav.addObject("memId", memId);
        session.setAttribute("memClass", memClass);
        return mav;
		
	}
	
	 @RequestMapping("/access_denied")
	 public String errorPage() {
		 return "error/access-denied";
	 }
	 
	 
	 @RequestMapping("/main")
	 public String errorToMain() {
		 return "main/index";
	 }

	 @GetMapping("/kakaopay")
	 public String kakaopay() {
		 return "payment/kakaopay";
	 }
	
	// 고객센터 이동
	@RequestMapping("/customer_service")
	public ModelAndView customer_service() {
		return new ModelAndView("cs/cs_main");
	}

	// 마이페이지
	@RequestMapping("/my_page")
	public ModelAndView my_page() {
		return new ModelAndView("myPage/myPage");
	}

	@RequestMapping("/search")
	public ModelAndView search() {
		return new ModelAndView("search/search_detail_main");
	}

	// 이벤트 상세보기
	@RequestMapping("/event_cont")
	public String eventCont() {
		return "../ex/event_cont";
	}

	// 이벤트 상세보기
	@RequestMapping("/notice_list")
	public String notice_list() {
		return "../ex/notice_list";
	}
}
