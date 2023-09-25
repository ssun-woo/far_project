package com.far.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDAOImpl implements StoreDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int countStore(String detailCate) {
		int countStore = sqlSession.selectOne("detailCateCount", detailCate);
		return countStore;
	}

	@Override
	public int countStore2(Map<String, String> map) {
		return sqlSession.selectOne("list_cate_keyword", map);
	}
	
}
