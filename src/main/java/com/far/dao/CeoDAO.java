package com.far.dao;

import java.util.List;
import java.util.Map;

import com.far.dto.ResvDTO;
import com.far.dto.RoomDTO;
import com.far.dto.StoreDTO;

public interface CeoDAO {

	void insertStore(StoreDTO s);

	List<StoreDTO> getStores(String id);

	String getCate(int store_num);

	void insertMenu(RoomDTO m);

	String getDetail_cate(int store_num);

	List<RoomDTO> getMenuList(int s_num);

	StoreDTO getStore(int s_num);

	RoomDTO getMenu(int menu_id);

	void delMenu(int menu_id);

	void editMenu(RoomDTO m);
	
	void storeIntroUpdate(Map<String, String> storeUpdate);
//	StoreDTO getCont(int store_num);

	List<ResvDTO> getResvList(int store_num);

	String getTel(String memId);

}
