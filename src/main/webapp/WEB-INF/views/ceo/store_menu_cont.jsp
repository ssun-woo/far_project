<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="../js/store_main.js"></script>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<jsp:include page="ceo_header.jsp" />


<div id="ceo_main">
	<div id="ceo_middle">
		<div id="contentArea">
			<div class="storeMainWrap">
				<div class="storeStickyArea">
					<div class="storeMain">
						<ul class="list-group list-group-flush">
							<li class="storeRegistrationMain list-group-item"
								onclick="location='/ceo/store_regi'"><strong>업체 등록</strong></li>
							<li class="storeMenuRegis list-group-item"
								onclick="location='/ceo/store_list'"><strong>메뉴</strong> 등록
								및 수정</li>
							<li class="storeInfoEdit list-group-item"
								onclick="location='/ceo/store_info_edit_list'"><strong>소개글</strong>
								및 정보 수정</li>
						</ul>

					</div>
				</div>
				<div id="storeContentArea">
					<div class="menuRegisForm">
						<h3>메뉴 상세 보기</h3>
						<table class="table table-bordered table-hover">
							<thead class="table text-center">
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
							</thead>
						</table>

						<button class="menuRegisBtn"
							onclick="location='/ceo/store_menu_list?store_num=${s.storeNum}'">목록보기</button>
						<button class="menuRegisBtn"
							onclick="location='/ceo/store_menu_edit?store_num=${s.storeNum}&menu_id=${m.roomNum}'">메뉴수정</button>
						<button class="menuRegisBtn" onclick="menuDel();">메뉴삭제</button>


					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="ceo_footer.jsp" />
</div>

<script>
	function menuDel() {
		var isConfirmed = confirm("메뉴를 삭제하시겠습니까?");
		if (isConfirmed) {
			window.location.href = '/ceo/store_menu_del?menu_id=${m.roomNum}&store_num=${s.storeNum}';
		}
	}
</script>


