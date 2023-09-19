package com.far.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.far.Repository.MemberRepository;
import com.far.dto.MemberDTO;
import com.far.service.MemberExistService;
import com.far.service.SignUpService;

@Controller
public class SignupController {
	
	@Autowired
	private SignUpService signUpService;
	
	@Autowired
	private MemberExistService memexservice;
	
	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	 
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
	        	String rawPassword = m.getMemPwd();
	        	String encPassword = bCryptPasswordEncoder.encode(rawPassword);
	        	m.setMemPwd(encPassword);
	        	m.setMemClass("m");
	            signUpService.insertMember(m);
	            return "redirect:/loginForm";
	        }
	    }
	  
	  @PostMapping("/signup/check")
	  @ResponseBody
	  public int iddbchk(String memId) throws ClassNotFoundException {
			
		int cnt = memexservice.isexist_mem_id(memId);
		
		return cnt;
		}
		
}
