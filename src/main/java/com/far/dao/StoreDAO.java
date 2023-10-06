package com.far.dao;

import java.util.Map;

public interface StoreDAO {
	int countStore(String detailCate);

	int countStore2(Map<String, String> map);

	int getLowerPrice(int storeNum);
}
