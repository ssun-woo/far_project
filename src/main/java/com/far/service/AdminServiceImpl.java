package com.far.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.AdminDAO;
import com.far.dto.CouponDTO;
import com.far.dto.MemberDTO;
import com.far.dto.StoreDTO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public List<StoreDTO> storePermit(int auth) {
		List<StoreDTO> permitList = adminDAO.storePermit(auth);
		return permitList;
	}

	@Override
	public int storeOK(String memId) {
		adminDAO.storeOK(memId);
		return 1;
	}

	@Override
	public List<StoreDTO> storeDeniedSelect(String storeNum) {
		adminDAO.storeDeniedSelect(storeNum);
		return null;
	}

	@Override
	public List<MemberDTO> getMemList(String memClass) {
		return adminDAO.getMemList(memClass);
	}

	@Override
	public void insertAdCoupon(CouponDTO c) {
		this.adminDAO.insertAdCoupon(c);
	}

	@Override
	public List<CouponDTO> getCouponList() {
		return adminDAO.getCouponList();
	}

}
