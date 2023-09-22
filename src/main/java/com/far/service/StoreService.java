package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.far.Repository.StoreRepository;
import com.far.dao.StoreDAO;
import com.far.dto.StoreDTO;


@Service
public class StoreService {
	@Autowired
	private StoreRepository storeRepository;
	
	@Autowired
	private StoreDAO storeDAO;
	public Page<StoreDTO> storeList(Pageable pageable, String detailCate) {
		return storeRepository.findByDetailCate(pageable, detailCate);
	}
	
	public StoreDTO findById(int id) {
		return storeRepository.findById(id).orElse(null);
	}
	
	public int countStore(String detailCate) {
		return storeDAO.countStore(detailCate);
	}
}
