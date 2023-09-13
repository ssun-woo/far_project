package com.far.service;

import java.util.List;

import com.far.dto.ResvDTO;
import com.far.dto.StoreDTO;

public interface AccResvService {

	void resvStroe(ResvDTO resv);

	List<StoreDTO> getCateList(String detail_cate);

	int getTotalCount(String detail_cate);

	StoreDTO getInfo(int store_num);

}
