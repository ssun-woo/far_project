package com.far.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.MemberDTO;

@Repository
public class FindMemClassDAOImpl implements FindMemClassDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public String findMemClass(String memId) {
		return sqlSession.selectOne("memClass", memId);
		
	}

}
