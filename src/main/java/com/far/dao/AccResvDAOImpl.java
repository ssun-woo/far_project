package com.far.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.ResvDTO;

@Repository
public class AccResvDAOImpl implements AccResvDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void resvStroe(ResvDTO resv) {
		sqlSession.insert("resv_acc", resv);
	}
	
}
