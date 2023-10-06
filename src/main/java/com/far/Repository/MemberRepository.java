package com.far.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.far.model.Member;

public interface MemberRepository extends JpaRepository<Member, String> {
	public Member findByMemId(String memId);
	public Member findByMemNameAndMemEmail(String memName, String memEmail);
	public Member findByMemNameAndMemTel(String memName, String memTel);
	public Member findByMemIdAndMemNameAndMemEmail(String memId, String memName, String memEmail);
	public Member findByMemIdAndMemNameAndMemTel(String memId, String memName, String memTel);
	
}