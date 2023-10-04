<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="admin_header.jsp" />

<main class="admin_main">
	<div class="container-fluid">
		<div class="menu">
			<div class="menu_title">
				<h4>메뉴</h4>
				<br>
			</div>
			<div class="menu_main">
				<ul class="menu_ceo list-group list-group-flush ">
					<li class="list-group-item list-group-item-secondary">
						<h4>회원관리 (CEO)</h4>
					</li>
					<li class="list-group-item"><a href="/admin/storePermit"
						class="menu_button">입점승인</a></li>
					<li class="list-group-item"><a href="/admin/storeShutdown"
						class="menu_button">폐점승인</a></li>
					<li class="list-group-item"><a href="#" class="menu_button">가게
							정보 수정</a></li>
					<li class="list-group-item"><a href="/admin/storeList"
						class="menu_button">회원 목록</a></li>
				</ul>

				<ul class="menu_nal list-group list-group-flush">
					<li class="list-group-item list-group-item-secondary">
						<h4>회원관리 (일반)</h4>
					</li>
					<li class="list-group-item"><a href="/admin/adminMemList"
						class="menu_button">회원목록</a></li>
				</ul>

				<ul class="menu_qna list-group list-group-flush">
					<li class="list-group-item list-group-item-secondary">
						<h4>고객센터 관리</h4>
					</li>
					<li class="list-group-item text-dark"><a href="#"
						class="menu_button" onClick="review_report()">불량리뷰 신고</a></li>
					<li class="list-group-item"><a href="#" class="menu_button"
						onClick="QnA_member()">문의 (일반)</a></li>
					<li class="list-group-item text-dark"><a href="#"
						class="menu_button" onClick="QnA_ceo()">문의 (CEO)</a></li>
				</ul>
				<ul class="maun_notice list-group list-group-flush">
					<li class="list-group-item list-group-item-secondary">
						<h4>공지등록</h4>
					</li>
					<li class="list-group-item"><a href="#" class="menu_button"
						onClick="member_notice()">일반 공지등록</a></li>
					<li class="list-group-item"><a href="#" class="menu_button"
						onClick="ceo_notice()">CEO 공지등록</a></li>
				</ul>
				<ul class="menu_event list-group list-group-flush">
					<li class="list-group-item list-group-item-secondary">
						<h4>이벤트등록</h4>
					</li>
					<li class="list-group-item"><a href="#" class="menu_button"
						onClick="new_event()">이벤트등록</a></li>
				</ul>
				<ul class="menu_cop list-group list-group-flush">
					<li class="list-group-item list-group-item-secondary">
						<h4>쿠폰</h4>
					</li>
					<li class="list-group-item"><a href="/admin/adminCouponRegis"
						class="menu_button">쿠폰등록</a></li>
					<li class="list-group-item"><a href="/admin/adminCouponList"
						class="menu_button">쿠폰목록</a></li>
				</ul>
			</div>
		</div>
		<div class="adMemListSection">
			<h4 class="adTitle">일반 회원 목록</h4>
			<div class="adMemListTable">
				<table class="table table-hover">
					<thead>
						<tr>
							<th style="width: 10%">이름</th>
							<th style="width: 20%">아이디</th>
							<th style="width: 10%">연락처</th>
							<th style="width: 20%">메일</th>
						</tr>
					<thead>
						<c:if test="${!empty memList}">
							<c:forEach var="mem" items="${memList}">
								<tr>
									<td>${mem.memName}</td>
									<td>${mem.memId}</td>
									<td>${mem.memTel}</td>
									<td>${mem.memEmail}</td>
								</tr>
							</c:forEach>
						</c:if>

						<c:if test="${empty memList}">
							<tr style="text-align: center;">
								<td colspan="4">일반 회원이 존재하지 않습니다.</td>
							</tr>
						</c:if>
				</table>
			</div>
		</div>
	</div>
</main>

<jsp:include page="admin_footer.jsp" />