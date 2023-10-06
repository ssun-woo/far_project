package com.far.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.RoomDTO;
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
	public void insertMenu(RoomDTO m) {
		sqlSession.insert("insert_menu", m);
	}

	@Override
	public String getDetail_cate(int store_num) {
		return sqlSession.selectOne("get_detail_cate", store_num);
	}

	@Override
	public List<RoomDTO> getMenuList(int s_num) {
		return sqlSession.selectList("get_menu_list", s_num);
	}

	@Override
	public StoreDTO getStore(int s_num) {
		return sqlSession.selectOne("get_store", s_num);
	}

	@Override
	public RoomDTO getMenu(int menu_id) {
		return sqlSession.selectOne("get_menu", menu_id);
	}

	@Override
	public void delMenu(int menu_id) {
		sqlSession.delete("del_menu", menu_id);
	}

	@Override
	public void editMenu(RoomDTO m) {
		sqlSession.update("edit_menu", m);
	}
	
	public void storeIntroUpdate(Map<String, String> storeUpdate) {
		sqlSession.update("storeIntro_edit", storeUpdate);
	}

		
}
