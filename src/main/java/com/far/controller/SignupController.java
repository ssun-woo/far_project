package com.far.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.far.dto.MemberDTO;
import com.far.service.SignUpService;

@Controller
public class SignupController {
	
	@Autowired
	private SignUpService signUpService;
	
	// 회원가입 페이지 이동
	  @GetMapping("/signUp")
	    public ModelAndView signUpForm() {
	        ModelAndView mav = new ModelAndView("login/signUp");
	        mav.addObject("member", new MemberDTO()); // 빈 MemberDTO 객체를 모델에 추가
	        return mav;
	    }
	
	  @PostMapping("/signUp")
	    public String signUp(@Valid MemberDTO m, BindingResult br) {
	        if (br.hasErrors()) {
	            // 유효성 검사 오류가 있을 때 처리 (예: 오류 메시지를 모델에 추가)
	            return "login/signUp";
	        } else {
	            signUpService.insertMember(m);
	            return "main/index";
	        }
	    }
}
