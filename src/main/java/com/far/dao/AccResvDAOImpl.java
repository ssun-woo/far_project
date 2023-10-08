package com.far.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.ResvDTO;
import com.far.dto.RoomDTO;
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
	public StoreDTO getInfo(int storeNum) {
		return sqlSession.selectOne("store_info", storeNum);
	}

	@Override
	public List<RoomDTO> getPossibleRoom(Map<String, Object> map) {
		return sqlSession.selectList("get_possible_list", map);
	}

	@Override
	public int testCode(String date) {
		return sqlSession.selectOne("test", date);
	}

	
}
