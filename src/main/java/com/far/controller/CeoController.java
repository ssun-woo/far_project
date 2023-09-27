
package com.far.controller;

import java.io.File;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.far.dto.RoomDTO;
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
	public ModelAndView ceo_index() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String id = authentication.getName();
		//id = "sunwoo"; // 일단 결과를 위해 하드코딩 한 부분, 나중에 없애야 함
		System.out.println(id);
		List<StoreDTO> slist = ceoService.getStores(id);
		ModelAndView mav = new ModelAndView("ceo/ceo_index");
		mav.addObject("slist", slist);
		return mav;
	}

	// ceo 가게 등록 페이지 이동
	@GetMapping("/store_regi")
	public ModelAndView ceo_store_regi() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String id = authentication.getName();
		id = "sunwoo"; // 일단 결과를 위해 하드코딩 한 부분, 나중에 없애야 함
		System.out.println(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ceo/ceo_store_reg");
		return mav;
	}

	@PostMapping("/store_regi_ok")
	public ModelAndView ceo_store_regi_ok(StoreDTO s, HttpServletRequest request) throws Exception {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String id = authentication.getName();
		//id = "sunwoo"; // 일단 결과를 위해 하드코딩 한 부분, 나중에 없애야 함
		String saveFolder = request.getRealPath("upload/store_logo"); // 이진 파일 업로드 서버 경로
		int fileSize = 5 * 1024 * 1024; // 이진파일 업로드 최대크기
		MultipartRequest multi = null; // 이진파일을 가져올 참조변수

		multi = new MultipartRequest(request, saveFolder, fileSize, "UTF-8");

		String cate = multi.getParameter("cate");
		String detailCate = multi.getParameter("detailCate");
		String storeName = multi.getParameter("storeName");
		String storeIntro = multi.getParameter("storeIntro");
		String storeAddr1 = multi.getParameter("storeAddr1");
		String storeAddr2 = multi.getParameter("storeAddr2");
		String regNum = multi.getParameter("regNum");

		File logoImage = multi.getFile("logoImage");

		if (logoImage != null) {
			String fileName = logoImage.getName();
			Calendar cal = Calendar.getInstance();
			int year = cal.get(Calendar.YEAR);
			int month = cal.get(Calendar.MONTH) + 1;
			int date = cal.get(Calendar.DATE);

			String homedir = saveFolder + "/" + year + "-" + month + "-" + date;
			File path01 = new File(homedir);

			if (!(path01.exists())) {
				path01.mkdir();
			}
			Random r = new Random();
			int random = r.nextInt(100000000);

			int index = fileName.lastIndexOf(".");

			String fileExtendsion = fileName.substring(index + 1);
			String refileName = cate + "logo" + year + month + date + random + "." + fileExtendsion;
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			logoImage.renameTo(new File(homedir + "/" + refileName));

			s.setStoreLogo(fileDBName);
		}

		s.setMemId(id);
		s.setCate(cate);
		s.setDetailCate(detailCate);
		s.setRegNum(regNum);
		s.setStoreAddr1(storeAddr1);
		s.setStoreAddr2(storeAddr2);
		s.setStoreIntro(storeIntro);
		s.setStoreName(storeName);

		ceoService.insertStore(s);

		return new ModelAndView("redirect:/ceo/index");
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
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String id = authentication.getName();
		//id = "sunwoo"; // 일단 결과를 위해 하드코딩 한 부분, 나중에 없애야 함
		List<StoreDTO> sList = ceoService.getStores(id);
		ModelAndView mav = new ModelAndView();
		System.out.println(sList.size());
		mav.setViewName("ceo/store_list");
		mav.addObject("slist", sList);
		return mav;
	}

	
	// 가게 관리 - 메뉴 관리 페이지 호출
	@GetMapping("/store_menu_list")
	public ModelAndView loadStoreMenuRegis(String store_num) {

		int s_num = Integer.parseInt(store_num);
		List<RoomDTO> mlist = ceoService.getMenuList(s_num);
		
		for(RoomDTO r : mlist) {
			System.out.println("방이름 : "  + r.getRoomName());
			
		}

		StoreDTO s = ceoService.getStore(s_num);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("ceo/store_menu_list");
		mav.addObject("mlist", mlist);
		mav.addObject("s", s);

		return mav;
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
	public ModelAndView ceo_store_menu_regis_ok(RoomDTO m, HttpServletRequest request) throws Exception {
		MultipartRequest multi = null; // 이진파일을 가져올 참조변수

		int fileSize = 5 * 1024 * 1024; // 이진파일 업로드 최대크기
		String saveFolder = request.getRealPath("upload/store_menu/"); // 이진 파일 업로드 서버 경로
		multi = new MultipartRequest(request, saveFolder, fileSize, "UTF-8");

		int store_num = Integer.parseInt(multi.getParameter("storeNum"));
		String cate = ceoService.getCate(store_num);
		String detail_cate = ceoService.getDetail_Cate(store_num);
		String menu_name = multi.getParameter("roomName");
		String menu_explain = multi.getParameter("roomExplain");
		int menu_price = Integer.parseInt(multi.getParameter("roomPrice"));
		
		int standard_num = Integer.parseInt(multi.getParameter("standardNum"));
		int max_num = Integer.parseInt(multi.getParameter("maxNum"));
		
		String check_in = multi.getParameter("check_in_hour") + multi.getParameter("check_in_min");
		String check_out = multi.getParameter("check_out_hour") + multi.getParameter("check_out_min");
		
		
		File upMenu = multi.getFile("roomPhoto");

		if (upMenu != null) {
			String fileName = upMenu.getName();
			String homedir = saveFolder + "/" + cate + "/" + store_num; // (upload/store_menu/카테이름/가게번호)
			File path01 = new File(homedir);

			if (!(path01.exists())) {
				path01.mkdir();
			}
			Random r = new Random();
			int random = r.nextInt(100000000);

			int index = fileName.lastIndexOf(".");

			String fileExtendsion = fileName.substring(index + 1);
			String refileName = detail_cate + random + "." + fileExtendsion;
			String fileDBName = "/" + store_num + "/" + refileName;
			upMenu.renameTo(new File(homedir + "/" + refileName));

			m.setRoomPhoto(fileDBName);
		} else {
			String fileDBName = "";
			m.setRoomPhoto(fileDBName);
		}
		m.setRoomName(menu_name);
		m.setRoomExplain(menu_explain);
		m.setRoomPrice(menu_price);
		m.setStoreNum(store_num);
		m.setCheckIn(check_in);
		m.setCheckOut(check_out);
		m.setMaxNum(max_num);
		m.setStandardNum(standard_num);

		ceoService.insertMenu(m);

		ModelAndView mav = new ModelAndView("redirect:/ceo/store_menu_list");
		mav.addObject("store_num", store_num);
		return mav;
	}

	// 메뉴 상세보기
	@GetMapping("/store_menu_cont")
	public ModelAndView store_menu_cont(int menu_id) {

		RoomDTO m = ceoService.getMenu(menu_id);
		StoreDTO s = ceoService.getStore(m.getStoreNum());
		
		String explain = m.getRoomExplain().replace("\n", "<br>");
		
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ceo/store_menu_cont");
		mav.addObject("m", m);
		mav.addObject("s", s);
		mav.addObject("explain", explain);
		
		return mav;
	}

	// 메뉴 삭제
	@RequestMapping("/store_menu_del")
	public ModelAndView store_menu_del(int menu_id, int store_num, HttpServletRequest request) throws Exception {
//		System.out.println(menu_id);
//		System.out.println(store_num);
		StoreDTO s = ceoService.getStore(store_num);
		RoomDTO m = ceoService.getMenu(menu_id);
		String delFolder = request.getRealPath("upload/store_menu/" + s.getCate());

		ceoService.delMenu(menu_id); // 메뉴삭제
		File delFile = new File(delFolder + m.getRoomPhoto());
		delFile.delete();

		ModelAndView mav = new ModelAndView("redirect:/ceo/store_menu_list?store_num=" + store_num);
		return mav;
	}

	// 가게 관리 - 소개글 및 정보 수정
	@GetMapping("/store_info_edit_list")
	public String loadStoreInfoEdit() {
		return "ceo/store_info_edit_list";
	}

	// 가게 관리 - 메뉴 수정
	@GetMapping("/store_menu_edit")
	public ModelAndView ceo_store_menu_edit(int menu_id, int store_num) {
		
		RoomDTO m = ceoService.getMenu(menu_id);
		StoreDTO s = ceoService.getStore(store_num);
		String explain = m.getRoomExplain().replace("<br>", "\n");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ceo/store_menu_edit");
		mav.addObject("m", m);
		mav.addObject("s", s);
		mav.addObject("explain", explain);
		return mav;
	}
	
	@PostMapping("/store_menu_edit_ok")
	public ModelAndView ceo_store_menu_edit_ok(RoomDTO m, HttpServletRequest request) throws Exception {
		String saveFolder = request.getRealPath("upload/store_menu");	// 이진 파일 업로드 서버 경로
		int fileSize = 5*1024*1024;	// 이진파일 업로드 최대크기
		MultipartRequest multi = null; // 이진파일을 가져올 참조변수
		
		multi = new MultipartRequest(request, saveFolder, fileSize, "UTF-8");
		
		int menu_id = Integer.parseInt(multi.getParameter("menu_id"));
		
		int store_num = Integer.parseInt(multi.getParameter("store_num"));
		String menu_name = multi.getParameter("menu_name");
		int menu_price = Integer.parseInt(multi.getParameter("menu_price"));
		String menu_explain = multi.getParameter("menu_explain");
		
		int isChecked = Integer.parseInt(multi.getParameter("isChecked"));
		System.out.println(isChecked);
		
		int standard_num = Integer.parseInt(multi.getParameter("standard_num"));
		int max_num = Integer.parseInt(multi.getParameter("max_num"));
		
		String check_in = multi.getParameter("check_in_hour") + multi.getParameter("check_in_min");
		String check_out = multi.getParameter("check_out_hour") + multi.getParameter("check_out_min");
		
		
		File menu_photo2 = multi.getFile("menu_photo2");
		System.out.println(menu_photo2);
		
		// 기존 객체를 구함
		RoomDTO mdto = ceoService.getMenu(menu_id);
		StoreDTO sdto = ceoService.getStore(store_num);
		
		if(menu_photo2 == null || isChecked == 1) { // 사진을 안올렸거나 기존과 동일을 체크한 경우
			m.setRoomPhoto(mdto.getRoomPhoto());
		}else {
			if(menu_photo2 != null) {
				String fileName = menu_photo2.getName();
				File delFile = new File(saveFolder + "/" + sdto.getCate() + "/" + mdto.getRoomPhoto());
				System.out.println(delFile);
				if(delFile.exists()) {
					delFile.delete();
				}
				String homedir = saveFolder + "/" + sdto.getCate() + "/" + store_num; // (upload/store_menu/카테이름/가게번호)
				File path01 = new File(homedir);

				if (!(path01.exists())) {
					path01.mkdir();
				}
				Random r = new Random();
				int random = r.nextInt(100000000);
				
				int index = fileName.lastIndexOf(".");
				String fileExtendsion = fileName.substring(index+1);
				
				String refileName = sdto.getDetailCate() + random + "." + fileExtendsion;
				String fileDBName = "/" + store_num + "/" + refileName;
				menu_photo2.renameTo(new File(homedir + "/" + refileName));
				m.setRoomPhoto(fileDBName);
			}
		}
		m.setRoomNum(menu_id);
		m.setStoreNum(store_num);
		m.setRoomName(menu_name);
		m.setRoomExplain(menu_explain);
		m.setRoomPrice(menu_price);
		m.setStandardNum(standard_num);
		m.setMaxNum(max_num);
		m.setCheckIn(check_in);
		m.setCheckOut(check_out);
		
		ceoService.editMenu(m);
		
		ModelAndView mav = new ModelAndView("redirect:/ceo/store_menu_list?store_num="+store_num);
		return mav;
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
			
			s.setStoreLogo(fileDBName);
		}
		
		s.setCate(cate);
		s.setDetailCate(detail_cate);
		s.setRegNum(reg_num);
		s.setStoreAddr1(store_addr1);
		s.setStoreAddr2(store_addr2);
		s.setStoreIntro(store_intro);
		s.setStoreName(store_name);
		s.setStoreNum(1251); 	// 시퀀스 값이 들어갈거라 스퀀스 생성 후에는 삭제될 내용
		
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

