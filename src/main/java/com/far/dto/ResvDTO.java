package com.far.dto;

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
	private String resvNum;
	private int storeNum;
	private String storeName;
	private int roomNum;
	private String roomName;
	private String memId;
	private String amount;
	private String startDay;
	private String endDay;

	public String getResvNum() {
		return resvNum;
	}

	public void setResvNum(String resvNum) {
		this.resvNum = resvNum;
	}

	public int getStoreNum() {
		return storeNum;
	}

	public void setStoreNum(int storeNum) {
		this.storeNum = storeNum;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public int getRoomNum() {
		return roomNum;
	}

	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
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
}
