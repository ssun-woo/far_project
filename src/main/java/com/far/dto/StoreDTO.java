package com.far.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
//create table store(
//	    store_num int primary key,
//	    cate varchar2(50) not null,
//	    detail_cate varchar2(50) not null,
//	    store_name varchar2(1000) not null,
//	    store_intro varchar2(2000) not null,
//	    store_addr1 varchar2(1000) not null,
//	    store_addr2 varchar2(1000),
//	    reg_num varchar2(200) not null,     -- 사업자 등록번호
//	    store_logo varchar2(200) not null,
//	    reg_date varchar2(50) default sysdate
//	);

@Setter
@Getter
@ToString
public class StoreDTO {
	
	private int store_num;
	private String cate;
	private String detail_cate;
	private String store_name;
	private String store_intro;
	private String store_addr1;
	private String store_addr2;
	private String reg_num;
	private String store_logo;
	private String reg_date;
	
	
}
