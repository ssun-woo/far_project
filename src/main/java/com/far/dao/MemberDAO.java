package com.far.dao;

import com.far.dto.MemberDTO;

public interface MemberDAO {

	void insertMember(MemberDTO m);
	
	void updateMemPwd(String memPwd, String memId);
	
	String findMemClass(String memId);
	
}
