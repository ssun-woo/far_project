package com.far.dao;

import java.util.List;
import java.util.Map;

import com.far.dto.ResvDTO;
import com.far.dto.RoomDTO;
import com.far.dto.StoreDTO;

public interface AccResvDAO {

	void resvStroe(ResvDTO resv);

	List<StoreDTO> getCateList(String detail_cate);

	int getTotalCount(String detail_cate);

	StoreDTO getInfo(int store_num);

	List<RoomDTO> getPossibleRoom(Map<String, Object> map);

	int testCode(String date);

}
