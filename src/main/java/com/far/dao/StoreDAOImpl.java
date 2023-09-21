package com.far.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDAOImpl implements StoreDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int countStore(String detailCate) {
		int countStore = sqlSession.selectOne("detail_cate_count", detailCate);
		return countStore;
	}
	
}
