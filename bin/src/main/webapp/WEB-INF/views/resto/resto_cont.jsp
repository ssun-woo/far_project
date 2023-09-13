<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="../main/new_header2.jsp" />



<body>

  <div class="rs-top">header 위치</div>

  <section class="stopic">

    <div>
      <img src="../images/restaurant/sto01.jpg" alt="">
    </div>
    <div>
      <img src="../images/restaurant/sto02.jpg" alt="">
    </div>
    <div>
      <img src="../images/restaurant/sto03.jpg" alt="">
    </div>
    <div>
      <img src="../images/restaurant/sto04.jpg" alt="">
    </div>
    <div>
      <img src="../images/restaurant/sto05.jpg" alt="">
    </div>

  </section>
  
<div class="store">
  <div class="st-buttons">
    <button id="menu-button" onclick="showContent('menu')" tag="메뉴">Menu</button>
    <button id="review-button" onclick="showContent('review')" tag="리뷰">Review</button>
    <button id="information-button" onclick="showContent('information')" tag="정보">Information</button>
  </div>

 <div class="menu-content">
    <h3>메뉴</h3>
    <p>감자 지짐이 / 막걸리</p>
  </div>

  <div class="review-content">
    <h3>리뷰 내용</h3>
    <p>김땡떙 : 안주가 친절하고 사장님이 맛있어요</p>
  </div>

  <div class="information-content">
    <h3>지미가주</h3>
    <p>경기도 고양시 일산동구 무궁화로</p>
  </div>
</div> 

<div class="re-buttons">
  <button id="rs-button1" onclick="makeReservation()" tag="예약하기">예약하기</button>
  <button id="rs-button1" onclick="addToShopWish()" tag="찜하기">찜하기</button>
</div>

 <script>
    function showContent(contentId) {
      const contentSections = document.querySelectorAll('.store > div[class$="-content"]');
      contentSections.forEach(section => {
        section.style.display = 'none';
      });
      const selectedSection = document.querySelector(`.${contentId}-content`);
      selectedSection.style.display = 'block';
    }

    // Show information content by default when the page loads
    window.onload = function() {
      showContent('menu');
    };
  </script>

<jsp:include page="../main/footer.jsp"/>

<script type="text/javascript">
  $('.stopic').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
  });

  function makeReservation() {
    location="/FARProject/payment/payment.jsp";
  }

  function addToShopWish() {
    alert("찜하기가 완료되었습니다!");
  }

  function showContent(contentType) {
    // 모든 content 숨기기
    $('.menu-content, .review-content, .information-content').hide();
    // 해당하는 content 보여주기
    $('.' + contentType + '-content').show();
    // 버튼 클릭시 색상 변경
    $('.st-buttons button').removeClass('active');
    $('#' + contentType + '-button').addClass('active');
  }
  
</script>