package com.far.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
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

	public List<StoreDTO> storeList(String detailCate) {
		return storeDAO.storeList(detailCate);
	}
	
	public StoreDTO findById(int id) {
		return storeRepository.findById(id).orElse(null);
	}
	
	public int countStore(String detailCate) {
		return storeDAO.countStore(detailCate);
	}

	public int countStore2(Map<String, String> map) {
		return storeDAO.countStore2(map);
	}

	public int getLowerPrice(int storeNum) {
		return storeDAO.getLowerPrice(storeNum);
	}

}
