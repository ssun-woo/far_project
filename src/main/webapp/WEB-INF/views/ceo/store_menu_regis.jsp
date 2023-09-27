<%@ page contentType="text/html; charset=UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
										<li class="storeRegistrationMain" onclick="location='/ceo/store_regi'">업체 등록
										</li>
										<li class="storeMenuRegis" onclick="location='/ceo/store_list'">메뉴
											등록 및 수정</li>
										<li class="storeInfoEdit" onclick="loadStorePage2('info_edit')">소개글
											및 정보 수정</li>
									</ul>

								</div>
							</div>
							<div id="storeContentArea">
								<div class="menuRegisForm">
									<h2>메뉴 등록하기</h2>
									<hr>


									<form method="post" action="/ceo/store_menu_regis_ok"
										onsubmit="return menu_regis_write_check();" enctype="multipart/form-data">
										<input type="hidden" name="storeNum" value="${param.store_num}">
										<div class="menuRegis">
											<label>숙소 이름</label>
											<div class="menuRegisPlus">
												<input type="text" id="newMenuRegis" name="roomName">
											</div>
										</div>

										<div class="menuRegis">
											<label>가격</label>
											<div class="menuRegisPlus">
												<input type="text" id="newPriceRegis" name="roomPrice">
											</div>
										</div>

										<div class="menuRegis">
											<label>소개</label>
											<div class="menuRegisPlus">
												<textarea id="newMenuInfoRegis" name="roomExplain" rows="3"></textarea>
											</div>
										</div>

										<div class="menuRegis">
											<label>체크인</label>
											<div class="menuRegisPlus">
												<select name="check_in_hour">
													<option value="none">시간을 선택해주세요.</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="19">20</option>
													<option value="19">21</option>
												</select>
												&nbsp;&nbsp; : &nbsp;&nbsp;
												<select name="check_in_min">
													<option value="none">분을 선택해주세요.</option>
													<option value="00">00</option>
													<option value="30">30</option>
												</select>
											</div>
										</div>

										<div class="menuRegis">
											<label>체크아웃</label>
											<div class="menuRegisPlus">
												<div class="menuRegisPlus">
													<select name="check_out_hour">
														<option value="none">시간을 선택해주세요.</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>
													</select>
													&nbsp;&nbsp; : &nbsp;&nbsp;
													<select name="check_out_min">
														<option value="none">분을 선택해주세요.</option>
														<option value="00">00</option>
														<option value="30">30</option>
													</select>
												</div>
											</div>
										</div>

										<div class="menuRegis">
											<label>기준인원</label>
											<div class="menuRegisPlus">
												<input type="number" id="standard_num" name="standardNum">
											</div>
											<label>최대인원</label>
											<div class="menuRegisPlus">
												<input type="number" id="max_num" name="maxNum">
											</div>
										</div>

										<div class="menuRegis">
											<label>메뉴 사진</label>
											<div class="menuRegisPlus">
												<img id="imagePreview" src="#" alt="미리보기"
													style="display: none; max-width: 200px; max-height: 200px;">
												<input type="file" id="newMenuImageRegis" name="roomPhoto"
													onchange="previewImage(this);">
											</div>
										</div>

										<div class="menuRegisButton">
											<button type="submit" class="menuRegisBtn">등록</button>
										</div>
									</form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<script>
				function previewImage(input) {
					var imagePreview = document.getElementById('imagePreview');
					if (input.files && input.files[0]) {
						var reader = new FileReader();
						reader.onload = function (e) {
							imagePreview.style.display = 'block';
							imagePreview.src = e.target.result;
						};
						reader.readAsDataURL(input.files[0]);
					} else {
						imagePreview.style.display = 'none';
					}
				};
			</script>


			<jsp:include page="ceo_footer.jsp" />