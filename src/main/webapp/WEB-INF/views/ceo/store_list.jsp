<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="../js/store_main.js"></script>

<jsp:include page="ceo_header.jsp" />

<div id="contentArea">
	<div class="storeMainWrap">
		<div class="storeStickyArea">
			<div class="storeMain">
				<ul class="list-group list-group-flush">
					<li class="storeRegistrationMain list-group-item"
						onclick="location='/ceo/store_regi'"><strong>업체 등록</strong></li>
					<li class="storeMenuRegis list-group-item" onclick="location='/ceo/store_list'"><strong>메뉴</strong>
						등록 및 수정</li>
					<li class="storeInfoEdit list-group-item" onclick="loadStorePage2('info_edit')"><strong>소개글</strong>
						및 정보 수정</li>
				</ul>
			</div>
		</div>
		<div >
			<div id="storeContentArea">
				<form>
					<table class="table table-hover">
					<thead>
						<tr style="text-align: center;">
							<th colspan="4">스토어 목록</th>
							<!-- "Shop List" (상점 목록으로 변경) -->
						</tr>
						<tr>
							<th>번호</th>
							<!-- "no." (번호로 변경) -->
							<th>업종</th>
							<!-- "Business classification" (업종으로 변경) -->
							<th>상세 업종</th>
							<!-- "Detailed classification" (상세 업종으로 변경) -->
							<th>가게 이름</th>
							<!-- "Store Name" (가게 이름으로 변경) -->
						</tr>
					</thead>
						<tbody>
							<c:if test="${!empty slist}">
								<c:forEach var="s" items="${slist}" varStatus="loop">

									<tr
										onclick="location='/ceo/store_menu_list?store_num=${s.storeNum}'">

										<td style="color: blue;">${s.storeNum}</td>
										<td>${s.cate}</td>
										<td>${s.detailCate}</td>
										<td>${s.storeName}</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty slist}">
								<tr class="text-center">
									<td colspan="4">동록된 정보가 존재하지 않습니다.</td>
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

