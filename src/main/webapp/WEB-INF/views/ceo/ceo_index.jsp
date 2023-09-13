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

			<a href="/customer_service" class="ceo_list" id="center">
				<div>
					<img src="../images/ceo/center.png">
					<p>고객센터</p>
				</div>
			</a>
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
	window.onload = function() {
		loadCeoPage3();
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
			}
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
	
	function loadStorePage2() {
		var pageContent = document.getElementById('storeContentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/ceo/store_menu_regis", true);
		xhttp.send();
	}

	function loadStorePage3() {
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
	}

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