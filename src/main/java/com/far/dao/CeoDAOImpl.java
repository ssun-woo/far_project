package com.far.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.MenuDTO;
import com.far.dto.StoreDTO;

@Repository
public class CeoDAOImpl implements CeoDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertStore(StoreDTO s) {
		sqlSession.insert("store_in", s);
	}

	@Override
	public List<StoreDTO> getStores(String id) {
		return sqlSession.selectList("get_stores", id);
	}

	@Override
	public String getCate(int store_num) {
		return sqlSession.selectOne("get_cate", store_num);
	}

	@Override
	public void insertMenu(MenuDTO m) {
		sqlSession.insert("insert_menu", m);
	}

	@Override
	public String getDetail_cate(int store_num) {
		return sqlSession.selectOne("get_detail_cate", store_num);
	}

	
	
	
}
