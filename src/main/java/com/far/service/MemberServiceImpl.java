package com.far.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.far.dao.MemberDAO;
import com.far.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO memberDao;

	@Override
	public void insertMember(MemberDTO m) {
		memberDao.insertMember(m);;
	}
	
}
