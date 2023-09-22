package com.far.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*create table jjim(
	jjim_num int primary key,
	store_num int not null,
	memId varchar2(100) not null,
	jjim varchar2(50) not null
);*/

@Getter
@Setter
@ToString
public class JJimDTO {
	private int store_num;
	private String memId;
	
	

	public int getStore_num() {
		return store_num;
	}
	public void setStore_num(int store_num) {
		this.store_num = store_num;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	

	
	
}
