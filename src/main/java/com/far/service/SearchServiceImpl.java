package com.far.service;

import java.util.Comparator;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dto.StoreDTO;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<StoreDTO> searchStore(String keyword) {
		String processedKeyword = "%" + keyword.replaceAll("\\s+", "") + "%";
		return sqlSession.selectList("Search.searchStore", processedKeyword);
	}

	
	/*
	 * @Override public List<com.far.dto.MenuDTO> searchMenu(String keyword) {
	 * return sqlSession.selectList("Search.searchMenu", keyword); }
	 */
	 


	@Override
	public List<StoreDTO> sortByViews(String keyword) { 
	    // 낮은 가격순을 기준으로 정렬하는 로직 구현 
	    List<StoreDTO> stores = searchStore(keyword);
	    
	    stores.sort(Comparator.comparing(StoreDTO::getRegDate).reversed());
	    
	    return stores;
	}
	 
	@Override
	public List<StoreDTO> sortByLikes(String keyword) {
		// 검색어를 포함하는 가게 목록을 가져옵니다.
		List<StoreDTO> stores = searchStore(keyword);

		// stores 리스트를 추천수에 따라 정렬합니다.
		stores.sort(Comparator.comparingInt(StoreDTO::getStoreScore).reversed());

		return stores;
	}

	/*
	 * @Override public List<StoreDTO> sortByViews(String keyword) { // TODO
	 * Auto-generated method stub return null; }
	 */
}
