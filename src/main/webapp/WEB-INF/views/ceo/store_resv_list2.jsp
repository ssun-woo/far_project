<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="../js/store_main.js"></script>

<jsp:include page="ceo_header.jsp" />

<div id="contentArea">
	<div class="storeMainWrap">
		<div >
			<div id="storeContentArea">
				<form>
					<table class="table table-hover">
					<thead>
						<tr style="text-align: center;">
							<th colspan="5">예약 확인</th>
						</tr>
						<tr>
						
							<th>방 이름</th>
							
							<th>시작일</th>
							
							<th>마감일</th>
							
							<th>예약자 아이디</th>
							
							<th>예약자 번호</th>
							
						</tr>
					</thead>
						<tbody>
							<c:if test="${!empty rlist}">
								<c:forEach var="r" items="${rlist}" varStatus="loop">
									<tr>
										<td>${r.roomName}</td>
										<td>${r.startDay}</td>
										<td>${r.endDay}</td>
										<td>${r.memId}</td>
										<td>${memTel[r.memId]}</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty rlist}">
								<tr class="text-center">
									<td colspan="5">동록된 예약 정보가 존재하지 않습니다.</td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<jsp:include page="ceo_footer.jsp" />

