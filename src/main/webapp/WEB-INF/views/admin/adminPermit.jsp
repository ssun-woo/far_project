<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<section class="menu_cont">
			<h3 class="adTitle">입점 승인 </h3>
			<div class="cate_cont">
				<table class="table table-hover">
					<thead>
					<tr>
						<th id="no">번호</th>
						<th id="shop">가게명</th>
						<th id="cate">업종</th>
						<th id="name">신청자</th>
						<th id="check">승인 여부</th>
						<th id="confirm">확인</th>
					</tr>
					</thead>
					<c:forEach var="permit" items="${permitList}">
						<form name="submitPermit" action="storeOKList" method="post">
							<tr>
								<td><input type="hidden" name="storeNum"
									value="${permit.storeNum}">${permit.storeNum}</td>
								<td><input type="hidden" name="storeName"
									value="${permit.storeName}">${permit.storeName}</td>
								<td><input type="hidden" name="cate" value="${permit.cate}">${permit.cate}(${permit.detailCate})</td>
								<td><input type="hidden" name="memId"
									value="${permit.memId}">${permit.memId}</td>
								<td><input type="radio" name="oorx" value="accept">
									승인 <input type="radio" name="oorx" value="denied"> 거부</td>
								<td><input type="submit" name="action" value="확인">
							</tr>
						</form>
					</c:forEach>
				</table>
			</div>
		</section>
	</div>
</main>
