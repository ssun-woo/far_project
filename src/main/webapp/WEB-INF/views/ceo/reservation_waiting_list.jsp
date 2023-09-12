<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- <jsp:include page="../main/header.jsp"/> -->

<!-- 대기 예약 보기 -->

<script src="../js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="../css/reservation_waiting_list.css">

<div class="reservationWaitTable">
	<table border="1">
		<tr>
			<th colspan="7">대기 예약 목록</th>
		</tr>
		<tr>
			<th>예약 번호</th>
			<th>예약 ID</th>
			<th>고객명</th>
			<th>예약 메뉴</th>
			<th>예약 날짜</th>
			<th>비고</th>
			<th>지불 금액</th>
		</tr>
		<tr>
			<td>2023080100001</td>
			<td>hong11</td>
			<td>홍길동</td>
			<td>1202호</td>
			<td>2023-08-05</td>
			<td>2023-08-09</td>
			<td>300,000원</td>
		</tr>
		<tr>
			<td>2023080100002</td>
			<td>hong22</td>
			<td>김길동</td>
			<td>1302호</td>
			<td>2023-08-05</td>
			<td>2023-08-10</td>
			<td>400,000원</td>
		</tr>
		<tr>
			<td>2023080100003</td>
			<td>hong33</td>
			<td>고길동</td>
			<td>1402호</td>
			<td>2023-08-06</td>
			<td>2023-08-11</td>
			<td>500,000원</td>
		</tr>
		<%-- DB 연결 --%>
		<%-- 
			<tr>
				<td><%= reservation.getReservationNum() %></td>
				<td><%= reservation.getCustomerId() %></td>
	            <td><%= reservation.getCustomerName() %></td>
	            <td><%= reservation.getReservationRoom() %></td>
	            <td><%= reservation.getCheckInDate() %> / <%= reservation.getCheckOutDate() %></td>
	            <td><%= reservation.getPayment() %></td>
	        </tr>
	         --%>
		<%-- 예약 내역 있/없
		<c:if test="${!empty rlist}">
			<c:forEach var="r" items="${rlist}">
				<tr>
					<td>${r.reservationNum}</td>
					<td>${r.customerId}</td>
					<td>${r.customerName}</td>
					<td>${r.reservationRoom}</td>
					<td>${r.checkinDate}</td>
					<td>${r.checkoutDate}</td>
					<td>${r.payment}</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty rlist}">
			<tr>
				<th colspan="7">예약 내역이 존재하지 않습니다.</th>
			</tr>
		</c:if>
		 --%>
		 
		<!-- 페이징 -->
	</table>
</div>

<!-- <jsp:include page="../main/footer.jsp"/> -->