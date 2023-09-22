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
<div id="ceo_main">
	<div id="ceo_middle">
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
					<div class="menuRegisForm">
						<h3>메뉴 상세 보기</h3>
						<table border="1">
							<tr>
								<th style="width: 10%" rowspan="3"><img
									src="/upload/store_menu/${s.cate}${m.roomPhoto}"></th>
								<th style="width: 5%">이름</th>
								<th style="width: 30%">${m.roomName }</th>

							</tr>
							<tr>
								<th style="width: 5%">가격</th>
								<th style="width: 30%"><fmt:formatNumber type="currency"
										currencyCode="KRW" value="${m.roomPrice}" /></th>
							</tr>
							<tr>
								<th style="width: 5%">설명</th>
								<th style="width: 30%" colspan="2">${explain}</th>
							</tr>
						</table>

						<h2 onclick="location='/ceo/store_menu_list?store_num=${s.storeNum}'">목록보기</h2>
						<h2 onclick="location='/ceo/store_menu_edit?store_num=${s.storeNum}&menu_id=${m.roomNum}'">메뉴수정</h2>
						<h2 onclick="menuDel();">메뉴삭제</h2>



					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
function menuDel() {
    var isConfirmed = confirm("메뉴를 삭제하시겠습니까?");
    if (isConfirmed) {
        window.location.href = '/ceo/store_menu_del?menu_id=${m.roomNum}&store_num=${s.storeNum}';
    }
}
</script>

<jsp:include page="ceo_footer.jsp" />
