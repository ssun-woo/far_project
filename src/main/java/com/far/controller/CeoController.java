package com.far.controller;

import java.io.File;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.far.dto.MenuDTO;
import com.far.dto.StoreDTO;
import com.far.service.CeoService;
import com.oreilly.servlet.MultipartRequest;

@Controller
@RequestMapping("/ceo")
public class CeoController {
	
	@Autowired
	private CeoService ceoService;
	
	// ceo 메인 페이지 이동
	@RequestMapping("/index")
	public ModelAndView ceo_index(HttpSession session) {
		ModelAndView mav = new ModelAndView("ceo/ceo_index");
		session.setAttribute("id", "sunwoo");
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
	
	// 가게 관리 - 가게 선택
	@GetMapping("/store_list")
	public ModelAndView store_choice(HttpSession session) {
		String id = (String)session.getAttribute("id");
		List<StoreDTO> sList = ceoService.getStores(id);
		ModelAndView mav = new ModelAndView();
		System.out.println(sList.size());
		mav.setViewName("ceo/store_list");
		mav.addObject("slist", sList);
		return mav;
	}
	
	// 가게 관리 - 메뉴 관리 페이지 호출
	@GetMapping("/store_menu_list")
	public String loadStoreMenuRegis(String store_num) {
		System.out.println(store_num);
		return "ceo/store_menu_list";
	}
	
	
	
	// 가게 관리 - 메뉴 등록 폼 이동
	@GetMapping("/store_menu_regis")
	public ModelAndView ceo_store_menu_regis(String store_num) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ceo/store_menu_regis");
		return mav;
	}
	
	// 가게 관리 - 메뉴 등록
	@PostMapping("/store_menu_regis_ok")
	public ModelAndView ceo_store_menu_regis_ok(MenuDTO m, HttpServletRequest request) throws Exception {
		MultipartRequest multi = null; // 이진파일을 가져올 참조변수
		
		int fileSize = 5*1024*1024;	// 이진파일 업로드 최대크기
		String saveFolder = request.getRealPath("upload/store_menu/");	// 이진 파일 업로드 서버 경로
		multi = new MultipartRequest(request, saveFolder, fileSize, "UTF-8");
		
		
		int store_num = Integer.parseInt(multi.getParameter("store_num"));
		String cate = ceoService.getCate(store_num);
		String detail_cate = ceoService.getDetail_Cate(store_num);
		
		
//		String detail_cate = multi.getParameter("detail_cate");
//		String store_name = multi.getParameter("store_name");
//		String store_intro = multi.getParameter("store_intro");
//		String store_addr1 = multi.getParameter("store_addr1");
//		String store_addr2 = multi.getParameter("store_addr2");
//		String reg_num = multi.getParameter("reg_num");
		
		String menu_name = multi.getParameter("menu_name");
		String menu_explain = multi.getParameter("menu_explain");
		int menu_price = Integer.parseInt(multi.getParameter("menu_price"));
		
		
		File upMenu = multi.getFile("menu_photo");
		
		if(upMenu != null) {
			String fileName = upMenu.getName();
			String homedir = saveFolder+ "/"+ cate + "/" + store_num;	// (upload/store_menu/카테이름/가게번호)
			File path01 = new File(homedir);
			
			if(!(path01.exists())) {
				path01.mkdir();
			}
			Random r = new Random();
			int random = r.nextInt(100000000);
			
			int index = fileName.lastIndexOf(".");
			
			String fileExtendsion = fileName.substring(index+1);
			String refileName = detail_cate + random + "." + fileExtendsion;
			String fileDBName = "/" + store_num + "/" + refileName;
			upMenu.renameTo(new File(homedir+"/"+refileName));
			
			m.setMenu_photo(fileDBName);
		}else {
			String fileDBName ="";
			m.setMenu_photo(fileDBName);
		}
		m.setMenu_name(menu_name);
		m.setMenu_explain(menu_explain);
		m.setMenu_price(menu_price);
		m.setStore_num(store_num);
		
		ceoService.insertMenu(m);
		
		ModelAndView mav = new ModelAndView("/ceo/ceo_index");
		mav.addObject("store_num", store_num);
		return mav;
	}
		
	
	
	
	// 가게 관리 - 소개글 및 정보 수정
	@GetMapping("/store_info_edit")
	public String loadStoreInfoEdit() {
		return "ceo/store_info_edit";
	}
	
	@GetMapping("/test")
	public String test2213() {
		return "/ceo/store_menu_list";
	}
	
//	// 가게 관리 - 메뉴 수정
//	@GetMapping("/store_menu_edit")
//	public String loadStoreMenuEdit() {
//		return "ceo/store_menu_edit";
//	}
//	
	
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
	
	
	// 가게 등록
	@PostMapping("/store_registration_ok")
	public ModelAndView store_registration_ok(StoreDTO s, HttpServletRequest request) throws Exception {
		String saveFolder = request.getRealPath("upload/store_logo");	// 이진 파일 업로드 서버 경로
		int fileSize = 5*1024*1024;	// 이진파일 업로드 최대크기
		MultipartRequest multi = null; // 이진파일을 가져올 참조변수
		
		multi = new MultipartRequest(request, saveFolder, fileSize, "UTF-8");
		
		String cate = multi.getParameter("cate");
		String detail_cate = multi.getParameter("detail_cate");
		String store_name = multi.getParameter("store_name");
		String store_intro = multi.getParameter("store_intro");
		String store_addr1 = multi.getParameter("store_addr1");
		String store_addr2 = multi.getParameter("store_addr2");
		String reg_num = multi.getParameter("reg_num");
		
		File logo_image = multi.getFile("logo_image");
		
		if(logo_image != null) {
			String fileName = logo_image.getName();
			Calendar cal = Calendar.getInstance();
			int year = cal.get(Calendar.YEAR);
			int month = cal.get(Calendar.MONTH)+1;
			int date = cal.get(Calendar.DATE);
			
			String homedir = saveFolder+"/"+year+"-"+month+"-"+date;
			File path01 = new File(homedir);
			
			if(!(path01.exists())) {
				path01.mkdir();
			}
			Random r = new Random();
			int random = r.nextInt(100000000);
			
			int index = fileName.lastIndexOf(".");
			
			String fileExtendsion = fileName.substring(index+1);
			String refileName = cate + "logo" + year + month + date + random + "." +  fileExtendsion;
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			logo_image.renameTo(new File(homedir + "/" + refileName));
			
			s.setStore_logo(fileDBName);
		}
		
		s.setCate(cate);
		s.setDetail_cate(detail_cate);
		s.setReg_num(reg_num);
		s.setStore_addr1(store_addr1);
		s.setStore_addr2(store_addr2);
		s.setStore_intro(store_intro);
		s.setStore_name(store_name);
		s.setStore_num(1251); 	// 시퀀스 값이 들어갈거라 스퀀스 생성 후에는 삭제될 내용
		
		ceoService.insertStore(s);
		
		return new ModelAndView("redirect:/");
	}
	
	
//	// 사진 출력을 위한 테스트 페이지
//	@GetMapping("/test")
//	public ModelAndView ceo_test(StoreDTO s) {
//		
//		ModelAndView mav = new ModelAndView();
//		int store_num = 3;
////		s = ceoService.getCont(store_num);
//		
//		mav.addObject("s", s);
//		mav.setViewName("ceo/ceo_test");
//		return mav;
//	} 잘 되는거 확인
	
	
	
}


































