package com.far.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.CouponDTO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<CouponDTO> getMyCoupon(String mem_id) {
		return sqlSession.selectList("getMyCoupon", mem_id);
	}
}
