package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.far.Repository.StoreRepository;
import com.far.dto.StoreDTO;


@Service
public class StoreService {
	@Autowired
	private StoreRepository storeRepository;
	
	public Page<StoreDTO> storeList(Pageable pageable) {
		return storeRepository.findAll(pageable);
	}
	
	public StoreDTO findById(int id) {
		return storeRepository.findById(id).orElse(null);
	}
}
