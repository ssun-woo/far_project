package com.far.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.AccResvDAO;
import com.far.dto.ResvDTO;
import com.far.dto.StoreDTO;

@Service
public class AccResvServiceImpl implements AccResvService{
	
	@Autowired
	private AccResvDAO accResvDao;

	@Override
	public void resvStroe(ResvDTO resv) {
		accResvDao.resvStroe(resv);
	}

	@Override
	public List<StoreDTO> getCateList(String detailCate) {
		return accResvDao.getCateList(detailCate);
	}

	@Override
	public int getTotalCount(String detailCate) {
		return accResvDao.getTotalCount(detailCate);
	}

	@Override
	public StoreDTO getInfo(int storeNum) {
		return accResvDao.getInfo(storeNum);
	}

}
