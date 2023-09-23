package com.far.dao;

import java.util.List;
import java.util.Map;

import com.far.dto.CouponDTO;
import com.far.dto.MemberDTO;
import com.far.dto.MenuDTO;
import com.far.dto.StoreDTO;

public interface PaymentDAO {

	List<CouponDTO> getCoupons(String mem_id);

	MenuDTO getMenu(int i);

	StoreDTO getStore(int store_num);

	CouponDTO getCouponIssue(Map<String, String> map);

	void insertCoupon(CouponDTO newc);

	MemberDTO getMember(String memId);

}
