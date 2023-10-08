package com.far.security;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import com.far.security.auth.PrincipalDetailsService;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled=true, prePostEnabled=true)	// secured 어노테이션 활성화, preAuthorize 어노테이션 활성화
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	 // UserDetailsService를 구현한 객체를 DI
    private UserDetailsService userDetailService;
	
	
	 @Autowired
	 private AuthenticationSuccessHandler customAuthenticationSuccessHandler;
	 
	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable()
			.authorizeRequests()
			.antMatchers("/my_page/**").authenticated()
			.antMatchers("/payment").authenticated()// 해당 주소로 요청이 들어오면 인증이 필요함
			//.antMatchers("/acc/target/**").authenticated()		// 해당 주소로 요청이 들어오면 인증이 필요함
			.antMatchers("/**/payment_info").authenticated()
//			.antMatchers("/ceo/**").access("hasRole('Role_a') or hasRole('Role_c')")	// 해당 url에는 ROLE_ADMIN, ROLE_MANAGER만 접근 가능
			//.antMatchers("/admin/**").access("hasRole('Role_a')")	// 해당 url에는 ROLE_ADMIN만 접근 가능
//			.antMatchers("/manager/**").access("hasRole('ADMIN') or hasRole('MANAGER')")	// 해당 url에는 ROLE_ADMIN, ROLE_MANAGER만 접근 가능
//			.antMatchers("/admin/**").access("hasRole('MANAGER')")	// 해당 url에는 ROLE_ADMIN만 접근 가능
			.anyRequest().permitAll()	// 그 외의 요청은 모두 접근 가능
			.and()
			.formLogin()
			.usernameParameter("memId")
			.passwordParameter("memPwd")
			.loginPage("/loginForm")
			.loginProcessingUrl("/login")
			.successHandler(customAuthenticationSuccessHandler)
			//.defaultSuccessUrl("/")	
			.and()
			.sessionManagement()
			.sessionCreationPolicy(SessionCreationPolicy.ALWAYS)
			.and()
			.exceptionHandling()
				.accessDeniedPage("/access_denied");
		
		http.logout()
        .logoutUrl("/logout")
        .logoutSuccessUrl("/")
        .deleteCookies("JSESSIONID")
        .permitAll();
       
}
	
	
	@Bean
	public SessionRegistry sessionRegistry() {
	    return new SessionRegistryImpl();
	}
}