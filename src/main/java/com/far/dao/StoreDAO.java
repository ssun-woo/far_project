package com.far.dao;

import java.util.List;
import java.util.Map;

import com.far.dto.StoreDTO;

public interface StoreDAO {
	int countStore(String detailCate);

	int countStore2(Map<String, String> map);

	int getLowerPrice(int storeNum);

	List<StoreDTO> storeList(String detailCate);
}
