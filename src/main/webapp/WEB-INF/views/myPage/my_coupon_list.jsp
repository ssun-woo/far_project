<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%-- <jsp:include page="../main/new_header2.jsp"/> --%>

<!-- 뷰페이지 연결 X -->
<form>
	<table border="1" class="my_coupon_list table table-hover">
		<thead>
		<tr class="cp_list_center">
			<th colspan="3">보유 중인 쿠폰 목록</th>
		</tr>
		
		<tr>
			<th>쿠폰 이름</th>
			<th >쿠폰 발급일</th>
			<th >쿠폰 만료일</th>
		</tr>
		</thead>
		<c:if test="${!empty cplist}">
			<c:forEach var="cp" items="${cplist}">
				<tr>
					<td><span style="margin-left: 10px; color: black;">${cp.coupon_name}</span></td>
					<td style="text-align: center;">${cp.coupon_startDate}</td>
					<td style="text-align: center;">${cp.coupon_endDate}</td>
				</tr>
			</c:forEach>
		</c:if>
		
		<c:if test="${empty cplist}">
			<tr class="cp_list_center">
				<td colspan="3">보유 중인 쿠폰이 없습니다.</td>
			</tr>
		</c:if>
	</table>
</form>


<%-- <jsp:include page="../main/footer.jsp"/> --%>

<script src="../js/myPage.js">
</script>