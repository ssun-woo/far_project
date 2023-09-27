package com.far.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.PaymentDAO;
import com.far.dto.CouponDTO;
import com.far.dto.MemberDTO;
import com.far.dto.RoomDTO;
import com.far.dto.StoreDTO;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentDAO paymentDao;

	@Override
	public List<CouponDTO> getCoupons(String memId) {
		return paymentDao.getCoupons(memId);
	}

	@Override
	public RoomDTO getMenu(int roomNum) {
		return paymentDao.getMenu(roomNum);
	}

	@Override
	public StoreDTO getStore(int storeNum) {
		return paymentDao.getStore(storeNum);
	}

	@Override
	public CouponDTO getCouponIssue(Map<String, String> map) {
		return paymentDao.getCouponIssue(map);
	}

	@Override
	public void insertCoupon(CouponDTO newc) {
		paymentDao.insertCoupon(newc);
	}

	@Override
	public MemberDTO getMember(String memId) {
		return paymentDao.getMember(memId);
	}

}
