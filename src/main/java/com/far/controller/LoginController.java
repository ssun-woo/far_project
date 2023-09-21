package com.far.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.far.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
//	@Autowired
//	private FindIdByEmailDAO findIdByEmail;
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "login/login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		return "redirect:/loginForm";
	}
	
//	@GetMapping("/findId")
//	public String findId() {
//		return "login/findId";
//	}
	
//	@PostMapping("/findId")
//	public String findIdalert(String memName, String memEmail, HttpServletResponse response, Model model) throws IOException {
//		String memId = findIdByEmail.findIdByEmail(memName, memEmail);
//		model.addAttribute("memId", memId);
//		System.out.println("memId = " + memId);
//		PrintWriter out = response.getWriter();
//		out.println("<script>");
//		out.println("alert(가입한 아이디는 ${memId}입니다.");
//		out.println("</script>");
//		return "login/login";
//	}
}
