package com.far.dto;

import lombok.Getter;
import lombok.Setter;

//-- coupon 테이블 + coupon_personal 테이블
//
//CREATE TABLE coupon
//(
//	couponName			VARCHAR2(200)	PRIMARY KEY,	-- 쿠폰 이름
//	couponDiscountrate NUMBER        	NOT NULL, 		-- 쿠폰 할인율
//	couponStartDate  	DATE            NOT NULL, 		-- 쿠폰 발급일
//	couponEndDate    	DATE            NOT NULL		-- 쿠폰 만료일
//);
//
//CREATE TABLE coupon_personal
//(
//	couponNum			NUMBER			PRIMARY KEY,	-- 쿠폰 번호
//	couponName			VARCHAR2(200)	NOT NULL,		-- 쿠폰 이름
//	memId				VARCHAR2(50)	NOT NULL,		-- 멤버 id
//	couponUsed			NUMBER			DEFAULT 0		-- 쿠폰 사용 여부
//);

@Getter
@Setter
public class CouponDTO {

	private String couponName;
	private double couponDiscountrate;
	private String couponStartDate;
	private String couponEndDate;
	private int couponNum;
	private String memId;
	private int couponUsed;

	public String getCouponName() {
		return couponName;
	}
	public void setCoupon_name(String couponName) {
		this.couponName = couponName;
	}
	public double getCouponDiscount() {
		return couponDiscountrate;
	}
	public void setCoupon_discount(int couponDiscountrate) {
		this.couponDiscountrate = couponDiscountrate;
	}
	public String getCouponStartDate() {
		return couponStartDate;
	}
	public void setCoupon_startDate(String couponStartDate) {
		this.couponStartDate = couponStartDate;
	}
	public String getCouponEndDate() {
		return couponEndDate;
	}
	public void setCouponEndDate(String couponEndDate) {
		this.couponEndDate = couponEndDate;
	}
	public int getCouponNum() {
		return couponNum;
	}
	public void setCoupon_num(int couponNum) {
		this.couponNum = couponNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getCouponUsed() {
		return couponUsed;
	}
	public void setCouponUsed(int couponUsed) {
		this.couponUsed = couponUsed;
	}
	public void setCouponStartDate(String substring) {
		// TODO Auto-generated method stub
		
	}

}
