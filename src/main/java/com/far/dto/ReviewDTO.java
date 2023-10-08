package com.far.dto;


import lombok.ToString;


@ToString

public class ReviewDTO {
	private int reviewNum; //리뷰 글번호
	
	private String memId; //아이디

	private int storeNum; //가게 번호
	
	
	private double reviewRating; //평점
	
	private String reviewCont; //리뷰 내용
	
	private int reviewRecommend; //추천수
	
	private String reviewDate; //리뷰 작성 날짜


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

	public int getStoreNum() {
		return storeNum;
	}

	public void setStoreNum(int storeNum) {
		this.storeNum = storeNum;
	}

	public double getReviewRating() {
		return reviewRating;
	}

	public void setReviewRating(double reviewRating) {
		this.reviewRating = reviewRating;
	}

	public String getReviewCont() {
		return reviewCont;
	}

	public void setReviewCont(String reviewCont) {
		this.reviewCont = reviewCont;
	}

	public int getReviewRecommend() {
		return reviewRecommend;
	}

	public void setReviewRecommend(int reviewRecommend) {
		this.reviewRecommend = reviewRecommend;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}
	
	
	
	
	
	
}
