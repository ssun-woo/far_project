<%@ page contentType="text/html; charset=UTF-8"%>

<script src="../js/store_main.js"></script>

<jsp:include page="ceo_header.jsp" />

<div id="ceo_main">
	<div id="ceo_middle">
		<div id="ceo_list">
			<div class="ceo_list" id="booking" onclick="loadCeoPage1()">
				<img src="../images/ceo/booking.png">
				<p>예약관리</p>
			</div>

			<div class="ceo_list" id="review" onclick="loadCeoPage2()">
				<img src="../images/ceo/review.png">
				<p>리뷰관리</p>
			</div>

			<div class="ceo_list" id="shop" onclick="loadCeoPage3()">
				<img src="../images/ceo/shop.png">
				<p>가게관리</p>
			</div>

			<div class="ceo_list" id="center">
				<a href="/customer_service">
					<img src="../images/ceo/center.png">
					<p>고객센터</p>
				</a>
			</div>
			
			<!-- 
			<div id="notice">
				<p>공지</p>
			</div>
			 -->
		</div>

		<div id="contentArea"></div>
	</div>
</div>

<jsp:include page="ceo_footer.jsp" />

<script>
	var store_num2 = "${store_num}";
	console.log(store_num2);
	window.onload = function() {
		if(store_num2 == ""){
			loadCeoPage3();
		}else{
			loadStorePage4(store_num2);
		}
		
	};

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
</script>