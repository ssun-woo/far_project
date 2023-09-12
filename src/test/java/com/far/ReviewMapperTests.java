package com.far;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.far.dto.ReviewDTO;
import com.far.mapper.ReviewMapper;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ReviewMapperTests {

	@Autowired
	private ReviewMapper mapper;
	
	@Test
	public void ReviewEnrollTest() {
		int book_id = 88;
		String mem_id = "admin";
		double review_rating = 3.5;
		String review_goods = "트윈룸";
		String review_cont = "테스트";
		int review_recommend=1;
		
		ReviewDTO dto = new ReviewDTO();
		dto.setBook_id(book_id);
		dto.setMem_id(mem_id);
		dto.setReview_rating(review_rating);
		dto.setReview_goods(review_goods);
		dto.setReview_cont(review_cont);
		dto.setReview_recommend(review_recommend);
		
		mapper.enrollReview(dto);
		
		
	}
	
}
