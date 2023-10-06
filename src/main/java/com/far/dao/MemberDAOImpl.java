package com.far.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertMember(MemberDTO m) {
		sqlSession.insert("memIn", m);
	}

	@Override
    public void updateMemPwd(String memPwd, String memId) {
        Map<String, String> resetPwd = new HashMap<>();
        resetPwd.put("memPwd", memPwd);
        resetPwd.put("memId", memId);
        sqlSession.update("resetPwd", resetPwd);
    }

	@Override
	public String findMemClass(String memId) {
		return sqlSession.selectOne("getMemClass", memId);
	}

}
