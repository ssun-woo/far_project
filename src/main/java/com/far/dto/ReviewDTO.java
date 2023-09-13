package com.far.dto;

import java.util.Date;

import lombok.ToString;


@ToString

public class ReviewDTO {

	private int review_num; //리뷰 글번호
	
	private int book_id; //예약번호
	
	private String mem_id; //아이디
	
	private Date review_date; //리뷰 작성 날짜
	
	private int review_recommend; //추천수
	
	private String review_cont; //리뷰 내용
	
	private String review_goods;//이용한 상품
	
	private double review_rating; //평점

	public int getReview_num() {
		return review_num;
	}

	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public Date getReview_date() {
		return review_date;
	}

	public void setReview_date(Date review_date) {
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

	public String getReview_goods() {
		return review_goods;
	}

	public void setReview_goods(String review_goods) {
		this.review_goods = review_goods;
	}

	public double getReview_rating() {
		return review_rating;
	}

	public void setReview_rating(double review_rating) {
		this.review_rating = review_rating;
	}
	
	
	
	
	
}
