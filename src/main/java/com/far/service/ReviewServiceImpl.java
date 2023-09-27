
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

//package com.far.service;
//
//import org.springframework.beans.factory.annotation.Autowired;
//
//import com.far.dto.ReviewDTO;
//import com.far.mapper.ReviewMapper;
//
//public class ReviewServiceImpl implements ReviewService {
//
//	@Autowired
//	private ReviewMapper reviewMapper;
//
//	@Override
//	public int enrollReview(ReviewDTO dto) {
//		int result = reviewMapper.enrollReview(dto);
//		return result;
//		@Service
//		public class SearchServiceImpl implements SearchService {
//
//		    @Override
//		    public List<StoreDTO> searchStore(String keyword) {
//		        // 검색 로직 구현
//		    }
//
//		    @Override
//		    public List<StoreDTO> sortByViews(String keyword) {
//		        // 조회수를 기준으로 정렬하는 로직 구현
//		    }
//
//		    @Override
//		    public List<StoreDTO> sortByLikes(String keyword) {
//		        // 추천수를 기준으로 정렬하는 로직 구현
//		    }
//	}
//
//}