package com.far.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.far.dto.ReviewDTO;

public interface ReviewService {
	
	/* 댓글 등록 */
	public void setReview(ReviewDTO dto);

	public List<ReviewDTO> getReview(int store_num);

	public void delReview(int review_num);

	public void editReview(int review_num);





	
	
}
