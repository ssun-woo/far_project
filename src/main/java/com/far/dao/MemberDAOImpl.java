package com.far.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.MemberDTO;
import com.far.model.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertMember(MemberDTO m) {
		sqlSession.insert("mem_in", m);
	}

	@Override
    public void updateMemPwd(String memPwd, String memId) {
        Map<String, String> resetPwd = new HashMap<>();
        resetPwd.put("memPwd", memPwd);
        resetPwd.put("memId", memId);
        sqlSession.update("resetPwd", resetPwd);
    }

	


}
