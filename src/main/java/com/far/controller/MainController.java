package com.far.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.naming.directory.SearchResult;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionInformation;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.far.model.Member;
import com.far.security.auth.PrincipalDetailsService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainController {

	@Autowired
	private SessionRegistry sessionRegistry;
	
	@Autowired
	private PrincipalDetailsService principalDetailsService;
	
	// index 페이지를 나타냄
	@RequestMapping("/")
	public ModelAndView index(HttpSession session) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String memId = authentication.getName();

        // 세션에 memId 저장
        session.setAttribute("memId", memId);

        ModelAndView mav = new ModelAndView("main/index");
        mav.addObject("memId", memId);

        return mav;
		
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

//	// 검색 시 결과창
//	@RequestMapping("/search")
//	public ModelAndView search() {
//		return new ModelAndView("search/search_detail_main");
//	}

// // 로그인 페이지 이동
// @RequestMapping("/login")
// public ModelAndView login() {
//    ModelAndView mav = new ModelAndView("login/login");
//    return mav;
// }
   
//   // 아이디 찾기
//   @RequestMapping("/findId")
//   public ModelAndView findId() {
//      return new ModelAndView("login/findId");
//   }
//   
//   // 비밀번호 찾기
//   @RequestMapping("/findPwd")
//   public ModelAndView findPwd() {
//      return new ModelAndView("login/findPwd");
//      
//   }

//   // 회원가입 
//   @RequestMapping("/signUp")
//   public ModelAndView signUp() {
//      return new ModelAndView("login/signUp");
//   }
//   
//   // 아이디 찾기
//   @RequestMapping("/findId")
//   public ModelAndView findId() {
//      return new ModelAndView("login/findId");
//   }
//   
//   // 비밀번호 찾기
//   @RequestMapping("/findPwd")
//   public ModelAndView findPwd() {
//      return new ModelAndView("login/findPwd");
//   }
	// 이 부분들 LoginController로 이동

//   // 테스트 페이지
//   @RequestMapping("/test")
//   public String test() {
//	   return "../ex/new_header";
//   }
//   
//   // 테스트 페이지2
//   @RequestMapping("/test2")
//   public String test2() {
//	   return "../ex/new_header2";
//   }

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
