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
	private int storeNum;
	private String memId;
	
	

	public int getStoreNum() {
		return storeNum;
	}
	public void setStoreNum(int storeNum) {
		this.storeNum = storeNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	

	
	
}
