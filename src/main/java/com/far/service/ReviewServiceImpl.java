package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.far.dto.ReviewDTO;
import com.far.mapper.ReviewMapper;

public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper reviewMapper;

	@Override
	public int enrollReview(ReviewDTO dto) {
		int result = reviewMapper.enrollReview(dto);
		return result;
		@Service
		public class SearchServiceImpl implements SearchService {

		    @Override
		    public List<StoreDTO> searchStore(String keyword) {
		        // 검색 로직 구현
		    }

		    @Override
		    public List<StoreDTO> sortByViews(String keyword) {
		        // 조회수를 기준으로 정렬하는 로직 구현
		    }

		    @Override
		    public List<StoreDTO> sortByLikes(String keyword) {
		        // 추천수를 기준으로 정렬하는 로직 구현
		    }
	}

}
