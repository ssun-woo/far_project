package com.far.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
//create table store(
//	    store_num int primary key,
//	    cate varchar2(50) not null,
//	    detail_cate varchar2(50) not null,
//	    store_name varchar2(1000) not null,
//	    store_intro varchar2(2000) not null,
//	    store_addr1 varchar2(1000) not null,
//	    store_addr2 varchar2(1000),
//	    reg_num varchar2(200) not null,     -- 사업자 등록번호
//	    store_logo varchar2(200) not null,
//	    reg_date varchar2(50) default sysdate
//	);

	
@Setter
@Getter
@ToString	
public class StoreDTO {
	private int store_num;
	private String detailCate;
	private String store_name;
	private String store_intro;
	private String store_addr1;
	private String store_addr2;
	private String reg_num;
	private String store_logo;
	private String reg_date;
	private String mem_id;


	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	public String getStore_addr() { // 가게 주소
		return store_addr;
	}

	public void setStore_addr(String store_addr) {
		this.store_addr = store_addr;
	}

	public String getCate() { // 메인 카테 예 - acc / food / culture
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	private String store_addr;
	private String cate;


	private String detail_cate; // 세부 카페 예 - food 일경우 한식 일식 등

	public String getDetail_cate() {
		return detail_cate;
	}

	public void setDetail_cate(String detail_cate) {
		this.detail_cate = detail_cate;
	}

	private int store_score;

	public int getStore_score() {
	    return store_score;
	}

	public void setStore_score(double store_score) {
	    // 반올림하여 정수로 설정
	    this.store_score = (int) Math.round(store_score);
	}

	private String store_detail_addr;   //세부 주소 

	public String getStore_detail_addr() {
		return store_detail_addr;
	}

	public void setStore_detail_addr(String store_detail_addr) {
		this.store_detail_addr = store_detail_addr;
	}
	private String reg_data;

	public String getReg_data() {
		return reg_data;
	}

	public void setReg_data(String reg_data) {
		this.reg_data = reg_data;
	}

}
