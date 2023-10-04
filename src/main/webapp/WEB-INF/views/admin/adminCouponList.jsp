<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
		<section class="adCouponListSection">
			<h4 class="adTitle">[쿠폰 목록]</h4>
			<div class="adCouponListTable">
				<table class="table table-hover">
					<tr>
						<th id="adCouponName">쿠폰 이름</th>
						<th id="adCouponDiscountrate">할인율</th>
						<th id="adCouponDate">사용 가능 기간</th>
					</tr>

					<c:if test="${!empty couponList}">
						<c:forEach var="coupon" items="${couponList}">
							<tr>
								<td style="width: 150px;">${coupon.couponName}</td>

								<td style="width: 100px;">
									<%-- % 할인이면 백분율로 소수점 한 자리까지, 금액 할인이면 소수점 없이 보이도록 --%> <c:choose>
										<c:when test="${coupon.couponDiscountrate < 1}">
											<fmt:formatNumber value="${coupon.couponDiscountrate}"
												maxFractionDigits="1" />
										</c:when>
										<c:otherwise>
											<fmt:formatNumber value="${coupon.couponDiscountrate}"
												maxFractionDigits="0" />
										</c:otherwise>
									</c:choose>
								</td>

								<td style="width: 250px;">
									<%-- String -> Date 날짜 포맷 변경 --%> <fmt:parseDate
										value="${coupon.couponStartDate}" var="couponStartDate"
										pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
										value="${couponStartDate}" pattern="yyyy-MM-dd" /> ~ <fmt:parseDate
										value="${coupon.couponEndDate}" var="couponEndDate"
										pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
										value="${couponEndDate}" pattern="yyyy-MM-dd" />
								</td>
							</tr>
						</c:forEach>
					</c:if>

					<c:if test="${empty couponList}">
						<tr>
							<td colspan="3">쿠폰이 존재하지 않습니다.</td>
						</tr>
					</c:if>
				</table>
			</div>
		</section>

	</div>
</main>
<jsp:include page="admin_footer.jsp" />