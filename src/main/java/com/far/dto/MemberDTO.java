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
	
	private String mem_name;
	private String mem_email;
	private String mem_tel;
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pwd() {
		return mem_pwd;
	}
	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_tel() {
		return mem_tel;
	}
	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}
	
}
