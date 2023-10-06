package com.far.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.CouponDTO;
import com.far.dto.MemberDTO;
import com.far.dto.RoomDTO;
import com.far.dto.StoreDTO;

@Repository
public class PaymentDAOImpl implements PaymentDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<CouponDTO> getCoupons(String memId) {
		return sqlSession.selectList("getCoupons", memId);
	}

	@Override
	public RoomDTO getMenu(int roomNum) {
		return sqlSession.selectOne("getMenu", roomNum);
	}

	@Override
	public StoreDTO getStore(int storeNum) {
		return sqlSession.selectOne("getStore", storeNum);
	}

	@Override
	public CouponDTO getCouponIssue(Map<String, String> map) {
		return sqlSession.selectOne("getCouponIssue", map);
	}

	@Override
	public void insertCoupon(CouponDTO newc) {
		sqlSession.insert("insertCoupon", newc);
	}

	@Override
	public MemberDTO getMember(String memId) {
		return sqlSession.selectOne("getMember", memId);
	}

}
