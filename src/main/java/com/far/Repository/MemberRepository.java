package com.far.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.far.model.Member;

public interface MemberRepository extends JpaRepository<Member, String> {
	public Member findByMemId(String memId);
}