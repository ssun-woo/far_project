<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header3.jsp"/>




<div class="csBoard">
	<form method="get">
		<div class="cs_question_input">
			<input class="cs_searchInput" name="cs_search" type="text" placeholder="궁금한 점을 입력하세요">
		</div>
		<div class="cs_question_input2">
			<button class="cs_searchButton" type="submit">
				<img src="../images/main/search_icon.png" class="cs_searchIcon">
			</button>
		</div>
	</form>
	
	
	
	<div class="csMenu">
		<div class="">전체</div>
		<div class="">계정</div>
		<div class="">결제, 환불</div>
		<div class="">예약</div>
		<div class="">이벤트</div>
	</div>
	
	<div>
		<h3>자주 찾는 도움말</h3>
	</div>
	<div class="cs_question_line">
		<div class="cs_question">
			계정 질문입니다
		</div>
		<div class="cs_down_arrow">
			<img src="../images/arrow-down-sign-to-navigate.png" alt="화살표">
		</div>
	</div>
	<div class="cs_answer_line">
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
	</div>
	
	<div class="cs_question_line2">
		<div class="cs_question">
			결제환불 질문입니다
		</div>
		<div class="cs_down_arrow">
			<img src="../images/arrow-down-sign-to-navigate.png" alt="화살표">
		</div>
	</div>
	<div class="cs_answer_line2">
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
	</div>
	
	<div class="cs_question_line3">
		<div class="cs_question">
			예약 질문입니다
		</div>
		<div class="cs_down_arrow">
			<img src="../images/arrow-down-sign-to-navigate.png" alt="화살표">
		</div>
	</div>
	<div class="cs_answer_line3">
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
	</div>
	
	<div class="cs_question_line4">
		<div class="cs_question">
			이벤트 질문입니다
		</div>
		<div class="cs_down_arrow">
			<img src="../images/arrow-down-sign-to-navigate.png" alt="화살표">
		</div>
	</div>
	<div class="cs_answer_line4">
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
		답변이 나올 라인입니다<br>
	</div>

	
</div>








<jsp:include page="../main/footer.jsp"/>


<script>
  const questionLine = document.querySelector('.cs_question_line');
  const answerLine = document.querySelector('.cs_answer_line');
  questionLine.addEventListener('click', function() {
    answerLine.classList.toggle('show');
  });
  
  const questionLine2 = document.querySelector('.cs_question_line2');
  const answerLine2 = document.querySelector('.cs_answer_line2');
  questionLine2.addEventListener('click', function() {
    answerLine2.classList.toggle('show');
  });
  
  const questionLine3 = document.querySelector('.cs_question_line3');
  const answerLine3 = document.querySelector('.cs_answer_line3');
  questionLine3.addEventListener('click', function() {
    answerLine3.classList.toggle('show');
  });
  
  
  const questionLine4 = document.querySelector('.cs_question_line4');
  const answerLine4 = document.querySelector('.cs_answer_line4');
  questionLine4.addEventListener('click', function() {
    answerLine4.classList.toggle('show');
  });
</script>
