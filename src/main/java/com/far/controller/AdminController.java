package com.far.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.far.dto.CouponDTO;
import com.far.dto.MemberDTO;
import com.far.dto.StoreDTO;
import com.far.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	//어드민 메인페이지
	@RequestMapping("/index")
	public ModelAndView ceo_index() {
		return new ModelAndView("admin/admin_index");
	}
	
	// 어드민 입정 승인 페이지
	@RequestMapping("/storePermit")
	public String adminPermit(Model model) {
		int auth = 0;
		List<StoreDTO> permitList = adminService.storePermit(auth);
		model.addAttribute("permitList", permitList);
		return "admin/adminPermit";
	}
	
	// 어드민 폐점 승인 페이지
	@RequestMapping("/storeShutdown")
	public String adminShutdown() {
		return "admin/storeShutdown";
	}
	
	// 어드민 입점 여부 승인 페이지
	@PostMapping("/storeOKList")
	public String adminOK(HttpSession session, String storeNum, String oorx) {
		int acceptAuth = 1;
		int deniedAuth = 2;
		
		if(oorx.equals("accept")) {
		adminService.storeOK(storeNum);
		List<StoreDTO> permitOkList = adminService.storePermit(acceptAuth);
		session.setAttribute("permitOkList", permitOkList);
		return "redirect:/admin/storePermit";
		} else {
			adminService.storeDeniedSelect(storeNum);
			List<StoreDTO> permitOkList = adminService.storePermit(deniedAuth);
			session.setAttribute("permitOkList", permitOkList);
			return "redirect:/admin/storePermit";
		}
	}
	
	@GetMapping("/storeList")
	public String storeList(Model model) {
		int auth = 1;
		List<StoreDTO> permitOkList = adminService.storePermit(auth);
		model.addAttribute("permitOkList", permitOkList);
		return "admin/storeList";
	}
	
	// 일반 회원 목록
	@RequestMapping("/adminMemList")
	public String adminMemList(Model model) {
		String memClass = "Role_m";
		List<MemberDTO> memList = adminService.getMemList(memClass);
		model.addAttribute("memList", memList);
		return "admin/adminMemList";
	}
	
	// 쿠폰 등록 폼 이동
	@GetMapping("/adminCouponRegis")
	public String adminCouponRegis() {
		return "admin/adminCouponRegis";
	}
	
	// 쿠폰 등록, 등록되면 목록 페이지로
	@PostMapping("/adminCouponRegisOk")
	public ModelAndView adminCouponRegisOk(CouponDTO c) {	
		this.adminService.insertAdCoupon(c);
		return new ModelAndView("redirect:/admin/adminCouponList");
	}
	
	// 쿠폰 리스트
	@RequestMapping("/adminCouponList")
	public String adminCouponList(Model model) {
		List<CouponDTO> couponList = adminService.getCouponList();
		model.addAttribute("couponList", couponList);
		return "admin/adminCouponList";
	}

}
