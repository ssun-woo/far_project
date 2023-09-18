package com.far.dao;

import java.util.List;

import com.far.dto.ReviewDTO;


public interface ReviewDAO {

	List<ReviewDTO> getReview(int store_num);

	public void setReview(ReviewDTO dto);

	void delReview(int review_num);

	void editReview(int review_num);



	
	

}
