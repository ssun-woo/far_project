package com.far.dao;

import java.util.List;

import com.far.dto.ResvDTO;
import com.far.dto.StoreDTO;

public interface AccResvDAO {

	void resvStroe(ResvDTO resv);

	List<StoreDTO> getCateList(String detail_cate);

	int getTotalCount(String detail_cate);

	StoreDTO getInfo(int store_num);

}
