package com.far.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.far.dao.LoginDAO;
import com.far.dto.MemberDTO;
import com.far.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	@GetMapping("/login")
	public String loginForm() {
		return "login/login";
	}
	
	@PostMapping("/login")
	public String login(String mem_id, String mem_pwd, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
	    response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();

	    // mem_id가 비어있는지 확인
	    if (mem_id == null || mem_id.isEmpty()) {
	        out.println("<script>");
	        out.println("alert('아이디를 입력하세요.')");
	        out.println("</script>");
	        return "login/login";
	    }

	    MemberDTO memberDTO = new MemberDTO();
	    memberDTO.setMem_id(mem_id);
	    memberDTO.setMem_pwd(mem_pwd);

	    int result = loginService.isexist_mem(memberDTO);
	    if(result == 1) {
	        request.getSession().invalidate();
	        session = request.getSession();
	        session.setAttribute("mem_id", mem_id);
	        return "redirect:/";
	    } else {
	        out.println("<script>");
	        out.println("alert('아이디 또는 비밀번호가 일치하지 않습니다. 다시 로그인해주세요.')");
	        out.println("</script>");
	        return "login/login";
	    }
	}
}
