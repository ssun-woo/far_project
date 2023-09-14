package com.far.dto;

import lombok.Setter;

import lombok.Getter;

//create table reservation(
//	    resv_num int primary key,       -- 예약번호
//	    store_num int,        -- 가게번호
//	    memId varchar2(50),   -- 사용자 id
//	    start_day varchar2(50),-- 시작일
//	    end_day varchar2(50),  -- 마감일
//	    people_num int         -- 인원수
//	);

@Getter
@Setter
public class ResvDTO {
	
	private int resv_num;
	public int getResv_num() {
		return resv_num;
	}
	public void setResv_num(int resv_num) {
		this.resv_num = resv_num;
	}
	public int getStore_num() {
		return store_num;
	}
	public void setStore_num(int store_num) {
		this.store_num = store_num;
	}
	public String getmemId() {
		return memId;
	}
	public void setmemId(String memId) {
		this.memId = memId;
	}
	public String getStart_day() {
		return start_day;
	}
	public void setStart_day(String start_day) {
		this.start_day = start_day;
	}
	public String getEnd_day() {
		return end_day;
	}
	public void setEnd_day(String end_day) {
		this.end_day = end_day;
	}
	public int getPeople_num() {
		return people_num;
	}
	public void setPeople_num(int people_num) {
		this.people_num = people_num;
	}
	private int store_num;
	private String memId;
	private String start_day;
	private String end_day;
	private int people_num;
}
