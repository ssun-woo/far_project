package com.far.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

//CREATE TABLE member(
//	memId 		varchar2(100)	primary key,	-- 아이디
//	memPwd 		varchar2(100) 	not null,       -- 비밀번호
//	memName 	varchar2(100) 	not null,		-- 이름
//	memEmail	varchar2(100)	not null,	    -- 이메일 아이디
//	memTel 		varchar2(100) 	not null,       -- 전화번호
//	memClass	varchar2(20) 	default 'm',    -- 회원등급(admin(a), CEO(c), member(m)
//	point 		number 			default 0       -- 포인트
//);


public class MemberDTO {

	@NotBlank
	@Length(min = 6, max = 16, message = "아이디는 6글자 이상 16글자 이하여야합니다.")
	@Pattern(regexp = "^[a-z0-9]+$", message = "아이디는 영소문자와 숫자만 가능합니다")

	private String memId;
	
	@NotBlank
	@Pattern(regexp = "^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$", message = "비밀번호는 8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.")
	private String memPwd;
	
	@NotBlank
	private String memName;
	
	@NotBlank
	@Pattern(regexp = "^[A-Za-z0-9_\\.\\-]+@[A-Za-z0-9\\-]+\\.[A-Za-z0-9\\-]+$", message = "이메일 형식이 올바르지 않습니다.")
	private String memEmail;
	
	@NotBlank
	@Pattern(regexp="[0-9]+$", message="숫자만 입력 가능합니다.")
	private String memTel;
	
	private String memClass;
	
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

	public String getMemClass() {
		return memClass;
	}

	public void setMemClass(String memClass) {
		this.memClass = memClass;
	}
	
	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

}
