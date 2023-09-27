package com.far.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.MyPageDAO;
import com.far.dto.CouponDTO;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	private MyPageDAO myPageDao;

	@Override
	public List<CouponDTO> getMyCoupon(String mem_id) {
		return myPageDao.getMyCoupon(mem_id);
	}

}
