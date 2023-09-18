<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header2.jsp"/>

<div class="myPageListwrap">
	<div class="myPageList">
		<ul>
			<li class="myPageListReservation" onclick="loadReservationPage()">예약 확인</li>
			<li class="myPageJjim" onclick="loadReservationPage2()">찜 목록</li>
			<li class="myPageInfo" onclick="loadReservationPage3()">내 정보 수정</li>
			<li class="myPagecs"><a href="../customer_service/cs_main.jsp">고객센터</a></li>
		</ul>
	</div>
	<div id="pageContent">
	<div class="myPageheader">
	<div class="myPageInclude_logo">
		<h2>예약 목록</h2>
		<select>
			<option>숙소</option>
			<option>식당</option>
			<option>문화</option>
			<option>뷰티</option>
		</select>
	</div>
	</div>
		<hr>
	<div class="chk_list">	
		<a href='#'><img class="chk_img" src="../images/acc/hotel1-1.jpg"></a>
	<div class="chk_cont">
		<div>
			<h3>서머셋 팰리스</h3>		
		</div>
			<p>서울특별시 종로구 율곡로2길 7</p>
			<br>
			<p>예약 품목</p>
		</div>
		<div class="chk_cont2">
			<h2>183,500원</h2>
			<p>예약 상태</p>
		</div>
	</div>
	</div>
</div>

<jsp:include page="../main/footer.jsp"/>

<script src="../js/myPage.js">
</script>