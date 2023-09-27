package com.far.service;

import java.util.List;

import com.far.dto.CouponDTO;

public interface MyPageService {

	List<CouponDTO> getMyCoupon(String mem_id);

}
