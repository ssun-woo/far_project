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
	private String startDay;
	private String endDay;
	private int peopleNum;
	private String regDate;
	
}
