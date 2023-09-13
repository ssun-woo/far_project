package com.far.dao;

import java.util.List;

import com.far.dto.ReviewDTO;

public interface ReviewDAO {

	List<ReviewDTO> getReview(int store_num);

	int enrollReview(ReviewDTO dto);

}
