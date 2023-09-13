package com.far.service;

import java.util.List;

import com.far.dto.ReviewDTO;

public interface ReviewService {
	
	/* 댓글 등록 */
	public int enrollReview(ReviewDTO dto);

	public List<ReviewDTO> getReview(int store_num);
	
	
}
