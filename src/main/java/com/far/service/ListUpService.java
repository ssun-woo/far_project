//package com.far.service;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.Pageable;
//import org.springframework.stereotype.Service;
//
//import com.far.Repository.StoreRepository;
//import com.far.model.Store;
//
//@Service
//public class ListUpService {
//	
//	@Autowired
//	StoreRepository storeRepository;
//	
//	public Page<Store> storeList(Pageable pageable) {
//		
//		return storeRepository.findAll(pageable);
//	}
//}
