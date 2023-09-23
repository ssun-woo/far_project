package com.far.service;

import java.util.List;

import com.far.dto.StoreDTO;

public interface AdminService {
	public List<StoreDTO> storePermit(int auth);
	public int storeOK(String memId);
	//public List<StoreDTO> storePermitSelect(String storeNum);
	public List<StoreDTO> storeDeniedSelect(String storeNum);
//	public void insertAdCoupon(CouponDTO c_regis);
}
