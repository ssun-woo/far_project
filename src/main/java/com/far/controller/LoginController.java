package com.far.controller;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.far.dao.MemberDAO;
import com.far.model.Member;
import com.far.service.FindIdService;
import com.far.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private FindIdService findIdService;
	// 로그인 폼으로 이동
	@GetMapping("/loginForm")
	public String loginForm(HttpServletRequest request) {
		String referer = (String)request.getHeader("REFERER");
		request.getSession().setAttribute("previousPage", referer);
		
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
	        return "login/findIdresult";
	    }
	}
	
	@PostMapping("/findPwd")
	public String findByMemIdAndMemNameAndMemEmail(String memId, String memName, String emailortel, Model model, HttpSession session) {
	    // "@" 기호가 포함되어 있는지 확인
	    if (emailortel.matches("(.*)@(.*)")) {
	        // "@" 기호가 포함되어 있다면 아이디 찾기 로직 수행
	        Member m = findIdService.findPwdEmail(memId, memName, emailortel);
	        model.addAttribute("m", m);
	        session.setAttribute("m", m);
	        return "login/findPwdresult";
	    } else {
	        // "@" 기호가 포함되어 있지 않으면 오류 메시지 반환 또는 다른 처리 수행
	    	Member m = findIdService.findPwdTel(memId, memName, emailortel);
	    	model.addAttribute("m", m);
	    	session.setAttribute("m", m);
	        return "login/findPwdresult";
	    }
	}
	
	@PostMapping("/resetPwd")
	public String resetPwd(String memPwd, HttpServletRequest request, HttpSession session) {
	    // 세션에서 값을 가져옴
	    	Member m = (Member) session.getAttribute("m");
	    	String encPassword = bCryptPasswordEncoder.encode(memPwd);
	    	m.setMemPwd(encPassword);
	    
	        String memId = m.getMemId();
	        memberDAO.updateMemPwd(encPassword, memId);
	        return "main/index";
	     
	}
	
    @RequestMapping("/forwardToUri")
    public String forwardToUri(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uri = request.getParameter("uri");
        if (uri != null) {
            String decodedUri = URLDecoder.decode(uri, "UTF-8");
            return "redirect:" + decodedUri;
        } else {
            return "redirect:/"; // URI가 전달되지 않은 경우의 기본 리다이렉트 페이지
        }
    }
}