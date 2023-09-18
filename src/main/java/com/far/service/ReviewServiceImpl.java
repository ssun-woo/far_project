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
	public List<ReviewDTO> getReview(int store_num) {
		return reviewDao.getReview(store_num);
	}



	@Override
	public void setReview(ReviewDTO dto) {
		reviewDao.setReview(dto);
	}




	@Override
	public void delReview(int review_num) {
		reviewDao.delReview(review_num);		
	}



	@Override
	public void editReview(int review_num) {
		reviewDao.editReview(review_num);
		
	}












	


}
