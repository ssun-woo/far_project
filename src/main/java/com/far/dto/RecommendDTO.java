package com.far.dto;

import lombok.ToString;

/*create table recommend(
recommendNo NUMBER NOT NULL PRIMARY KEY ,
 reviewNum NUMBER,
 memId VARCHAR2(50) NOT NULL,
 recommendCHECK NUMBER DEFAULT 0 NOT NULL,
 recommendDATE DATE DEFAULT SYSDATE NOT NULL
);   */

@ToString
public class RecommendDTO {
	private int recommendNo;
	private int reviewNum;
	private String memId;
	private int recommendcheck;
	private String recommendDate;
	public int getRecommendNo() {
		return recommendNo;
	}
	public void setRecommendNo(int recommendNo) {
		this.recommendNo = recommendNo;
	}
	public int getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getRecommendcheck() {
		return recommendcheck;
	}
	public void setRecommendcheck(int recommendcheck) {
		this.recommendcheck = recommendcheck;
	}
	public String getRecommendDate() {
		return recommendDate;
	}
	public void setRecommendDate(String recommendDate) {
		this.recommendDate = recommendDate;
	}
	
	
}
