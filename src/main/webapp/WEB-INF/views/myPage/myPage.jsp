<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header2.jsp"/>

<div class="myPageListwrap">
	<div class="myPageList">
		<ul class="list-group list-group-flush">
			<li class="myPageListReservation list-group-item" onclick="loadReservationPage()">예약 확인</li>
			<li class="myPageJjim list-group-item" onclick="loadReservationPage2()">찜 목록</li>
			<li class="myPageInfo list-group-item" onclick="loadReservationPage3()">내 정보 수정</li>
			<li class="myPageCoupon list-group-item" onclick="loadReservationPage4()">내 쿠폰 목록</li>
			<li class="myPagecs list-group-item"><a href="../customer_service/cs_main.jsp">고객센터</a></li>
		</ul>
	</div>
	<div id="pageContent">
	<div class="myPageheader">
	<div>
		<div class="myPageInclude_logo">예약 내역</div>
		<div class="myPage_select">
		<select>
			<option>숙소</option>
			<option>식당</option>
			<option>문화</option>
			<option>뷰티</option>
		</select>
		</div>
	</div>
	</div>
		<hr>
	<div class="chk_list">
	<div class="chk_list_img">	
		<a href='#'><img class="chk_img" src="../images/acc/hotel1-1.jpg"></a>
	</div>
	<div class="chk_cont">
			<p>
			<h3>서머셋 팰리스</h3>		
		
			
			서울특별시 종로구 율곡로2길 7
			</p>
			
			<h5>
			예약 품목<br>
		
		
			183,500원
			</h5>
			<p><h5>예약 상태</h3></p>
			확정: 2023.09.09 - 2023.10.06
		
		</div>
	</div>
	</div>
</div>

<jsp:include page="../main/footer.jsp"/>

<script src="../js/myPage.js">
</script>