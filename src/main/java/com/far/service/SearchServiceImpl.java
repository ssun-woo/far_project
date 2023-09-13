package com.far.service;

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

	/*@Override
	public List<com.far.dto.MenuDTO> searchMenu(String keyword) {
		return sqlSession.selectList("Search.searchMenu", keyword);
	}*/
}
