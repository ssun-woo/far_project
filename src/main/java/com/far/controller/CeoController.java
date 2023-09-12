package com.far.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/ceo")
public class CeoController {
	
	// ceo 메인 페이지 이동
	@RequestMapping("/index")
	public ModelAndView ceo_index() {
		ModelAndView mav = new ModelAndView("ceo/ceo_index");
		return mav;
	}
	
	
	// 예약 관리 버튼 클릭 시
	@GetMapping("/reservation_main")
    public String loadReservationMain() {
        return "ceo/reservation_main";
	}
	
	// 리뷰 관리 버튼 클릭 시
	@GetMapping("/review_test")
	public String loadReviewTest() {
		return "ceo/review_test";
	}
	
	// 가게 관리 버튼 클릭 시
	@GetMapping("/store_main")
	public String loadStoreMain() {
		return "ceo/store_main";
	}
	
	
	// 가게 관리 - 업체 등록
	@GetMapping("/store_registration")
	public String loadStoreRegistration() {
		return "ceo/store_registration";
	}
	
	// 가게 관리 - 메뉴 등록
	@GetMapping("/store_menu_regis")
	public String loadStoreMenuRegis() {
		return "ceo/store_menu_regis";
	}
	
	// 가게 관리 - 소개글 및 정보 수정
	@GetMapping("/store_info_edit")
	public String loadStoreInfoEdit() {
		return "ceo/store_info_edit";
	}
	
	// 가게 관리 - 메뉴 수정
	@GetMapping("/store_menu_edit")
	public String loadStoreMenuEdit() {
		return "ceo/store_menu_edit";
	}
	
	
	// 예약 관리 - 지난 예약 보기
	@GetMapping("/reservation_confirm_list")
	public String loadReservationConfirmList() {
		return "ceo/reservation_confirm_list";
	}
	
	// 예약 관리 - 대기 예약 보기
	@GetMapping("/reservation_waiting_list")
	public String loadReservationWaitingList() {
		return "ceo/reservation_waiting_list";
	}
}
