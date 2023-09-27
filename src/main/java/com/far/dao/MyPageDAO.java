package com.far.dao;

import java.util.List;

import com.far.dto.CouponDTO;

public interface MyPageDAO {

	List<CouponDTO> getMyCoupon(String mem_id);

}
