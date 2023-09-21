package com.far.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class StoreDTO {

	private String store_name; // 가게 이름

	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	private String store_addr;  // 가게 주소

	public String getStore_addr() { 
		return store_addr;
	}

	public void setStore_addr(String store_addr) {
		this.store_addr = store_addr;
	}
	private String cate;   // 메인 카테 예 - acc / food / culture

	public String getCate() { 
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}


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
	private int reg_data;

	public int getReg_data() {
		return reg_data;
	}

	public void setReg_data(int reg_data) {
		this.reg_data = reg_data;
	}
}
