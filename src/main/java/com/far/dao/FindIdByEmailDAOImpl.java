package com.far.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dto.MemberDTO;

//@Service
//public class FindIdByEmailDAOImpl implements FindIdByEmailDAO {
//	@Autowired
//	private SqlSession sqlSession;
//	
//	@Override
//	public String findIdByEmail(String memName, String memEmail) {
//		return sqlSession.sele("findIdByEmail",memName, memEmail);
//	}
//	
//}
