package com.far.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.JJimDTO;

@Repository
public class JJimDAOImpl implements JJimDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void setJJim(JJimDTO jdto) {
		sqlSession.insert("setJjim", jdto);
		
	}

	@Override
	public int getCount(JJimDTO jdto) {
		return sqlSession.selectOne("getJjim", jdto);
	}

	@Override
	public void delJJim(JJimDTO jdto) {
		sqlSession.delete("delJjim",jdto);
	}

}
