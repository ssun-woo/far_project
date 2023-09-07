package com.far.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AccResvDAOImpl implements AccResvDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
}
