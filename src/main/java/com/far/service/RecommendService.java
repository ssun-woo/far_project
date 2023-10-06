package com.far.service;

import com.far.dto.RecommendDTO;


public interface RecommendService {

//	public void setRecommend(RecommendDTO redto);
//
//	public int getRecommendCount(RecommendDTO redto);
//
//	public void delRecommend(RecommendDTO redto);

	public int recommendCheck(int reviewNum, String memId);

	public void insertRecommend(int reviewNum, String memId);

	public void updateRecommend(int reviewNum);

	public void updateRecommendCheck(int reviewNum, String memId);

	public void updateRecommendCheckCancel(int reviewNum, String memId);

	public void updateRecommendCancel(int reviewNum);

	public void deleteRecommend(int reviewNum, String memId);



}
