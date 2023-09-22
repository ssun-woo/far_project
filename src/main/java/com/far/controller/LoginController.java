package com.far.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.far.model.Member;
import com.far.service.FindIdService;
import com.far.service.LoginService;
import com.far.service.MemberService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private FindIdService findIdService;
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
	
	@PostMapping("/findId")
	public String findIdEmail(String memName, String emailortel, Model model) {
	    // "@" 기호가 포함되어 있는지 확인
	    if (emailortel.matches("(.*)@(.*)")) {
	        // "@" 기호가 포함되어 있다면 아이디 찾기 로직 수행
	        Member m = findIdService.findIdEmail(memName, emailortel);
	        model.addAttribute("m", m);
	        return "login/findIdresult";
	    } else {
	        // "@" 기호가 포함되어 있지 않으면 오류 메시지 반환 또는 다른 처리 수행
	    	Member m = findIdService.findIdTel(memName, emailortel);
	        model.addAttribute("m", m);
	        System.out.println("memberId: " + m.getMemId());
	        return "login/findIdresult";
	    }
	}
	
	

	
}
