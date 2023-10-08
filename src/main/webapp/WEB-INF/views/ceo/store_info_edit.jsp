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
				<div class="container">
					<div class="infoRegisForm">
						<h2 class="mb-4">업체 소개글 · 주소 수정하기</h2>
						<hr>

						<form method="post" action="/ceo/store_info_edit_ok"
							onsubmit="return info_regis_write_check();">
							<input type="hidden" name="store_num" value="${param.store_num}">
							<input type="hidden" name="menu_id" value="${param.menu_id}">
							
							<div class="form-group">
								<label for="storeIntroEdit">업체 소개글</label>
								<input class="form-control" id="storeIntroEdit"
									name="storeIntro"
									placeholder="업체를 소개하는 글을 입력해주세요."
									value="${s.storeIntro}"></input>
							</div>

							<div class="form-group">
								<label for="storeAddressEditFirst">가게 주소</label>
								<div class="input-group">
									<input type="text" class="form-control"
										id="storeAddressEditFirst" placeholder="주소"
										value="${s.storeAddr1}" name="storeAddr1">
								
								</div>
								<input type="text" class="form-control mt-2"
									id="storeAddressEditSecond" placeholder="상세주소"
									value="${s.storeAddr2}" name="storeAddr2">
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-light">제출</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>

<jsp:include page="../main/footer.jsp" />