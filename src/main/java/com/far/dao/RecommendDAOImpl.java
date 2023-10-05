package com.far.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.far.dto.RecommendDTO;
@Repository
public class RecommendDAOImpl implements RecommendDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void updateRecommend(int reviewNum) {
		sqlSession.update("update_recommend", reviewNum);
		
	}
	
	@Override
	public void updateRecommendCancel(int reviewNum) {
		sqlSession.update("update_recommend_cancel",reviewNum);
		
	}

	@Override
	public void recommendCheck(int reviewNum, String memId) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("memId",memId);
		map.put("reviewNum", reviewNum);
		sqlSession.selectOne("recommend_count", map);
		
	}

	@Override
	public void insertRecommend(int reviewNum, String memId) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("memId",memId);
		map.put("reviewNum", reviewNum);
		sqlSession.insert("set_recommend", map);
		
	}

	

	@Override
	public void updateRecommendCheck(int reviewNum, String memId) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("memId",memId);
		map.put("reviewNum", reviewNum);
		sqlSession.update("check_recommend", map);
		
	}

	@Override
	public void updateRecommendCheckCancel(int reviewNum, String memId) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("memId",memId);
		map.put("reviewNum", reviewNum);
		sqlSession.update("check_recommend_cancel", map);
		
	}

	

	@Override
	public void deleteRecommend(int reviewNum, String memId) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("memId",memId);
		map.put("reviewNum", reviewNum);
		sqlSession.delete("del_recommend", map);
		
	}


//	@Override
//	public void setRecommend(RecommendDTO redto) {
//		sqlSession.insert("set_recommend",redto);
//		
//	}
//
//
//	@Override
//	public int getRecommendCount(RecommendDTO redto) {
//		return sqlSession.selectOne("get_recommend",redto);
//	}
//
//
//	@Override
//	public void delRecommend(RecommendDTO redto) {
//		sqlSession.delete("del_recommend",redto);
//		
//	}
	
	
	

}
