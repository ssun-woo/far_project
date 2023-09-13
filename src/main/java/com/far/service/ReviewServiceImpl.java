package com.far.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.ReviewDAO;
import com.far.dto.ReviewDTO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAO reviewDao;

	@Override
	public int enrollReview(ReviewDTO dto) {
		return reviewDao.enrollReview(dto);
	}

	@Override
	public List<ReviewDTO> getReview(int store_num) {
		return reviewDao.getReview(store_num);
	}
	
//	@Override
//	public int enrollReview(ReviewDTO dto) {
//		return result;
//	}

}
