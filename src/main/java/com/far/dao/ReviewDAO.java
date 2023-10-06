package com.far.dao;

import java.util.List;

import com.far.dto.ReviewDTO;


public interface ReviewDAO {

	List<ReviewDTO> getReview(int storeNum);

	public void setReview(ReviewDTO dto);

	void delReview(int reviewNum);

	void editReview(ReviewDTO dto);

	public ReviewDTO getUpdateReview(int reviewNum);

	int getReivewCount(ReviewDTO rdto);

	public void setRecommend(ReviewDTO rdto);


	

}
