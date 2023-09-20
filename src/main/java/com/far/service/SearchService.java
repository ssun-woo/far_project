package com.far.service;

import java.util.List;

import com.far.dto.StoreDTO;

public interface SearchService {
	
	List<com.far.dto.StoreDTO> searchStore(String keyword);

	List<com.far.dto.StoreDTO> sortByViews(String keyword);

	List<com.far.dto.StoreDTO> sortByLikes(String keyword);



	
	
    // List<com.far.dto.MenuDTO> searchMenu(String keyword);
}
