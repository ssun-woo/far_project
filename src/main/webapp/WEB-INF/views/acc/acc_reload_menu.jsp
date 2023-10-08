<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${!empty rlist}">
<c:forEach var="m" items="${rlist}">
	<div class="room_list">
		<img src="/upload/store_menu/${s.cate}${m.roomPhoto}">
		<div class="room_info">
			<div class="booking_button">
				<h2>${m.roomName}</h2>
				<form method="post" action="/payment" onclick="return false;">
					<input type="submit" value="예약" onclick="changeValues('${m.roomNum}');"> 
					<input type="hidden" id="date2" name="date2" value=""> 
					<input type="hidden" id="totalCount" name="totalCount" value="">
					<input type="hidden" id="roomNum" name="roomNum" value="">
				</form>
			</div>
			<div class="room_detailinfo">
				<h4 class="check_in_out">체크인 ${m.checkIn} <br>체크아웃 ${m.checkOut}</h4>
				<p>기준인원 ${m.standardNum}인 / 최대인원 ${m.maxNum}인</p>
				<p>영유아 포함 최대인원을 초과하여 입실이 불가합니다.</p>
				<p>${m.roomPrice}</p>
			</div>

		</div>
	</div>
</c:forEach>
</c:if>
<c:if test="${empty rlist}">
<div class="room_list">
	<h2>예약 가능한 방이 없습니다</h2>
</div>
</c:if>

