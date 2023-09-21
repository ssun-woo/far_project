package com.far.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    public String acc_search(
        @RequestParam("keyword") String keyword,
        @RequestParam(name = "orderby", required = false) String orderby,
        Model model
    ) {
        List<StoreDTO> stores;
        
        // 정렬 기준에 따라 데이터를 처리
        if ("views".equals(orderby)) {
            stores = searchService.sortByViews(keyword);
        } else if ("likes".equals(orderby)) {
            stores = searchService.sortByLikes(keyword);
        } else {
            stores = searchService.searchStore(keyword);
        }
        
        model.addAttribute("stores", stores);
        model.addAttribute("keyword", keyword);
        model.addAttribute("orderby", orderby);
        
        return "search/search_detail_acc";
    }
	

//음식 카테로 이동
	@GetMapping("/food")
    public String food_search(
        @RequestParam("keyword") String keyword,
        @RequestParam(name = "orderby", required = false) String orderby,
        Model model
    ) {
        List<StoreDTO> stores;
        
        // 정렬 기준에 따라 데이터를 처리
        if ("views".equals(orderby)) {
            stores = searchService.sortByViews(keyword);
        } else if ("likes".equals(orderby)) {
            stores = searchService.sortByLikes(keyword);
        } else {
            stores = searchService.searchStore(keyword);
        }
        
        model.addAttribute("stores", stores);
        model.addAttribute("keyword", keyword);
        model.addAttribute("orderby", orderby);
        
        return "search/search_detail_food";
    }

//예술/문화 카테로 이동 
	@GetMapping("/culture")

    public String culture_search(
        @RequestParam("keyword") String keyword,
        @RequestParam(name = "orderby", required = false) String orderby,
        Model model
    ) {
        List<StoreDTO> stores;
        
        // 정렬 기준에 따라 데이터를 처리
        if ("views".equals(orderby)) {
            stores = searchService.sortByViews(keyword);
        } else if ("likes".equals(orderby)) {
            stores = searchService.sortByLikes(keyword);
        } else {
            stores = searchService.searchStore(keyword);
        }
        
        model.addAttribute("stores", stores);
        model.addAttribute("keyword", keyword);
        model.addAttribute("orderby", orderby);
        
        return "search/search_detail_culture";
    }
	
}
