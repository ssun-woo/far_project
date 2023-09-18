package com.far.service;

import java.util.List;

import com.far.dto.MenuDTO;
import com.far.dto.StoreDTO;

public interface CeoService {

	void insertStore(StoreDTO s);

	List<StoreDTO> getStores(String id);

	String getCate(int store_num);

	void insertMenu(MenuDTO m);

	String getDetail_Cate(int store_num);

//	StoreDTO getCont(int store_num);

}
