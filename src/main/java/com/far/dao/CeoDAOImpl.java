package com.far.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.StoreDTO;

@Repository
public class CeoDAOImpl implements CeoDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertStore(StoreDTO s) {
		sqlSession.insert("store_in", s);
	}

//	@Override
//	public StoreDTO getCont(int store_num) {
//		return sqlSession.selectOne("get_cont", store_num);
//	}
	
	
	
	
}
