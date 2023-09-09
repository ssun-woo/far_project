package com.far.dto;

import lombok.Setter;

import lombok.Getter;

//create table reservation(
//	    resv_num int primary key,       -- 예약번호
//	    store_num int,        -- 가게번호
//	    mem_id varchar2(50),   -- 사용자 id
//	    start_day varchar2(50),-- 시작일
//	    end_day varchar2(50),  -- 마감일
//	    people_num int         -- 인원수
//	);

@Getter
@Setter
public class ResvDTO {
	
	private int resv_num;
	private int store_num;
	private String mem_id;
	private String start_day;
	private String end_day;
	private int people_num;
	
}
