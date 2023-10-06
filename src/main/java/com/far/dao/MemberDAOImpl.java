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

	@Override
	public int isexist_mem(MemberDTO memberDTO) {
		int member = sqlSession.selectOne("memSelect", memberDTO);
		return member;
	}
	
	@Override
    public String findIdEmail(@Param("memName") String memName, @Param("memTel") String memTel) {
        // MyBatis를 사용하여 SQL 쿼리 실행
        String memId = sqlSession.selectOne("findId", new HashMap<String, String>() {{
            put("memName", memName);
            put("memTel", memTel);
        }});

        return memId;
    }


}
