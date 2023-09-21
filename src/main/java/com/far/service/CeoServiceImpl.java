package com.far.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.CeoDAO;
import com.far.dto.MenuDTO;
import com.far.dto.StoreDTO;

@Service
public class CeoServiceImpl implements CeoService {
	
	@Autowired
	private CeoDAO ceoDao;

	@Override
	public void insertStore(StoreDTO s) {
		ceoDao.insertStore(s);
	}

	@Override
	public List<StoreDTO> getStores(String id) {
		return ceoDao.getStores(id);
	}

	@Override
	public String getCate(int store_num) {
		return ceoDao.getCate(store_num);
	}

	@Override
	public void insertMenu(MenuDTO m) {
		ceoDao.insertMenu(m);
	}

	@Override
	public String getDetail_Cate(int store_num) {
		return ceoDao.getDetail_cate(store_num);
	}
	
	
	
}
