package com.far.security.auth;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
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
		Collection<GrantedAuthority> collect = new ArrayList<>(); 
		collect.add(new GrantedAuthority() {
			
			@Override
			public String getAuthority() {
				return member.getMemClass();
				
			}
		});
		return collect;
	}

	@Override
	public String getPassword() {
		return member.getMemPwd();
	}

	@Override
	public String getUsername() {
		return member.getMemName();
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
