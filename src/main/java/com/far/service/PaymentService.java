package com.far.service;

import java.util.List;
import java.util.Map;

import com.far.dto.CouponDTO;
import com.far.dto.MemberDTO;
import com.far.dto.RoomDTO;
import com.far.dto.StoreDTO;

public interface PaymentService {

	List<CouponDTO> getCoupons(String mem_id);

	RoomDTO getMenu(int i);

	StoreDTO getStore(int store_num);

	CouponDTO getCouponIssue(Map<String, String> map);

	void insertCoupon(CouponDTO newc);

	MemberDTO getMember(String mem_id);

}
