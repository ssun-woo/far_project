package com.far.service;

import java.util.List;
import java.util.Map;

import com.far.dto.ResvDTO;
import com.far.dto.RoomDTO;
import com.far.dto.StoreDTO;

public interface CeoService {

	void insertStore(StoreDTO s);

	List<StoreDTO> getStores(String id);

	String getCate(int storeNum);

	void insertMenu(RoomDTO m);

	String getDetail_Cate(int storeNum);

	List<RoomDTO> getMenuList(int s_num);

	StoreDTO getStore(int s_num);


	RoomDTO getMenu(int menuId);


	void delMenu(int menuId);

	void editMenu(RoomDTO m);
	
	void storeUpdate(Map<String, String> storeUpdate);

	List<ResvDTO> getResvList(int store_num);

	String getTel(String memId);

}
