package com.far.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
>>>>>>> 330ab853216f7eae20ec2b24ea6b65a52f5adc4b
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

<<<<<<< HEAD
import com.far.security.auth.PrincipalDetailsService;
=======
import com.far.dao.FindMemClassDAO;
import com.far.dto.StoreDTO;
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
        System.out.println("memClass = " + memClass);
        // 세션에 memId 저장
        //session.setAttribute("memId", memId);
        ModelAndView mav = new ModelAndView("main/index");
        mav.addObject("memId", memId);
        session.setAttribute("memClass", memClass);
        System.out.println(memId);
        return mav;
		
	}
	
	@RequestMapping("/data")
	public String datain() {
		for(int i=1; i<=60; i++) {
	         StoreDTO s = new StoreDTO();
	         s.setStoreNum(i);
	         s.setStoreName("가게이름들어갈자리");
	         s.setCate("카테");
	         s.setDetailCate("세부카테");
	         s.setStoreName("가게이름");
	         s.setStoreIntro("가게 설명");
	         s.setStoreAddr1("가게주소1");
	         s.setStoreAddr2("가게주소2");
	         s.setRegNum("사업자번호");
	         s.setStoreLogo("가게사진");
	         s.setMemId("사업자아이디");
	         ceoService.insertStore(s);
	      }
		return "main/index";
	}
	 @RequestMapping("/access_denied")
	 public String errorPage() {
		 return "error/access-denied";
	 }
	 
	 
	 @RequestMapping("/main")
	 public String errorToMain() {
		 return "main/index";
	 }

	
//	// security 예시(지우지말 것)
//	@Secured("c")
//	@GetMapping("/securedexample")
//	public String info() {
//		return "security example";
//	}
//	
//	// security 예시(지우지말 것)
//	@PreAuthorize("hasRole('a') or hasRole('c')")
//	@GetMapping("/securedexample")
//	public String info() {
//		return "security example";
//	}

	
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
