<%@ page contentType="text/html; charset=UTF-8" %>
<head>
   <!-- jQuery CDN -->
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

   <!-- Slick Slider CSS 및 JS CDN -->
   <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
   <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
</head>

<style>
   .shop_info_event {
      height: 500px;
      width: 600px;
      background-color: rgb(107, 107, 107);
      display: flex;
      /* 컨테이너를 flex container로 설정 */
      justify-content: center;
      /* 수평 가운데 정렬 */
      align-items: center;
      /* 수직 가운데 정렬 */
   }

   .shop_info_img {
      height: 450px;
      width: 450px;
      margin-right: 15px;
   }

   .shop_info_img img {
      height: 100%;
      width: 100%;
      margin: 0, auto;

      .slick-dots {
         background-color: rgb(235, 51, 51);
         /* 원하는 배경색으로 변경 */
      }
   }
</style>

<div class="shop_info_event">
   <div class="shop_info_img">
      <div>
         <img src="img/feature-1.jpg">
      </div>
      <div>
         <img src="img/feature-2.jpg">
      </div>
      <div>
         <img src="img/feature-3.jpg">
      </div>
      <div>
         <img src="img/feature-4.jpg">
      </div>
      <div>
         <img src="img/feature-5.jpg">
      </div>
      <div>
         <img src="img/feature-6.jpg">
      </div>

   </div>
</div>


<script>
   $(document).ready(function () {
      $('.shop_info_img').slick({
         infinite: true, // 무한 루프
         slidesToShow: 1, // 한 번에 보여줄 슬라이드 개수
         slidesToScroll: 1, // 스크롤 시 이동할 슬라이드 개수
         autoplay: true, // 자동 재생
         autoplaySpeed: 2000, // 자동 재생 속도 (밀리초)
         arrows: false,               //이전 다음 버튼 표시 여부(true or false) ▶기본값 true
         pauseOnFocus: true,         //마우스 클릭 시 슬라이드 멈춤 ▶기본값 true
         pauseOnHover: true,         //마우스 호버 시 슬라이드 멈춤 ▶기본값 true
         dots: true, // 네비게이션 바 사용
         appendDots: $('.shop_info_img'), // 네비게이션 바를 추가한 요소에 연결
      });
   });

</script>