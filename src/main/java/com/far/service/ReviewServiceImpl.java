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
	public List<ReviewDTO> getReview(int storeNum) {
		return reviewDao.getReview(storeNum);
	}



	@Override
	public void setReview(ReviewDTO dto) {
		reviewDao.setReview(dto);
	}




	@Override
	public void delReview(int reviewNum) {
		reviewDao.delReview(reviewNum);		
	}



	@Override
	public void editReview(ReviewDTO dto) {
		reviewDao.editReview(dto);
		
	}



	@Override
	public ReviewDTO getUpdateReview(int reviewNum) {
		return reviewDao.getUpdateReview(reviewNum);
	}



	@Override
	public int getReivewCount(ReviewDTO rdto) {
		return reviewDao.getReivewCount(rdto);
	}



	@Override
	public void setRecommend(ReviewDTO rdto) {
		reviewDao.setRecommend(rdto);
		
	}



	





	


}
