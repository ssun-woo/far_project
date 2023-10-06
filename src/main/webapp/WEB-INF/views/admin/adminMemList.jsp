<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="admin_header.jsp" />

<main class="admin_main">
	<div class="container-fluid">
		<div class="menu">
			
			<div class="menu_main">
				<ul class="menu_ceo list-group list-group-flush ">
						<li class="list-group-item list-group-item-secondary">
							<h4>회원관리 (CEO)</h4>
						</li>
						<li class="list-group-item"><a href="/admin/storePermit"
							class="menu_button">입점승인</a></li>
						<li class="list-group-item"><a href="/admin/storeShutdown"
							class="menu_button">폐점승인</a></li>
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