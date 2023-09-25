package com.far.service;

import com.far.dto.MemberDTO;
import com.far.model.Member;

public interface MemberService {

	void insertMember(MemberDTO m);
	void updateMemPwd(String memPwd, String memId);
}
