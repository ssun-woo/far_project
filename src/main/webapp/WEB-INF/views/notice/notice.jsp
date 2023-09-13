<%@ page contentType="text/html; charset=UTF-8"%>

<script src="../js/notice_main.js"></script>
<jsp:include page="../main/new_header2.jsp" />
<link rel="stylesheet" type="text/css" href="/css/notice.css">

<div id="notice_main">
	<div id="notice_middle">
		
		<div class="noticeMainWrap">
			<div class="noticeStickyArea">
				<div class="noticeList">
					<ul>
						<li class="event_list" onclick="loadNoticePage1()">이벤트</li>
						<li class="notice_list" onclick="loadNoticePage2()">공지사항</li>
						<li class="customer_service" onclick="location='/customer_service'">고객센터</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="contentArea"></div>
	</div>
</div>

<jsp:include page="../main/footer.jsp" />

<script>
	window.onload = function() {
		loadNoticePage1();
	};

	function loadNoticePage1() {
		var pageContent = document.getElementById('contentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/notice/event_list", true);
		xhttp.send();
	}

	function loadNoticePage2() {
		var pageContent = document.getElementById('contentArea');
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				pageContent.innerHTML = this.responseText;
			}
		};
		xhttp.open("GET", "/notice/notice_list", true);
		xhttp.send();
	}
</script>