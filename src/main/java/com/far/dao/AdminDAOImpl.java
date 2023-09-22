package com.far.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.MemberDTO;
import com.far.dto.StoreDTO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<StoreDTO> storePermit(int auth) {
		List<StoreDTO> permitList = sqlSession.selectList("storePermit", auth);
		return permitList;
	}

	@Override
	public int storeOK(String memId) {
		sqlSession.update("storeOK", memId);
		return 1;
	}

//	@Override
//	public List<StoreDTO> storePermitSelect(String storeNum) {
//		sqlSession.selectList("get_stores", storeNum);
//		return null;
//	}

	@Override
	public List<StoreDTO> storeDeniedSelect(String storeNum) {
		sqlSession.selectList("storeDenied", storeNum);
		return null;
	}
	
}
