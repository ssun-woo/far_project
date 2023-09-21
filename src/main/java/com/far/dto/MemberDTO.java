package com.far.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

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

	@NotBlank
	@Length(min = 6, max = 16, message = "아이디는 6글자 이상 16글자 이하여야합니다.")
	@Pattern(regexp = "^[a-z0-9]+$", message = "아이디는 영소문자와 숫자만 가능합니다")
	private String mem_id;

	@NotBlank
	@Pattern(regexp = "^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$", message = "비밀번호는 8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.")
	private String mem_pwd;

	@NotBlank
	private String mem_name;

	@NotBlank
	@Pattern(regexp = "^[A-Za-z0-9_\\.\\-]+@[A-Za-z0-9\\-]+\\.[A-Za-z0-9\\-]+$", message = "이메일 형식이 올바르지 않습니다.")
	private String mem_email;

	@NotBlank
	@Pattern(regexp = "[0-9]+$", message = "숫자만 입력 가능합니다.")
	private String mem_tel;

	private String mem_class;

	private String point;

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

	public String getMem_class() {
		return mem_class;
	}

	public void setMem_class(String mem_class) {
		this.mem_class = mem_class;
	}
	
	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

}
