package com.far.dto;

import lombok.Getter;
import lombok.Setter;

//CREATE TABLE member(
//	memId 		varchar2(100)	primary key,	-- 아이디
//	memPwd 		varchar2(100) 	not null,       -- 비밀번호
//	memName 	varchar2(100) 	not null,		-- 이름
//	memEmail	varchar2(100)	not null,	    -- 이메일 아이디
//	memTel 		varchar2(100) 	not null,       -- 전화번호
//	memClass	varchar2(20) 	default 'm',    -- 회원등급(admin(a), CEO(c), member(m)
//	point 		number 			default 0       -- 포인트
//);

@Getter
@Setter
public class MemberDTO {
	
	private String memId;
	private String memPwd;
	private String memName;
	private String memEmail;
	private String memTel;
	private int point;
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPwd() {
		return memPwd;
	}
	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemTel() {
		return memTel;
	}
	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
}
