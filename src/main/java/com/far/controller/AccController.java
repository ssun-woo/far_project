
package com.far.controller;

import java.io.PrintWriter;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.far.dto.JJimDTO;
import com.far.dto.ReviewDTO;
import com.far.dto.RoomDTO;
import com.far.dto.StoreDTO;
import com.far.service.AccResvService;
import com.far.service.CeoService;
import com.far.service.JJimService;
import com.far.service.RecommendService;
import com.far.service.ReviewService;
import com.far.service.StoreService;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/acc")
public class AccController {

   @Autowired
   private AccResvService accResvService;


   @Autowired
   private ReviewService reviewService;
   
   @Autowired
   private JJimService jjimService;
   
   @Autowired
   private RecommendService recommendService;
   


   @Autowired
   private StoreService storeService;

   @Autowired
   private CeoService ceoService;


   // 숙소 상세 카테고리 페이지
   @RequestMapping("/cate_list")
   public ModelAndView acc_list(HttpServletRequest request) {
      Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
      String id = authentication.getName();
      
      System.out.println(id);
      ModelAndView mav = new ModelAndView("acc/acc_index");
      return mav;
   }

	// 세부 카테 클릭 시 출력되는 목록
	@RequestMapping("/list")
	public ModelAndView acc_hotel(HttpServletRequest request, HttpSession session, Model model, @RequestParam(defaultValue = "0") int page) {
	    
		
		// 버튼을 눌러서 엄어올때는 여기에 값
		String detailCate = request.getParameter("detail_cate");
		
	    String cate = request.getParameter("cate");
	    String keyword = request.getParameter("keyword");
	    String memId = request.getParameter("memId");
	    int countStore = -1;
	    Map<String, String> map = new HashMap<>();
	    if(keyword == null) {
	    	countStore = storeService.countStore(detailCate);
	    }else {
	    	map.put("cate", cate);
	    	map.put("keyword", keyword);
	    	countStore = storeService.countStore2(map);
	    }
	    
	    System.out.println("detailCate : " + detailCate);
	    ModelAndView mav = new ModelAndView();
	    List<StoreDTO> storePage = storeService.storeList(detailCate);
	    Map<Integer, Integer> lowPrice = new HashMap<>();
	    Map<Integer, Integer> reviewCount = new HashMap<>();
	    Map<Integer, Float> score = new HashMap<>(); 
	    
	    if(storePage.size() != 0) {
	    	for(StoreDTO s : storePage) {
		    	// System.out.println("어떤식으로 나옴 : " + s);
		    	// System.out.println("이런것도됨? " + s.getStoreNum());
		    	int lowerPrice = 0;
	    		lowerPrice = storeService.getLowerPrice(s.getStoreNum());
		    	lowPrice.put(s.getStoreNum(), lowerPrice);
//		    	int reviewCount2 = storeService.getReviewCount(s.getStoreNum());
//		    	reviewCount.put(s.getStoreNum(), reviewCount2);
//		    	
//		    	Float starScore = storeService.getStarScore(s.getStoreNum());
//		    	score.put(s.getStoreNum(), starScore);
		    }
	    }
	    
	    mav.addObject("list", storePage);
	    mav.addObject("countStore", countStore);
	    System.out.println("memId = " + memId);
	    mav.setViewName("acc/acc_list");
	    mav.addObject("lowPrice", lowPrice);
	    return mav;
}
	
	
	// 상품 상세보기
	   @RequestMapping("/cont")
	   public ModelAndView acc_cont(HttpServletRequest request) {
	      Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	      String id = authentication.getName();
	      String detail_cate = request.getParameter("detail_cate"); // 현재 cate 받아옴
	      String cate = request.getParameter("cate"); // 현재 cate 받아옴
	      int store_num = Integer.parseInt(request.getParameter("store_num"));
	      StoreDTO s = accResvService.getInfo(store_num);
	      List<RoomDTO> mList = ceoService.getMenuList(store_num);
	      List<ReviewDTO> rlist = reviewService.getReview(store_num);
	      JJimDTO jdto = new JJimDTO();
	      jdto.setMemId(id);
	      jdto.setStoreNum(store_num);
	      ModelAndView mav = new ModelAndView();
	      
	      String apiKey = "63488539fa3cb14291f2f4756789b058";
			String query = s.getStoreAddr1();
			String apiUrl = "https://dapi.kakao.com/v2/local/search/address.json?query=" + query;
			HttpHeaders headers = new HttpHeaders();
			headers.set("Authorization", "KakaoAK " + apiKey);
			HttpEntity<String> entity = new HttpEntity<>(headers);
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<String> response = restTemplate.exchange(apiUrl, HttpMethod.GET, entity, String.class);
			if (response.getStatusCodeValue() == 200) {
				try {
					String responseBody = response.getBody();
					ObjectMapper objectMapper = new ObjectMapper();
					JsonNode jsonNode = objectMapper.readTree(responseBody);
					double latitude = jsonNode.get("documents").get(0).get("y").asDouble();
					double longitude = jsonNode.get("documents").get(0).get("x").asDouble();
					mav.addObject("lat", latitude);
					mav.addObject("lon", longitude);

				} catch (Exception e) {
				}
			} else {
				System.out.println("API 호출 실패: " + response.getStatusCodeValue());
			}

			int count = jjimService.getCount(jdto);
			System.out.println("JJim_count: " + count);
			ReviewDTO rdto = new ReviewDTO();
			rdto.setStoreNum(store_num);
			int review_count = reviewService.getReivewCount(rdto);
			for (RoomDTO m : mList) {
				m.setCheckIn(m.getCheckIn().substring(0, 2) + ":" + m.getCheckIn().substring(2, 4));
				m.setCheckOut(m.getCheckOut().substring(0, 2) + ":" + m.getCheckOut().substring(2, 4));
			}
			String region = s.getStoreAddr1().substring(0, 2);
			String sebu_cate = null;
			if (s.getDetailCate().equals("hotel")) {
				sebu_cate = "호텔";
			} else if (s.getDetailCate().equals("motel")) {
				sebu_cate = "모텔";
			} else if (s.getDetailCate().equals("camping")) {
				sebu_cate = "캠핑";
			} else {
				sebu_cate = "팬션";
			}

			mav.addObject("detail_cate", detail_cate);
			mav.addObject("s", s);
			mav.addObject("store_num", store_num);
			mav.addObject("region", region);
			mav.addObject("sebu_cate", sebu_cate);
			mav.setViewName("acc/acc_cont");
			mav.addObject("mList", mList);
			mav.addObject("cate", cate);
			mav.addObject("JJim", count);
			mav.addObject("review_count", review_count);
			mav.addObject("reviewList", rlist);
			return mav;
	   }

		@PreAuthorize("hasRole('Role_m') or hasRole('Role_c')")
		@PostMapping("/cont/jjim")
		public String jjim_btn(HttpServletRequest request, String memId) {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			String id = authentication.getName();
			int store_num = Integer.parseInt(request.getParameter("store_num"));
			String jjim = request.getParameter("jjim");

			JJimDTO jdto = new JJimDTO();
			jdto.setMemId(id);
			jdto.setStoreNum(store_num);

			if (id != "anonymousUser") {
				jjimService.setJJim(jdto);
			}
			String cate = request.getParameter("cate");
			System.out.println("jjim : " + jjim);
			return "redirect:/acc/cont?detail_cate=" + cate + "&store_num=" + store_num;
		}
   
   //찜 삭제
   @PostMapping("/cont/jjim_del")
   public String jjim_del_btn(HttpServletRequest request) {
      int store_num = Integer.parseInt(request.getParameter("store_num"));
      String cate = request.getParameter("sebu_cate");
      Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
      String id = authentication.getName();
      

      JJimDTO jdto = new JJimDTO();
      jdto.setMemId(id);
      jdto.setStoreNum(store_num);
      jjimService.delJJim(jdto);
      
      return "redirect:/acc/cont?detail_cate="+cate+"&store_num="+store_num;
   }

   
   //리뷰등록
   @PostMapping("/cont/review")
   public String acc_reviewForm(HttpServletRequest request,ReviewDTO rdto) {
      
      Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
      String id = authentication.getName();
      System.out.println(id);
      
      int store_num = Integer.parseInt(request.getParameter("store_num"));
      String cate = request.getParameter("detail_cate");
      System.out.println("detail_cate : " + cate);
      
      rdto.setMemId(id);
      rdto.setStoreNum(store_num);
      
   
      reviewService.setReview(rdto);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("detail_cate", cate);
      
      return "redirect:/acc/cont?detail_cate="+cate+"&store_num="+store_num;
   }


   
   //리뷰 삭제
    @RequestMapping("/cont/delete")
    public ModelAndView delete_review(HttpServletRequest request) {
       
       Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
         String id = authentication.getName();
         System.out.println(id);
       
       int reviewNum = Integer.parseInt(request.getParameter("reviewNum"));
       String store_num  = request.getParameter("store_num");
      String cate = request.getParameter("cate");
       
       System.out.println(cate);
       System.out.println(store_num);
//       System.out.println(review_num);
       
       reviewService.delReview(reviewNum);
       
       
       
       return new ModelAndView("redirect:/acc/cont?detail_cate=" + cate + "&store_num="+ store_num);
    }
    
    //리뷰 수정폼 이동
    @RequestMapping("/cont/edit")
    public ModelAndView edit_review(HttpServletRequest request, @RequestParam(defaultValue = "0") int page) {
       Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
       String id = authentication.getName();
       
       System.out.println(id);
       int reviewNum = Integer.parseInt(request.getParameter("reviewNum"));
       String store_num = request.getParameter("storeNum");
       String cate = request.getParameter("cate");
       
      //reviewService.editReview(review_num);
       ReviewDTO dto = reviewService.getUpdateReview(reviewNum);
       String memId = dto.getMemId();
       String reviewDate = dto.getReviewDate();
       String reviewCont = dto.getReviewCont();
       double reviewRating = dto.getReviewRating();
       
       ModelAndView mav = new ModelAndView();
       mav.addObject("reviewNum", reviewNum);
       mav.addObject("reviewCont", reviewCont);
       mav.addObject("reviewRating", reviewRating);
       mav.addObject("memId", memId);
       mav.addObject("reviewDate", reviewDate);
       mav.addObject("storeNum",store_num);
       mav.addObject("cate", cate);
       mav.setViewName("acc/acc_review_edit");
      
       System.out.println(reviewDate);
       return mav;
       
       
      // return new ModelAndView("redirect:/acc/cont?cate=" + cate + "&store_num="+ store_num);
    }
    
    //리뷰 수정
    @RequestMapping("/cont/update")
    public ModelAndView update_review(HttpServletRequest request, ReviewDTO dto, @RequestParam(defaultValue = "0") int page, String cate){
       Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
       String id = authentication.getName();
       System.out.println(id);
       int reviewNum = Integer.parseInt(request.getParameter("reviewNum"));
       String store_num  = request.getParameter("store_num");
       //String cate = request.getParameter("cate");
       
       System.out.println(cate);
       System.out.println(store_num);
       System.out.println(reviewNum);
       
       reviewService.editReview(dto);
       
       return new ModelAndView("redirect:/acc/cont/edit?detail_cate=" + cate + "&store_num="+ store_num+"&reviewNum="+reviewNum+"&page="+page);
    }
   
      //추천 취소
    @RequestMapping(value = "/cont/recommend_del" , method = RequestMethod.POST)
      public ModelAndView updateRecommend_del(int reviewNum, String memId, HttpServletRequest request)throws Exception{
           Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
          String id = authentication.getName();
            int store_num = Integer.parseInt(request.getParameter("store_num"));
            String cate = request.getParameter("cate");
          
             System.out.println("리뷰 추천"+reviewNum+id);
             
          
             int recommendCheck = recommendService.recommendCheck(reviewNum,id);
            if(recommendCheck == 1) {
               //좋아요 처음누름
               
               if(id!="anonymousUser") {
                  
                  recommendService.insertRecommend(reviewNum, id); //like테이블 삽입
                  recommendService.updateRecommend(reviewNum);   //게시판테이블 +1
                  recommendService.updateRecommendCheck(reviewNum, id);//like테이블 구분자 1
                  
                  
               }
               
            }else if(recommendCheck == 0) {
               ModelAndView mav = new ModelAndView();
               recommendService.updateRecommendCheckCancel(reviewNum, id); //like테이블 구분자0
               recommendService.updateRecommendCancel(reviewNum); //게시판테이블 - 1
               recommendService.deleteRecommend(reviewNum, id); //like테이블 삭제
               mav.addObject("recommendCheck",recommendCheck);
            
            }
            System.out.println("recommendCheck"+recommendCheck);
            
            ModelAndView mav = new ModelAndView();
            mav.addObject("recommendCheck",recommendCheck);
            mav.setViewName("redirect:/acc/cont?detail_cate="+cate+"&store_num="+store_num);
         
            
            //return null;
            
            //return recommendCheck;
            
            return mav;
      }
    
    
       //리뷰 추천
      @RequestMapping(value = "/cont/recommend" , method = RequestMethod.POST)
      public ModelAndView updateRecommend(int reviewNum, String memId, HttpServletRequest request, @RequestParam(defaultValue = "0") int page)throws Exception{
           Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
          String id = authentication.getName();
            int store_num = Integer.parseInt(request.getParameter("store_num"));
            String cate = request.getParameter("cate");
          
             System.out.println("리뷰 추천"+reviewNum+id);
             
          
             int recommendCheck = recommendService.recommendCheck(reviewNum,id);
            if(recommendCheck == 0) {
               //좋아요 처음누름
               
               if(id!="anonymousUser") {
                  
                  recommendService.insertRecommend(reviewNum, id); //like테이블 삽입
                  recommendService.updateRecommend(reviewNum);   //게시판테이블 +1
                  recommendService.updateRecommendCheck(reviewNum, id);//like테이블 구분자 1
                  
                  
               }
               
            }else if(recommendCheck == 1) {
               ModelAndView mav = new ModelAndView();
               recommendService.updateRecommendCheckCancel(reviewNum, id); //like테이블 구분자0
               recommendService.updateRecommendCancel(reviewNum); //게시판테이블 - 1
               recommendService.deleteRecommend(reviewNum, id); //like테이블 삭제
               mav.addObject("recommendCheck",recommendCheck);
            
            }
            System.out.println("recommendCheck"+recommendCheck);
            
            ModelAndView mav = new ModelAndView();
            mav.addObject("recommendCheck",recommendCheck);
            mav.setViewName("redirect:/acc/cont?detail_cate="+cate+"&store_num="+store_num+"&page="+page);
         
            
            //return null;
            
            //return recommendCheck;
            
            return mav;
      }
      
      
      


   // 숙소 결제페이지 이동
   @RequestMapping("/payment_info")
   public ModelAndView acc_payment_info(String cate, int store_num, HttpSession session, HttpServletResponse response,
         String target) throws Exception {
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      store_num = 10;
      if (session.getAttribute("memId") == null) {
         out.println("<script>");
         out.println("alert('로그인이 필요한 기능입니다');");
         out.println("location = '/login?target=/acc/payment_info?cate=" + cate + "&store_num=" + store_num + "'");
         out.println("</script>");
      } else {
         ModelAndView mav = new ModelAndView();
         mav.setViewName("payment/payment");
         mav.addObject("cate", cate);
         mav.addObject("store_num", 10);

         return mav;
      }
      return null;

   }


      
   
   private String extractDate(String input) {
      String[] parts = input.split(" ");
      for (String part : parts) {
         if (part.matches("\\d{2}-\\d{2}")) {
            return part;
         }
      }
      return null; // 날짜를 찾지 못한 경우
   }
   
   @RequestMapping("/reload_menu")
   public ModelAndView acc_reload_menu(HttpServletRequest request) {
      
      String date = request.getParameter("date");
      int totalCount = Integer.parseInt(request.getParameter("totalCount"));
      int store_num = Integer.parseInt(request.getParameter("store_num"));
      String date1 = extractDate(date);
      String date2 = extractDate(date.substring(date.indexOf("~") + 1));
      Calendar cal = Calendar.getInstance();
      int year = cal.get(Calendar.YEAR);
      String sdate = year + "-" + date1;
      
      if(Integer.parseInt(date1.substring(0,2)) > Integer.parseInt(date2.substring(0,2))) {
         year += 1;
      }
      String edate = year + "-" + date2;
      

//      System.out.println("store_num : " + store_num);
//      System.out.println("시작일: " + sdate);
//      System.out.println("끝일 : " + edate);
//      System.out.println("총인원 : " + totalCount);

      StoreDTO s = accResvService.getInfo(store_num);
      
      Map<String, Object> map = new HashMap<>();
      
      map.put("startDay", sdate);
      map.put("endDay", edate);
      map.put("totalPeople", totalCount);
      map.put("storeNum", store_num);
      
      List<RoomDTO> rlist = accResvService.getPossibleRoom(map);
      
      for(RoomDTO r : rlist) {
         String in_hour = r.getCheckIn().substring(0, 2);
         String in_min = r.getCheckIn().substring(2, 4);
         r.setCheckIn(in_hour + " : " + in_min);
         
         String out_hour = r.getCheckOut().substring(0, 2);
         String out_min = r.getCheckOut().substring(2, 4);
         r.setCheckOut(out_hour + " : " + out_min);
      }
      
//      System.out.println("size : " + rlist.size());
//      System.out.println("totalCount : " + totalCount);
      ModelAndView mav = new ModelAndView();
      mav.setViewName("acc/acc_reload_menu");
      mav.addObject("rlist", rlist);
      mav.addObject("s", s);
      
      
      return mav;
   }
   
   


}