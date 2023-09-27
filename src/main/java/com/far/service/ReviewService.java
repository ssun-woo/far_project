package com.far.service;

import java.util.List;

import com.far.dto.ReviewDTO;

public interface ReviewService {
	
	/* 댓글 등록 */
	public void setReview(ReviewDTO dto);

	public List<ReviewDTO> getReview(int storeNum);

	public void delReview(int reviewNum);

	public void editReview(ReviewDTO dto);
//	public void editReview(int review_num);

	/*댓글 한 개 정보*/
	public ReviewDTO getUpdateReview(int reviewNum);

	public int getReivewCount(ReviewDTO rdto);

	public void setRecommend(ReviewDTO rdto);




	
	
}
