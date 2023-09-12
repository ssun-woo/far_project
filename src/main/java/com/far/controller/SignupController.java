package com.far.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.far.dao.SignUpDAO;
import com.far.dao.SignUpDAOImpl;
import com.far.dto.MemberDTO;
import com.far.service.SignUpService;

@Controller
public class SignupController {
	
	@Autowired
	private SignUpService signUpService;
	
	// 회원가입 페이지 이동
	@GetMapping("/signUp")
	public String signUpForm() {
		return "login/signUp";
	}
	
	@PostMapping("/signUp")
	public String singUp(MemberDTO m) {
		signUpService.insertMember(m);
		
		return "main/index";
	}
}
