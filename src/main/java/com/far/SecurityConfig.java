package com.far;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests()
			.antMatchers("/my_page/**").authenticated()		// 해당 주소로 요청이 들어오면 인증이 필요함
			.antMatchers("/manager/**").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_MANAGER')")	// 해당 url에는 ROLE_ADMIN, ROLE_MANAGER만 접근 가능
			.antMatchers("/admin/**").access("hasRole('ROLE_MANAGER')")	// 해당 url에는 ROLE_ADMIN만 접근 가능
			.anyRequest().permitAll();	// 그 외의 요청은 모두 접근 가능
			
	}
}
