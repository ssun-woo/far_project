package com.far.dao;

import java.util.List;

import com.far.dto.MenuDTO;
import com.far.dto.StoreDTO;

public interface CeoDAO {

	void insertStore(StoreDTO s);

	List<StoreDTO> getStores(String id);

	String getCate(int store_num);

	void insertMenu(MenuDTO m);

	String getDetail_cate(int store_num);

	List<MenuDTO> getMenuList(int s_num);

	StoreDTO getStore(int s_num);

	MenuDTO getMenu(int menu_id);

	void delMenu(int menu_id);

	void editMenu(MenuDTO m);

//	StoreDTO getCont(int store_num);

}
