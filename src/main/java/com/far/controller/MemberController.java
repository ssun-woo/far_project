package com.far.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.far.dao.MemberDAO;
import com.far.dto.MemberDTO;
import com.far.model.Member;
import com.far.service.FindIdService;
import com.far.service.MemberExistService;
import com.far.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private FindIdService findIdService;
	
//	@Autowired
//	private SignUpService signUpService;

	@Autowired
	private MemberExistService memexservice;
	
	// 회원가입 페이지 이동
		  @GetMapping("/signUp")
		    public ModelAndView signUpForm() {
		        ModelAndView mav = new ModelAndView("login/signUp");
		        mav.addObject("member", new MemberDTO()); // 빈 MemberDTO 객체를 모델에 추가
		        return mav;
		    }
		
		  @PostMapping("/signUp")
		    public String signUp(@Valid MemberDTO m, BindingResult br, String selectClass, HttpServletRequest request) throws IOException {
		        if (br.hasErrors()) {
		            // 유효성 검사 오류가 있을 때 처리 (예: 오류 메시지를 모델에 추가)
		            return "login/signUp";
		        } else {
		        	String rawPassword = m.getMemPwd();
		        	String encPassword = bCryptPasswordEncoder.encode(rawPassword);
		        	m.setMemPwd(encPassword);
		        	if(selectClass.equals("normal")) {
		        		m.setMemClass("Role_m");
		        	} else if(selectClass.equals("business")) {
		        		m.setMemClass("Role_c");
		        	}
		            memberDAO.insertMember(m);
		            
		            return "redirect:/loginForm";
		        }
		    }
		  
		  @PostMapping("/signup/check")
		  @ResponseBody
		  public int iddbchk(String memId) throws ClassNotFoundException {
				
			int cnt = memexservice.isexist_mem_id(memId);
			return cnt;
		}
		  
	// 로그인 페이지 이동
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(defaultValue = "/") String target) {
		ModelAndView mav = new ModelAndView("login/login");
		return mav;
	}

	// 로그인인증 처리
	@RequestMapping("/login_ok")
	public ModelAndView login_ok(String mem_id, String mem_pwd, HttpSession session, HttpServletResponse response,
			@RequestParam(defaultValue = "/") String target) throws Exception {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		ModelAndView mav = new ModelAndView();

		session.setAttribute("id", mem_id);
		mav.setViewName("redirect:" + target);
		return mav;

	}

	// 로그아웃
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		return new ModelAndView("redirect:/");
	}

	// 회원가입 완료
	@RequestMapping("/signUp_ok")
	public ModelAndView signUp_ok(MemberDTO m, HttpServletResponse response) throws Exception {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		memberService.insertMember(m); // 여기가 들어가는 메서드

		int re = -1; // 가입 실패시

		if (/* 아이디 중복체크, 유효성 검증 실시, true 지움 */true) {
			re = 1;
		}

		if (re == 1) { // 회원가입 성공시
			out.println("<script>");
			out.println("alert('가입이 완료 됐습니다. 로그인 해주세요')");
			out.println("location='/login';");
			out.println("</script>");
		}

		return null;
	}

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
	            return "redirect:/defaultPage"; // URI가 전달되지 않은 경우의 기본 리다이렉트 페이지
	        }
	    }
	    
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

}
