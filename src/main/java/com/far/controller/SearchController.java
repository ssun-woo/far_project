package com.far.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.far.service.SearchService;

@Controller
public class SearchController {

	@Autowired
	private SearchService searchService;
	
	@GetMapping("/search")
	public ModelAndView search(@RequestParam("keyword") String keyword) {
		List<com.far.dto.StoreDTO> stores = searchService.searchStore(keyword);
	    /*List<com.far.dto.MenuDTO> menus = searchService.searchMenu(keyword);*/

	    ModelAndView mav = new ModelAndView("search/search_detail");
	    // src/main/webapp/WEB-INF/views/
	    mav.addObject("stores", stores);
	    /*mav.addObject("menus", menus);*/
	    mav.addObject("keyword", keyword);

	    return mav;
    }
}
