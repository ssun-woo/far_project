package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.MemberDAO;
import com.far.dto.MemberDTO;
import com.far.model.Member;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO memberDao;

	@Override
	public void insertMember(MemberDTO m) {
		memberDao.insertMember(m);
	}

	@Override
	public void updateMemPwd(String memPwd, String memId) {
		memberDao.updateMemPwd(memPwd, memId);
	}
}
