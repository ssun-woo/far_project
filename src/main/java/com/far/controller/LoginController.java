package com.far.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.far.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	// 로그인 폼으로 이동
	@GetMapping("/loginForm")
	public String loginForm() {
		return "login/login";
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		return "redirect:/loginForm";
	}
	
	// 아이디 찾기
	@PostMapping("/findIdEmail")
	public String findIdEmail() {
		return "login/findIdEmail";
	}
}
