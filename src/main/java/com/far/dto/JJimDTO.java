package com.far.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*create table jjim(
	storeNum int not null,
	memId varchar2(100) not null,
);*/

@Getter
@Setter
@ToString
public class JJimDTO {
	private int storeNum;
	private String memId;
	
	

	public int getStore_num() {
		return storeNum;
	}
	public void setStore_num(int storeNum) {
		this.storeNum = storeNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	

	
	
}
