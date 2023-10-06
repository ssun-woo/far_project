package com.far.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*create table jjim(
    memId varchar2(50) not null,
    storeNum int not null
);   */


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
