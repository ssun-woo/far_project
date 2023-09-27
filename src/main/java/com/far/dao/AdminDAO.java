package com.far.dao;

import java.util.List;

import com.far.dto.CouponDTO;
import com.far.dto.MemberDTO;
import com.far.dto.StoreDTO;

public interface AdminDAO {
	
	public List<StoreDTO> storePermit(int auth);
	
	public int storeOK(String memId);
	
	public List<StoreDTO> storeDeniedSelect(String storeNum);
	
	public List<MemberDTO> getMemList(String memClass);
	
	public void insertAdCoupon(CouponDTO c);
	
	public List<CouponDTO> getCouponList();
	
}
