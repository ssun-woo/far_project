package com.far.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Member {
	
	@Id @Column(name = "MEMID")
	private String memId;
	@Column(name = "MEMPWD")
	private String memPwd;
	@Column(name = "MEMNAME")
	private String memName;
	@Column(name = "MEMEMAIL")
	private String memEmail;
	@Column(name = "MEMTEL")
	private String memTel;
	@Column(name = "MEMCLASS")
	private String memClass;
	@Column(name = "point", columnDefinition = "int default 0")
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
	public void setPoint(Integer point) {
	    if (point == null) {
	        this.point = 0;
	    } else {
	        this.point = point;
	    }
	}
	
}
