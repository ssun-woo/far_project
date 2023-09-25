package com.far.service;

import java.util.List;

import com.far.dto.ResvDTO;
import com.far.dto.StoreDTO;

public interface AccResvService {

	void resvStroe(ResvDTO resv);

	List<StoreDTO> getCateList(String detailCate);

	int getTotalCount(String detailCate);

	StoreDTO getInfo(int storeNum);

}
