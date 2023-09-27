<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="../js/store_main.js"></script>
<script src="../js/store_main.js"></script>

<jsp:include page="ceo_header.jsp" />

<style>
	table {
		width: 100%;
	}
	
	.first-line {
		text-align: center;
	}
	
	.menuRegisForm img {
		width: 150px;
		height: 150px;
	}
</style>


		<div id="contentArea">
			<div class="storeMainWrap">
				<div class="storeStickyArea">
					<div class="storeMain">
						<ul>
							<li class="storeRegistrationMain"
								onclick="location='/ceo/store_regi'">업체 등록</li>
							<li class="storeMenuRegis" onclick="location='/ceo/store_list?	'">메뉴
								등록 및 수정</li>
							<li class="storeInfoEdit" onclick="loadStorePage2('info_edit')">소개글
								및 정보 수정</li>
						</ul>
					</div>
				</div>
				<div class="container mt-4">
				<div id="storeContentArea">
				<form>
				
					<div class="menuRegisForm">
						<h2>${s.storeName}</h2>

						<table class="table table-hover">
						<thead>

							<tr class="first-line">
								<th colspan="5">메뉴목록</th>
							</tr>
							<tr>
								<th style="width: 5%">no.</th>
								<th style="width: 25%">사진</th>
								<th style="width: 20%">이름</th>
								<th style="width: 10%">가격</th>
								<th style="width: 10%">관리</th>
							</tr>
							<thead>
							<c:if test="${!empty mlist}">
								<c:forEach var="m" items="${mlist}">
									<tr onclick="location='/ceo/store_menu_cont?menu_id=${m.roomNum}'">
										<td>${m.roomNum}</td>
										<td style="text-align: center;"><img
											src="/upload/store_menu/${s.cate}${m.roomPhoto}"></td>
										<td>${m.roomName}</td>
										<td><fmt:formatNumber type="currency" currencyCode="KRW" value="${m.roomPrice}" /></td>
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
							<a onclick="location='/ceo/store_menu_regis?store_num=${s.storeNum}'" class="btn btn-secondary">메뉴등록</a>
						</h1>

					</div>
					</form>
					</div>
				</div>
			</div>
		</div>

<jsp:include page="ceo_footer.jsp" />
