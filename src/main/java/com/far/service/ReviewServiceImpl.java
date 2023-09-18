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
	}

}
