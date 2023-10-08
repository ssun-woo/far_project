package com.far.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.MemberDTO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	
	@Autowired
	SqlSession sqlsession;

	@Override
	public int isexist_mem(MemberDTO memberDTO) {
		int member = sqlsession.selectOne("memSelect", memberDTO);
		return member;
	}
	
	@Override
    public String findIdEmail(@Param("memName") String memName, @Param("memTel") String memTel) {
        // MyBatis를 사용하여 SQL 쿼리 실행
        String memId = sqlsession.selectOne("findId", new HashMap<String, String>() {{
            put("memName", memName);
            put("memTel", memTel);
        }});

        return memId;
    }

}
