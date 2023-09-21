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

	@Override
	public List<MenuDTO> getMenuList(int s_num) {
		return ceoDao.getMenuList(s_num);
	}

	@Override
	public StoreDTO getStore(int s_num) {
		return ceoDao.getStore(s_num);
	}

	@Override
	public MenuDTO getMenu(int menu_id) {
		return ceoDao.getMenu(menu_id);
	}

	@Override
	public void delMenu(int menu_id) {
		ceoDao.delMenu(menu_id);
	}

	@Override
	public void editMenu(MenuDTO m) {
		ceoDao.editMenu(m);
	}
	
	
	
}
