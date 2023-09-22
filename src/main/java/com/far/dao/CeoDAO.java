package com.far.dao;

import java.util.List;

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

//	StoreDTO getCont(int store_num);

}
