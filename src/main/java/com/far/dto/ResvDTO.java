package com.far.dto;

import lombok.Getter;
import lombok.Setter;

//create table reservation(
//	    resv_num int primary key,       -- 예약번호
//	    store_num int,        -- 가게번호
//	    memId varchar2(50),   -- 사용자 id
//	    start_day varchar2(50),-- 시작일
//	    end_day varchar2(50),  -- 마감일
//	    people_num int         -- 인원수
//		roomNum
//	);

@Getter
@Setter
public class ResvDTO {

	private int resvNum;
	private int storeNum;
	private int roomNum;
	private String memId;

	private String start_day;
	private String end_day;
	private int people_num;
	public void setResv_num(int i) {
		// TODO Auto-generated method stub
		
	}
	public void setStore_num(int store_num2) {
		// TODO Auto-generated method stub
		
	}
	public void setMemId(String id) {
		// TODO Auto-generated method stub
		
	}
	public void setStart_day(String string) {
		// TODO Auto-generated method stub
		
	}
	public void setEnd_day(String string) {
		// TODO Auto-generated method stub
		
	}
	public void setPeople_num(int i) {
		// TODO Auto-generated method stub
		
	}

}
