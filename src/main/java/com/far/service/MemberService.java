package com.far.service;

import com.far.dto.MemberDTO;

public interface MemberService {

	void insertMember(MemberDTO m);
	
	void updateMemPwd(String memPwd, String memId);
	
	String findMemClass(String memId);
	
}
