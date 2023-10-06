package com.far.dao;

import org.apache.ibatis.annotations.Param;

import com.far.dto.MemberDTO;
import com.far.model.Member;

public interface MemberDAO {

	void insertMember(MemberDTO m);
	void updateMemPwd(String memPwd, String memId);
	public int isexist_mem(MemberDTO memberDTO);
	String findIdEmail(@Param("memName") String memName, @Param("memEmail") String memTel);
}
