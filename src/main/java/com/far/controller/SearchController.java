package com.far.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.far.dto.StoreDTO;
import com.far.service.SearchService;

@Controller
@RequestMapping("/search")
public class SearchController {

	@Autowired
	private SearchService searchService;
	
	// 통합검색 결과
	@GetMapping("")
	public ModelAndView search(@RequestParam("keyword") String keyword) {
		List<StoreDTO> stores = searchService.searchStore(keyword);
		/* List<com.far.dto.MenuDTO> menus = searchService.searchMenu(keyword); */

		ModelAndView mav = new ModelAndView("search/search_detail");
		// src/main/webapp/WEB-INF/views/
		mav.addObject("stores", stores);
		/* mav.addObject("menus", menus); */
		mav.addObject("keyword", keyword);
		mav.setViewName("search/search_detail_main");

		return mav;
	}
	
	// 숙소탭 클릭시
	@GetMapping("/acc")
	public ModelAndView acc_search(@RequestParam("keyword") String keyword) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("search/search_detail_rest");
		mav.addObject("keyword", keyword);
		return mav;
	}
}








