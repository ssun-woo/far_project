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


public class ResvDTO {

	private int resvNum;
	private int storeNum;
	private int roomNum;
	private String memId;

	private String startDay;
	private String endDay;
	private int peopleNum;
	public int getResvNum() {
		return resvNum;
	}
	public void setResvNum(int resvNum) {
		this.resvNum = resvNum;
	}
	public int getStoreNum() {
		return storeNum;
	}
	public void setStoreNum(int storeNum) {
		this.storeNum = storeNum;
	}
	public int getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getStartDay() {
		return startDay;
	}
	public void setStartDay(String startDay) {
		this.startDay = startDay;
	}
	public String getEndDay() {
		return endDay;
	}
	public void setEndDay(String endDay) {
		this.endDay = endDay;
	}
	public int getPeopleNum() {
		return peopleNum;
	}
	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}
	
	

}
