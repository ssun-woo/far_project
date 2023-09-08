<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header2.jsp" />


<div class="shop_cont">
	<div class="shop_name">
		<h2>[서울/호텔] 서머셋 팰리스</h2>
		<hr>
	</div>
	
	<div class="shop_cont_top">
		<div class="shop_photo">
			<img src="../images/acc/hotel1-1-1.jpg">
		</div>
		<div class= "shop_info">
			<ul class="info_cate">
				<li><h3>분류</h3></li>		
				<li><h3>상품평</h3></li>
				<li><h3>주소</h3></li>
				<li><h3>도로명주소</h3></li>
				<li><h3>할인혜택</h3></li>	
			</ul>
			<ul class="info_cont">
				<li><p>서울/등급미정/호텔</p></li>
				<li><p><a href="#">729개</a>의 상품평</p></li>
				<li><p>서울특별시 종로구 율곡로2길 7.<br><a href="#">지도보기</a></p></li>
				<li><p>서울특별시 종로구 율곡로 2길 7.</p></li>
				<li><p>전체 할인쿠폰 확인  &nbsp;&nbsp;<input type="button" value="쿠폰받기"></p></li>
			</ul>
		</div>
	</div>
	
	<div class="shop_info_event">
		<img src="../images/ev_images/cont_event01.png">
	</div>
	
	
	<!-- 내용 -->
	<div class="shop_info_cont">
		 <input type="radio" id="service" name="show" checked/>
  		 <input type="radio" id="information" name="show" />
  		 <input type="radio" id="cancellation" name="show" />
 		 <input type="radio" id="map" name="show" /> 
 		 <input type="radio" id="review" name="show" />
 		 
 		 <div class="tab">
   			<label for="service">메뉴</label>
    		<label for="information">정보</label>
    		<label for="cancellation">이용안내 / 취소규정</label>
    		<label for="map">지도</label>
    		<label for="review">이용후기</label>
 		 </div> 
 		 <hr>
 		 
 		 
 		 <div id="shop_content">
 			<div class="content-dis">
 				<div class="acc_room_list">
                      <h3>객실리스트</h3>
                      <hr>
                      <div class="room_list">
                      <img src="../images/acc/room01.png">
                            <div class="room_info">
                            	<div class="booking_button">
                            		<h2>studio room</h2>
                            			<input type="button" value="예약">
                            	</div>
                            			
                            	<div class="room_detailinfo">
                            		<h4>체크인  15:00  체크아웃 12:00</h4>
                            		<p>기준인원 2인 / 최대인원 2인</p>
                            		<p>영유아 포함 최대인원을 초과하여 입실이 불가합니다.</p>
                            	</div>
                            	
                            </div>
                          </div>
                    </div>
               </div>
    
    		<script src="/js/acc_cont.js"></script>
    		<script src="/js/popup.js"></script>
    		
	</div>
	
</div>
	
</div><!-- shop_cont -->	
	
<jsp:include page="../main/footer.jsp" />



  
