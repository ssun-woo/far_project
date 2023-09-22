<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
							<li class="storeMenuRegis" onclick="location='/ceo/store_list'">메뉴
								등록 및 수정</li>
							<li class="storeInfoEdit" onclick="loadStorePage2('info_edit')">소개글
								및 정보 수정</li>
						</ul>
					</div>
				</div>
				<div id="storeContentArea">
					<form>
						<table border="1">
							<tr style="text-align: center;">
								<th colspan="4">가게 목록</th>
							</tr>
							<tr>
								<th>no.</th>
								<th>업소 분류</th>
								<th>상세 분류</th>
								<th>가게 이름</th>
							</tr>
							<c:if test="${!empty slist}">
								<c:forEach var="s" items="${slist}" varStatus="loop">
									<tr onclick="location='/ceo/store_menu_list?store_num=${s.store_num}'">
										<td>${s.store_num}</td>
										<td>${s.cate}</td>
										<td>${s.detail_cate}</td>
										<td>${s.store_name}</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty slist}">
								<tr style="text-align: center;">
									<td colspan="4">등록된 가게가 없습니다.</td>
								</tr>
							</c:if>
						</table>
					</form>
				</div>
			</div>
		</div>

<jsp:include page="ceo_footer.jsp" />

