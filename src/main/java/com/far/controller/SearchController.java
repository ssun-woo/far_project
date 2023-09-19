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
	
	@GetMapping("")
	public ModelAndView search(@RequestParam("keyword") String keyword) {
		List<StoreDTO> stores = searchService.searchStore(keyword);
		ModelAndView mav = new ModelAndView();
		mav.addObject("stores", stores);
		mav.addObject("keyword", keyword);
		mav.setViewName("search/search_detail_main");
		return mav;
	}

//숙소 카테로 이동
	@GetMapping("/acc")
	public ModelAndView acc_search(@RequestParam("keyword") String keyword) {
		List<StoreDTO> stores = searchService.searchStore(keyword);
		ModelAndView mav = new ModelAndView();
		mav.addObject("stores", stores);
		mav.setViewName("search/search_detail_acc");
		mav.addObject("keyword", keyword);
		return mav;
	}

//음식 카테로 이동
	@GetMapping("/food")
	public ModelAndView food_search(@RequestParam("keyword") String keyword) {
		List<StoreDTO> stores = searchService.searchStore(keyword);
		ModelAndView mav = new ModelAndView();
		mav.addObject("stores", stores);
		mav.setViewName("search/search_detail_food");
		mav.addObject("keyword", keyword);
		return mav;
	}

//예술/문화 카테로 이동 
	@GetMapping("/culture")
	public ModelAndView culture_search(@RequestParam("keyword") String keyword) {
		List<StoreDTO> stores = searchService.searchStore(keyword);
		ModelAndView mav = new ModelAndView();
		mav.addObject("stores", stores);
		mav.setViewName("search/search_detail_culture");
		mav.addObject("keyword", keyword);
		return mav;
	}

	
}