package com.far.dao;

import org.apache.ibatis.annotations.Param;

import com.far.dto.MemberDTO;

public interface MemberDAO {

	void insertMember(MemberDTO m);

}
