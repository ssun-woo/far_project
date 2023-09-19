package com.far.dto;


import lombok.ToString;


@ToString

public class ReviewDTO {
	private int review_num; //리뷰 글번호
	
	private String memId; //아이디

	private int store_num;
	
	private String review_title;
	
	private double review_rating; //평점
	
	private String review_cont; //리뷰 내용
	
	private int review_recommend; //추천수
	
//	private int book_id; //예약번호
//	
//	
//	
	private String review_date; //리뷰 작성 날짜
//	
//	
//	
//	private String review_goods;//이용한 상품
	
	
	
	public int getReview_num() {
		return review_num;
	}

	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}

//	public int getBook_id() {
//		return book_id;
//	}
//
//	public void setBook_id(int book_id) {
//		this.book_id = book_id;
//	}

	public String getMemId() {
		return memId;
	}

	public void setMem_id(String memId) {
		this.memId = memId;
	}

	public String getReview_date() {
		return review_date;
	}

	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}

	public int getReview_recommend() {
		return review_recommend;
	}

	public void setReview_recommend(int reviwe_recommend) {
		this.review_recommend = reviwe_recommend;
	}

	public String getReview_cont() {
		return review_cont;
	}

	public void setReview_cont(String review_cont) {
		this.review_cont = review_cont;
	}

//	public String getReview_goods() {
//		return review_goods;
//	}
//
//	public void setReview_goods(String review_goods) {
//		this.review_goods = review_goods;
//	}

	public double getReview_rating() {
		return review_rating; // 별점 값
	}

	public void setReview_rating(double review_rating) {
		this.review_rating = review_rating;
	}

	public int getStore_num() {
		return store_num;
	}

	public void setStore_num(int store_num) {
		this.store_num = store_num;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	

	//create table review(
//		    review_num int primary key,    --리뷰 글번호
//		    mem_id varchar(50) not null,        -- 리뷰 단 사람 아이디
//		    store_num varchar(100) not null,
//		    review_title varchar2(200) not null,  -- 리뷰 제목
//		    review_cont varchar2(4000) not null,	-- 리뷰 내용
//		    review_rating number(2,1) not null, --평점
//		    review_recommend int not null, --추천수 
//		    review_date date default sysdate   -- 리뷰 날짜
//		    
//		); 
	/*
	 * public class RatingDTO { private int review_rating; // 별점 값
	 * 
	 * public int getRating() { return review_rating; }
	 * 
	 * public void setRating(int review_rating) { this.review_rating =
	 * review_rating; } }
	 */

	
	
	
}
