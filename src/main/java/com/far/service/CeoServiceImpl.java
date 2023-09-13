package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.CeoDAO;
import com.far.dto.StoreDTO;

@Service
public class CeoServiceImpl implements CeoService {
	
	@Autowired
	private CeoDAO ceoDao;

	@Override
	public void insertStore(StoreDTO s) {
		ceoDao.insertStore(s);
	}

//	@Override
//	public StoreDTO getCont(int store_num) {
//		return ceoDao.getCont(store_num);
//	}
	
	
	
}
