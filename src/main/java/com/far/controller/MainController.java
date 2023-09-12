package com.far.controller;

import java.util.ArrayList;
import java.util.List;

import javax.naming.directory.SearchResult;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {		
         
   // index 페이지를 나타냄
   @RequestMapping("/")
   public ModelAndView index(HttpSession session) {
      ModelAndView mav = new ModelAndView("main/index");
      String id = (String)session.getAttribute("id");
      System.out.println(id);
      
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
   
// // 로그인 페이지 이동
// @RequestMapping("/login")
// public ModelAndView login() {
//    ModelAndView mav = new ModelAndView("login/login");
//    return mav;
// }
   
   // 아이디 찾기
   @RequestMapping("/findId")
   public ModelAndView findId() {
      return new ModelAndView("login/findId");
   }
   
   // 비밀번호 찾기
   @RequestMapping("/findPwd")
   public ModelAndView findPwd() {
      return new ModelAndView("login/findPwd");
      
   }
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
   
   
   
}









