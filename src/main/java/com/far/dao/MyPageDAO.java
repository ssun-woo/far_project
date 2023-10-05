package com.far.dao;

import java.util.List;

import com.far.dto.CouponDTO;
import com.far.dto.ResvDTO;

public interface MyPageDAO {

	List<CouponDTO> getMyCoupon(String mem_id);

	List<ResvDTO> getResvList(String memId);

}
