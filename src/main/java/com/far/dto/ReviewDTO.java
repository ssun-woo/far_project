package com.far.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//create table review(
//	    review_num int primary key,    --리뷰 글번호
//	    memId varchar(50) not null,        -- 리뷰 단 사람 아이디
//	    store_num int not null, --가게 고유 번호
//	    review_cont varchar2(4000) not null,   -- 리뷰 내용
//	    review_rating int not null, --평점
//	    review_recommend int default 0, --추천수 
//	    review_date date default sysdate   -- 리뷰 날짜
//	);   


@Getter
@Setter
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
	
