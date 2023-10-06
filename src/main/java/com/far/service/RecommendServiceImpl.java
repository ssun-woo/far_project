package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.RecommendDAO;
import com.far.dto.RecommendDTO;

@Service
public class RecommendServiceImpl implements RecommendService {
	@Autowired
	private RecommendDAO redao;

	@Override
	public int recommendCheck(int reviewNum, String memId) {
		redao.recommendCheck(reviewNum,memId);
		return 0;
	}

	@Override
	public void insertRecommend(int reviewNum, String memId) {
		redao.insertRecommend(reviewNum,memId);
		
	}

	@Override
	public void updateRecommend(int reviewNum) {
		redao.updateRecommend(reviewNum);
		
	}

	@Override
	public void updateRecommendCheck(int reviewNum, String memId) {
		redao.updateRecommendCheck(reviewNum,memId);
		
	}

	@Override
	public void updateRecommendCheckCancel(int reviewNum, String memId) {
		redao.updateRecommendCheckCancel(reviewNum,memId);
		
	}

	@Override
	public void updateRecommendCancel(int reviewNum) {
		redao.updateRecommendCancel(reviewNum);
		
	}

	@Override
	public void deleteRecommend(int reviewNum, String memId) {
		redao.deleteRecommend(reviewNum,memId);
		
	}

//	@Override
//	public void setRecommend(RecommendDTO redto) {
//		redao.setRecommend(redto);
//		
//	}
//
//	@Override
//	public int getRecommendCount(RecommendDTO redto) {
//		return redao.getRecommendCount(redto);
//	}
//
//	@Override
//	public void delRecommend(RecommendDTO redto) {
//		redao.delRecommend(redto);
//		
//	}

}
