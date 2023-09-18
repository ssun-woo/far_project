package com.far.service;

import com.far.dto.ReviewDTO;

public interface ReviewService {
	
	/* 댓글 등록 */
	public int enrollReview(ReviewDTO dto);
}
