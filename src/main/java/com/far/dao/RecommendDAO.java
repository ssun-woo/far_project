package com.far.dao;

import com.far.dto.RecommendDTO;

public interface RecommendDAO {

//	void setRecommend(RecommendDTO redto);
//
//	int getRecommendCount(RecommendDTO redto);
//
//	void delRecommend(RecommendDTO redto);

	void recommendCheck(int reviewNum, String memId);

	void insertRecommend(int reviewNum, String memId);

	void updateRecommend(int reviewNum);

	void updateRecommendCheck(int reviewNum, String memId);

	void updateRecommendCheckCancel(int reviewNum, String memId);

	void updateRecommendCancel(int reviewNum);

	void deleteRecommend(int reviewNum, String memId);

}
