package com.far.dto;

import lombok.Getter;
import lombok.Setter;

//create table member(
//	    mem_id varchar2(50) primary key,        -- 아이디
//	    mem_pwd varchar2(50) not null,          -- 비밀번호
//	    mem_email_id varchar2(60) not null,     -- 이메일 아이디
//	    mem_email_domain varchar2(60) not null, -- 이메일 도메인
//	    mem_tel varchar2(50) not null,          -- 전화번호
//	    mem_class varchar2(20) default 'm'     -- 회원등급(admin(a), CEO(c), member(m)
//	);



@Getter
@Setter
public class MemberDTO {
	
	private String mem_id;
	private String mem_pwd;
	private String mem_email_id;
	private String mem_email_domain;
	private String mem_tel;
	private String mem_class;
	private String reg_date;
	
}
