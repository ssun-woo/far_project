package com.far.service;

import java.util.List;

public interface SearchService {
	
	List<com.far.dto.StoreDTO> searchStore(String keyword);
	
    // List<com.far.dto.MenuDTO> searchMenu(String keyword);
}
