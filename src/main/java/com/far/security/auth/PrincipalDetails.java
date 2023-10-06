package com.far.security.auth;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.far.model.Member;

public class PrincipalDetails implements UserDetails {
	
	private Member member;
	
	public PrincipalDetails(Member member) {
		this.member = member;
	}
	
	// 해당 Member의 권한을 리턴
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
	    // 사용자의 권한을 저장할 컬렉션을 생성합니다.
	    Collection<GrantedAuthority> authorities = new ArrayList<>();
	    
	    // 사용자의 역할 (예: "ROLE_ADMIN")을 "ROLE_" 접두사와 함께 저장합니다.
	    String role = "ROLE_" + member.getMemClass();
	    
	    // SimpleGrantedAuthority 객체를 생성하여 권한 목록에 추가합니다.
	    authorities.add(new SimpleGrantedAuthority(role));
	    
	    return authorities;
	}
	
	public String getAuthority() {
	    // 사용자의 역할 (예: "ROLE_ADMIN")을 "ROLE_" 접두사와 함께 반환합니다.
	    return member.getMemClass();
	}

	@Override
	public String getPassword() {
		return member.getMemPwd();
	}

	@Override
	public String getUsername() {
		return member.getMemId();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}
	
}
