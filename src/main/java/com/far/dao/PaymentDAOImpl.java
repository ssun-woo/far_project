package com.far.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.CouponDTO;
import com.far.dto.MemberDTO;
import com.far.dto.MenuDTO;
import com.far.dto.StoreDTO;

@Repository
public class PaymentDAOImpl implements PaymentDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<CouponDTO> getCoupons(String mem_id) {
		return sqlSession.selectList("getCoupons", mem_id);
	}

	@Override
	public MenuDTO getMenu(int i) {
		return sqlSession.selectOne("getMenu", i);
	}

	@Override
	public StoreDTO getStore(int store_num) {
		return sqlSession.selectOne("getStore", store_num);
	}

	@Override
	public CouponDTO getCouponIssue(Map<String, String> map) {
		return sqlSession.selectOne("get_couponIssue", map);
	}

	@Override
	public void insertCoupon(CouponDTO newc) {
		sqlSession.insert("insert_coupon", newc);
	}

	@Override
	public MemberDTO getMember(String mem_id) {
		return sqlSession.selectOne("getMember", mem_id);
	}

}
