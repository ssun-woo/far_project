package com.far.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/culture")
public class CultureController {
	
//	@Autowired
//	private CultrueService cultureService;

	@RequestMapping("/cate_list")
	public ModelAndView acc_list() {
		ModelAndView mav = new ModelAndView("culture/culture_index");
		return mav;
	}
	
	// 세부 카테 클릭 시 출력되는 목록
	@RequestMapping("/list")
	public ModelAndView acc_hotel(HttpServletRequest request) {
		String detail_cate = request.getParameter("detail_cate");
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("detail_cate", detail_cate);
		mav.setViewName("culture/cu_list");
		return mav;
	}
	
	
	
}
