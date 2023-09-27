package com.far.dao;

import org.apache.ibatis.annotations.Param;

import com.far.dto.MemberDTO;

public interface LoginDAO {
	public int isexist_mem(MemberDTO memberDTO);
	String findIdEmail(@Param("memName") String memName, @Param("memEmail") String memTel);

	
}
