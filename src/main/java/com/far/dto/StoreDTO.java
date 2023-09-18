package com.far.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class StoreDTO {

	private String store_name;                 //가게 이름
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	
	public String getStore_addr() {            //가게 주소
		return store_addr;
	}
	public void setStore_addr(String store_addr) {
		this.store_addr = store_addr;
	}
	
	public String getCate() {            //메인 카테 예 - acc / food / culture
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	
	private String store_addr;
	private String cate;
	
	private String detail_cate;            //세부 카페 예 - food 일경우 한식 일식 등 
	public String getDetail_cate() {
		return detail_cate;
	}
	public void setDetail_cate(String detail_cate) {
		this.detail_cate = detail_cate;
	}
	

}
