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
		<div class="storeStickyArea">
			<div class="storeMain">
				<ul class="list-group list-group-flush">
					<li class="storeRegistrationMain list-group-item"
						onclick="location='/ceo/store_regi'"><strong>업체 등록</strong></li>
					<li class="storeMenuRegis list-group-item"
						onclick="location='/ceo/store_list'"><strong>메뉴</strong> 등록 및
						수정</li>
					<li class="storeInfoEdit list-group-item"
								onclick="location='/ceo/store_info_edit_list'"><strong>소개글</strong>
								및 정보 수정</li>
				</ul>
			</div>
		</div>
		<div class="container mt-4">
			<div id="storeContentArea">
				

					<section class="menuRegisForm">
						<h2><strong>${s.storeName}</strong></h2>
							<br>
						<table class="table table-hover">

							 <thead>
								<tr>
									<th style="width: 5%">no.</th>
									<th style="width: 25%">사진</th>
									<th style="width: 20%">이름</th>
									<th style="width: 10%">가격</th>
									<th style="width: 10%">관리</th>
								</tr>
							</thead>
								<c:if test="${!empty mlist}">
									<c:forEach var="m" items="${mlist}">
										<tr
											onclick="location='/ceo/store_menu_cont?menu_id=${m.roomNum}'">
											<td>${m.roomNum}</td>
											<td style="text-align: center;"><img
												src="/upload/store_menu/${s.cate}${m.roomPhoto}"></td>
											<td>${m.roomName}</td>
											<td><fmt:formatNumber type="currency" currencyCode="KRW"
													value="${m.roomPrice}" /></td>
											<td>수정 | 삭제</td>
										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${empty mlist}">
									<tr style="text-align: center;">
										<td colspan="5">등록된 메뉴가 없습니다.</td>
									</tr>
								</c:if>
						</table>


						<h1>

							<a href="/ceo/store_menu_regis?store_num=${s.storeNum}"
								class="btn btn-secondary">메뉴등록</a>

						</h1>

					</section>
				
			</div>
		</div>
	</div>
	<jsp:include page="ceo_footer.jsp" />
	
</div>

