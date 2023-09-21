package com.far.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.far.dto.MemberDTO;
import com.far.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

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

//		int idChk = memberService.checkId(mem_id);
//		int pwdChk = memberService.checkPwd(mem_pwd);
//		if(idChk == 1 && pwdChk == 1) {
		session.setAttribute("id", mem_id);
		mav.setViewName("redirect:" + target);
		return mav;
//		}else {
//			out.println("<script>");
//			out.println("alert('아이디 또는 비밀번호가 일치하지 않습니다. 다시 확인해주세요')");
//			out.println("history.go(-1)");
//			out.println("</script>");
//		}
//		
//		return null;
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
