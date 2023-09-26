package com.far.service;

import java.util.List;
import java.util.Map;

import com.far.dto.ResvDTO;
import com.far.dto.RoomDTO;
import com.far.dto.StoreDTO;

public interface AccResvService {

	void resvStroe(ResvDTO resv);

	List<StoreDTO> getCateList(String detailCate);

	int getTotalCount(String detailCate);

	StoreDTO getInfo(int storeNum);

	List<RoomDTO> getPossibleRoom(Map<String, Object> map);

	int testCode(String date);

}
