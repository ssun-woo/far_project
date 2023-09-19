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
							<li class="storeRegistrationMain" onclick="location='/ceo/store_regi'">업체
								등록</li>
							<li class="storeMenuRegis" onclick="location='/ceo/store_list'">메뉴
								등록 및 수정</li>
							<li class="storeInfoEdit" onclick="loadStorePage2('info_edit')">소개글
								및 정보 수정</li>
						</ul>
					</div>
				</div>
				<div id="storeContentArea">
					<div class="storeRegistrationForm">
						<h2>업체 등록하기</h2>
						<hr>
						<form method="post" action="store_regi_ok"
							onsubmit="return store_regis_write_check();"
							enctype="multipart/form-data">
							<div class="storeRegistration">
								<label>업소 선택</label> <select id="typeSelect1" name="cate"
									onchange="onchange_select()">
									<option value="none">선택하세요</option>
									<option value="acc">숙소</option>
									<option value="resto">식당</option>
									<option value="culture">문화</option>
									<option value="beauty">뷰티</option>
								</select> <label>세부 선택</label> <select id="typeSelect2"
									name="detail_cate" disabled="disabled">
									<option value="none">업소를 먼저 선택해 주세요</option>
								</select>
							</div>

							<div class="storeRegistration">
								<label>업체 이름</label> <input type="text" id="storeName"
									name="store_name" placeholder="가게 이름을 입력해주세요.">
							</div>

							<div class="storeRegistration">
								<label>업체 소개글</label>
								<textarea id="storeIntro" name="store_intro" rows="3"
									placeholder="가게를 소개하는 글을 입력해주세요."></textarea>
							</div>

							<div class="storeRegistration">
								<label>업체 주소</label>
								<div class="storeAddressArea">
									<div class="storeAddressF">
										<input type="text" id="storeAddressFirst" name="store_addr1"
											placeholder="주소 검색">
										<!-- <button id="storeAddressSearchBtn">주소 검색</button> -->
									</div>
								</div>
								<div class="storeAddressS">
									<input type="text" id="storeAddressSecond" name="store_addr2"
										placeholder="상세주소">
								</div>

								<!-- <input type="text" id="storeAddress" name="storeAddress"
					placeholder="가게 주소를 입력해주세요."> -->
							</div>

							<div class="storeRegistration">
								<label>사업자등록번호</label> <input type="text"
									id="businessRegistrationNumber" name="reg_num"
									placeholder="사업자등록번호를 입력해주세요.">
							</div>

							<!-- 
			<div class="storeRegistration">
				<label>사업자등록증 첨부 : </label>/
				<input type="file" id="businessRegistrationImage" name="businessRegistrationImage">
			</div>
			 -->

							<div class="storeRegistration">
								<label>로고 이미지 첨부</label> <input type="file" id="logoImage"
									name="logo_image">
							</div>

							<!-- <div class="storeRegistration">
				<label>메뉴 이미지 첨부</label>
				<input type="file" id="menuImage" name="menu_image">
			</div> -->

							<div class="storeRegistrationButton">
								<button type="submit" class="storeRegistrationBtn">등록하기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="ceo_footer.jsp" />

<!-- <script>
	var store_num = "${store_num}";
	var menu_id = "${menu_id}";
	console.log(store_num);
	window.onload = function() {
		if(store_num == ""){
			loadCeoPage3();
		}else{
			loadCeoPage10()
			  .then(() => {
			    return loadStorePage11(store_num);
			  })
			  .catch(error => console.error(error)); // 오류 처리
		}
	};
	
	  // 파일 선택 시 이미지 미리보기
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

	function loadMenu_cont(menu_id){
		var pageContent = document.getElementById('storeContentArea');
		pageContent.innerHTML = '';
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/store_menu_cont?menu_id=" + menu_id , true);
		xhttp.send();
	}
	

	function loadCeoPage1() {
		var pageContent = document.getElementById('contentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/reservation_main", true);
		xhttp.send();
	}

	function loadCeoPage2() {
		var pageContent = document.getElementById('contentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/review_test", true);
		xhttp.send();
	}

	function loadCeoPage3() {
		var pageContent = document.getElementById('contentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			};
		};
		xhttp.open("GET", "/ceo/store_main", true);
		xhttp.send();
	}

/* 	function loadCeoPage4() {
		var pageContent = document.getElementById('contentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				var tempElement = document.createElement('div');
				tempElement.innerHTML = this.responseText;
				var csMainContent = tempElement.querySelector('.csContainer').innerHTML;
				pageContent.innerHTML = csMainContent;
				initCsScript();
			}
		};
		xhttp.open("GET", "/customer_service", true);
		xhttp.send();
	} */

	function initCsScript() {
		const questionLine = document.querySelector('.cs_question_line');
		const answerLine = document.querySelector('.cs_answer_line');
		questionLine.addEventListener('click', function() {
			answerLine.classList.toggle('show');
		});
	}

	function loadStorePage1() {
		var pageContent = document.getElementById('storeContentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/store_registration", true);
		xhttp.send();
	}
	
	/* // 메뉴등록
	function loadStorePage2(store_num, state) {
	    var pageContent = document.getElementById('storeContentArea');
	    var xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function() {
	        if (this.readyState === 4 && this.status === 200) {
	            pageContent.innerHTML = this.responseText;
	        }
	    };
	    // EL을 사용하여 parameterValue를 URL에 포함시킴
	    xhttp.open("GET", "/ceo/store_menu_regis?store_num=" + parameterValue, true);
    xhttp.send();
} */
	
	// 메뉴 등록 전 가게 선택
	function loadStorePage2(state){
		var pageContent = document.getElementById('storeContentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/store_list?state=" + state, true);
		xhttp.send();
	}
	
	function loadStorePage3(store_num){
		var pageContent = document.getElementById('storeContentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/store_menu_regis?store_num=" + store_num , true);
		xhttp.send();
	}
	
	
	function loadStorePage4(store_num){
		var pageContent = document.getElementById('storeContentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/store_menu_list?store_num=" + store_num , true);
		xhttp.send();
	}
	
	function loadStorePage4_1(store_num){
		var pageContent = document.getElementById('contentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/store_menu_list?store_num=" + store_num , true);
		xhttp.send();
	}
	
	function menuDel(menu_num, store_num) {
	    var isConfirmed = confirm("메뉴를 삭제하시겠습니까?");

	    if (isConfirmed) {
	        var pageContent = document.getElementById('contentArea');
	        var xhttp = new XMLHttpRequest();
	        xhttp.onreadystatechange = function() {
	            if (this.readyState === 4 && this.status === 200) {
	                pageContent.innerHTML = this.responseText;
	            }
	        };
	        xhttp.open("GET", "/ceo/store_menu_list?menu_id=" + menu_num + "&store_num=" + store_num, true);
	        xhttp.send();
	        
	    }
	}
	 
	function menuDel2(menu_id, store_num){
		menuDel(menu_id, store_num)
		  .then(() => {
		    return loadStorePage11(store_num);
		  })
		  .catch(error => console.error(error));
	}
	      

	/* function loadStorePage3() {
		var pageContent = document.getElementById('storeContentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/store_info_edit", true);
		xhttp.send();
	}
	
	function loadStorePage4() {
		var pageContent = document.getElementById('storeContentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/store_menu_edit", true);
		xhttp.send();
	} */

	function loadReservationPage1() {
		var pageContent = document.getElementById('reservationContentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/reservation_confirm_list", true);
		xhttp.send();
	}

	function loadReservationPage2() {
		var pageContent = document.getElementById('reservationContentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/reservation_waiting_list", true);
		xhttp.send();
	}
	
	function loadCeoPage10() {
		  return new Promise((resolve, reject) => {
		    var pageContent = document.getElementById('contentArea');
		    var xhttp = new XMLHttpRequest();
		    xhttp.onreadystatechange = function() {
		      if (this.readyState === 4) {
		        if (this.status === 200) {
		          pageContent.innerHTML = this.responseText;
		          resolve(); // 성공 시 resolve 호출
		        } else {
		          reject(new Error('Ceo Page 3 Load Failed')); // 실패 시 reject 호출
		        }
		      }
		    };
		    xhttp.open("GET", "/ceo/store_main", true);
		    xhttp.send();
		  });
		}

		function loadStorePage11(store_num) {
		  return new Promise((resolve, reject) => {
		    var pageContent = document.getElementById('storeContentArea');
		    var xhttp = new XMLHttpRequest();
		    xhttp.onreadystatechange = function() {
		      if (this.readyState === 4) {
		        if (this.status === 200) {
		          pageContent.innerHTML = this.responseText;
		          resolve(); // 성공 시 resolve 호출
		        } else {
		          reject(new Error('Store Page 4 Load Failed')); // 실패 시 reject 호출
		        }
		      }
		    };
		    xhttp.open("GET", "/ceo/store_menu_list?store_num=" + store_num, true);
		    xhttp.send();
		  });
		}

</script> -->