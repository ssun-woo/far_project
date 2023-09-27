package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.Repository.MemberRepository;
import com.far.model.Member;

@Service
public class FindIdService {

    @Autowired
    private MemberRepository memberRepository;
    
    public Member findIdEmail(String memName, String memEmail) {
        return memberRepository.findByMemNameAndMemEmail(memName, memEmail);
    }
    
    public Member findIdTel(String memName, String memTel) {
        return memberRepository.findByMemNameAndMemTel(memName, memTel);
    }
    
    public Member findPwdEmail(String memId, String memName, String memEmail) {
    	return memberRepository.findByMemIdAndMemNameAndMemEmail(memId, memName, memEmail);
    }
    
    public Member findPwdTel(String memId, String memName, String memTel) {
    	return memberRepository.findByMemIdAndMemNameAndMemTel(memId, memName, memTel);
    }
    
    
}

