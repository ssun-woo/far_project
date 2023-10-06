package com.far.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.far.dao.FindMemClassDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

@Component
public class LoginHandler implements AuthenticationSuccessHandler {
	@Autowired
	private FindMemClassDAO findMemClass;
	
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        // 세션에서 이전 페이지의 URL을 가져옴
        String previousPage = (String) request.getSession().getAttribute("previousPage");

        if (previousPage != null && !previousPage.isEmpty()) {
            // 이전 페이지로 리다이렉션
        	 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
             String memId = auth.getName();
             String memClass = findMemClass.findMemClass(memId);
             System.out.println(memId);

             // memId를 세션에 저장
             HttpSession session = request.getSession();
             session.setAttribute("memId", memId);
             session.setAttribute("memClass", memClass);
        	
            response.sendRedirect(previousPage);
        } else {
            // 이동할 기본 페이지 지정 또는 다른 로직 수행
            response.sendRedirect("/");
        }
    }
}