<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

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


		<section class="menu_cont">
			<h3 class="adTitle">페점 승인 </h3>

			<div class="cate_cont">
				<table class="table table-hover">
					<thead>
						<tr>
							<th id="no">번호</th>
							<th id="shop">가게명</th>
							<th id="cate">업종</th>
							<th id="name">신청자</th>
							<th id="check">승인여부</th>
						</tr>
					</thead>

					<tr>
						<td>1</td>
						<td>가게1</td>
						<td>식당(한식)</td>
						<td>신청자</td>
						<td>접수 완료</td>
					</tr>
					<!-- 다른 테이블 로우 추가 -->

				</table>
			</div>


		</section>
	</div>
</main>