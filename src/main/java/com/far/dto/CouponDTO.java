package com.far.dto;

import lombok.Getter;
import lombok.Setter;

//-- coupon 테이블 + coupon_personal 테이블
//
//CREATE TABLE coupon
//(
//	coupon_name			VARCHAR2(200)	PRIMARY KEY,	-- 쿠폰 이름
//	coupon_discountrate NUMBER        	NOT NULL, 		-- 쿠폰 할인율
//	coupon_startDate  	DATE            NOT NULL, 		-- 쿠폰 발급일
//	coupon_endDate    	DATE            NOT NULL		-- 쿠폰 만료일
//);
//
//CREATE TABLE coupon_personal
//(
//	coupon_num			NUMBER			PRIMARY KEY,	-- 쿠폰 번호
//	coupon_name			VARCHAR2(200)	NOT NULL,		-- 쿠폰 이름
//	mem_id				VARCHAR2(50)	NOT NULL,		-- 멤버 id
//	coupon_used			NUMBER			DEFAULT 0		-- 쿠폰 사용 여부
//);

@Getter
@Setter
public class CouponDTO {

	private String coupon_name;
	private double coupon_discountrate;
	private String coupon_startDate;
	private String coupon_endDate;
	private int coupon_num;
	private String mem_id;
	private int coupon_used;
	
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public double getCoupon_discount() {
		return coupon_discountrate;
	}
	public void setCoupon_discount(int coupon_discountrate) {
		this.coupon_discountrate = coupon_discountrate;
	}
	public String getCoupon_startDate() {
		return coupon_startDate;
	}
	public void setCoupon_startDate(String coupon_startDate) {
		this.coupon_startDate = coupon_startDate;
	}
	public String getCoupon_endDate() {
		return coupon_endDate;
	}
	public void setCoupon_endDate(String coupon_endDate) {
		this.coupon_endDate = coupon_endDate;
	}
	public int getCoupon_num() {
		return coupon_num;
	}
	public void setCoupon_num(int coupon_num) {
		this.coupon_num = coupon_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getCoupon_used() {
		return coupon_used;
	}
	public void setCoupon_used(int coupon_used) {
		this.coupon_used = coupon_used;
	}
}
