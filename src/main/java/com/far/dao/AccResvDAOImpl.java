package com.far.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.ResvDTO;
import com.far.dto.StoreDTO;

@Repository
public class AccResvDAOImpl implements AccResvDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void resvStroe(ResvDTO resv) {
		sqlSession.insert("resv_acc", resv);
	}

	@Override
	public List<StoreDTO> getCateList(String detail_cate) {
		return sqlSession.selectList("get_detailCateList", detail_cate);
	}

	@Override
	public int getTotalCount(String detail_cate) {
		return sqlSession.selectOne("detail_cate_count", detail_cate);
	}

	@Override
	public StoreDTO getInfo(int store_num) {
		return sqlSession.selectOne("store_info", store_num);
	}
	
}
