package com.far.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.ResvDTO;

@Repository
public class ReservationDAOImpl implements ReservationDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void reservation(ResvDTO resvDTO) {
		sqlSession.insert("reservation", resvDTO);
	}

	@Override
	public void pointEarn(Map<String, Object> pMap) {
		sqlSession.update("pointEarn", pMap);
	}

}
