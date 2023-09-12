package com.far.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.MemberDTO;

@Repository
public class SignUpDAOImpl implements SignUpDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertMember(MemberDTO m) {
		sqlSession.insert("mem_in", m);
	}
}
