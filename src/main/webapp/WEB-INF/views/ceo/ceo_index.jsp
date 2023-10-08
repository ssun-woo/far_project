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
					<li class="storeInfoEdit list-group-item"
								onclick="location='/ceo/store_info_edit_list'"><strong>소개글</strong>
								및 정보 수정</li>
				</ul>

			</div>
		</div>
		<div id="storeContentArea">
			<form>
				<table class="table">
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
								<tr data-href="/ceo/store_menu_list?store_num=${s.storeNum}">
									<td style="color: blue;">${s.storeNum}</td>
									<!-- 텍스트 색상을 파란색으로 변경 -->
									<td>${s.cate}</td>
									<td>${s.detailCate}</td>
									<td>${s.storeName}</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty slist}">
							<tr style="text-align: center;">
								<td colspan="4">등록된 상점이 없습니다.</td>
								<!-- "There are no registered stores." (등록된 상점이 없습니다.로 변경) -->
							</tr>
						</c:if>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="ceo_footer.jsp" />
</div>



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
		xhttp.open("GET", "/ceo/store_menu_regis_list", true);
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
		xhttp.open("GET", "/ceo/store_info_edit_list", true);
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
		xhttp.open("GET", "/ceo/store_menu_edit_list", true);
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

<script>
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
</script>