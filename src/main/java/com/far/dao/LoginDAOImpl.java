package com.far.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.MemberDTO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	
	@Autowired
	SqlSession sqlsession;

	@Override
	public int isexist_mem(MemberDTO memberDTO) {
		int member = sqlsession.selectOne("memSelect", memberDTO);
		return member;
	}

}
