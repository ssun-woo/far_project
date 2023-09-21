<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


<title></title>
<script src="../js/jquery.js"></script>
<script src="../js/checkBox.js"></script>
<script src="../js/JJim.js"></script>
<script src="../js/event.js"></script>
<script src="../js/myPage.js"></script>
<script src="../js/acc_script.js"></script>
<script src="../js/rs_menu.js"></script>
<script src="../js/acc_menu.js"></script>
<script src="../js/rs_pic.js"></script>
<script src="../js/topten.js"></script>
<script src="../js/header3.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment-with-locales.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>




<!--<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />-->
<link rel="stylesheet" type="text/css" href="../css/header3_daterangepicker.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/top.css">
<link rel="stylesheet" type="text/css" href="../css/footer.css">
<link rel="stylesheet" type="text/css" href="../css/cs.css">
<link rel="stylesheet" type="text/css" href="../css/accommodation.css">
<link rel="stylesheet" type="text/css" href="../css/beauty.css">
<link rel="stylesheet" type="text/css" href="../css/culture.css">
<link rel="stylesheet" type="text/css" href="../css/restaurant.css">
<link rel="stylesheet" type="text/css" href="../css/ev_top.css">
<link rel="stylesheet" type="text/css" href="../css/myPage.css">
<link rel="stylesheet" type="text/css" href="../css/signupForm.css">
<link rel="stylesheet" type="text/css" href="../css/loginForm.css">
<link rel="stylesheet" type="text/css" href="../css/payment.css">
<link rel="stylesheet" type="text/css" href="../css/acc_search.css">
<link rel="stylesheet" type="text/css" href="../css/shopList.css">
<link rel="stylesheet" type="text/css" href="../css/rest_com.css">
<link rel="stylesheet" type="text/css" href="../css/ev.css">
<link rel="stylesheet" type="text/css" href="../css/topten.css">	
<link rel="stylesheet" type="text/css" href="../css/acc_cont.css">	
	


</head>

<body>
	<div id="wrap">
		<div class="top_category">
   			<ul>
   				<li><a href="../accommodation/acc_index.jsp"><button>숙소</button></a></li>
   				<li><a href="../restaurant/rest_index.jsp"><button>식당</button></a></li>
   				<li><a href="../culture/culture_index.jsp"><button>문화</button></a></li>
   				<li><a href="../beauty/beauty_index.jsp"><button>뷰티</button></a></li>
   			</ul>
   			
   		</div>
   		
		<div class="top2">
			<div class="logo">
				<a href="../main/index.jsp"> <img alt="logo"
					src="../images/main/logo.png" width="auto" height="auto"
					class="logo_img">
				</a>
			</div>

			<form>
				<div class="search">
					<input class="searchInput" type="text" placeholder="검색어를 입력하세요">
					<button class="searchButton" type="submit">
						<img src="../images/main/search_icon.png" class="searchIcon">
					</button>
				</div>
			</form>

			<div class="login">
            <ul>
               <li>
                 <button class="loginButton" type="button" onclick="#">
                     <img src="../images/main/member.png" class="loginIcon">
                 </button>
               </li>
            <li class="separator">|</li>
            <li><a href="#" class="myPage"> 마이페이지</a></li>
            <li class="separator">|</li>
            <li><a href="#" class="customer"> 고객센터</a></li>
            
            </ul>
            
   			</div>
		</div>
		
		<div class="search2">
			<div class="search2Destination">
				<div class="search2Destination2">
					<label>여행지, 숙소</label>
					<input type="text" id="destination" name="destination" placeholder="검색해보세요.">
				</div>
				<div class="accSearch" style="display: none;">
					<div class="location">
						<div class="locationList">
							<ul id="regionList">
								<li data-region="서울"><a href="acc_Hotel_list.jsp">서울</a></li>
								<li data-region="경기">경기</li>
								<li data-region="강원">강원</li>
								<li data-region="경상">경상</li>
								<li data-region="전라">전라</li>
								<li data-region="충청">충청</li>
								<li data-region="제주">제주</li>
							</ul>
						</div>
						<div class="cityList">
							<ul id="cityList"></ul>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="search2Date">
				<div class="search2Date2">
					<label>날짜</label>
					<input type="text" id="date" name="date" value="" />
					<script type="text/javascript">
						// 기본 출력
						$(document).ready(function() {
						    var startDate = moment().startOf('day');
						    var endDate = moment().startOf('day').add(1, 'day');
						    var nights = 1;
	
						    // 요일 포맷 변경
						    var startOfWeekday = startDate.format('ddd');
						    var endOfWeekday = endDate.format('ddd');
	
						    // 요일 한글로 변환
						    var koreanStartOfWeekday = convertToKoreanDayOfWeek(startOfWeekday);
						    var koreanEndOfWeekday = convertToKoreanDayOfWeek(endOfWeekday);
	
						    // 이전 선택 날짜값 저장
						    var previousValue = '';
	
						    // datepicker 설정
						    $('input[name="date"]').daterangepicker({
						        "locale": {
						            "format": "MM-DD (ddd)",
						            "separator": " ~ ",
						            "applyLabel": "확인",
						            "cancelLabel": "취소",
						            "fromLabel": "From",
						            "toLabel": "To",
						            "customRangeLabel": "Custom",
						            "weekLabel": "W",
						            "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
						            "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
						        },
						        "startDate": startDate,
						        "endDate": endDate,
						        "minDate": moment().startOf('day'),
						        "maxDate": moment().startOf('day').add(30, 'day'),
						        "minYear": 2022,
						        "maxYear": 2032,
						        "drops": "down"
						    });
						    
						    // 기본 텍스트 설정
						    var defaultText = startDate.format('MM-DD (' + koreanStartOfWeekday + ')') + ' ~ ' + endDate.format('MM-DD (' + koreanEndOfWeekday + ')') + ' ' + nights + '박';
	
						    // 입력란에 기본 텍스트 설정 적용
						    $('input[name="date"]').val(defaultText);
	
						    // 이벤트 핸들러
						    $('input[name="date"]').on('apply.daterangepicker', function(ev, picker) {
						        var startOfWeekday = picker.startDate.format('ddd');
						        var endOfWeekday = picker.endDate.format('ddd');
	
						        // 요일 한글로 변환
						        var koreanStartOfWeekday = convertToKoreanDayOfWeek(startOfWeekday);
						        var koreanEndOfWeekday = convertToKoreanDayOfWeek(endOfWeekday);
	
						        // 요일 포맷 다시 설정
						        var dateRangeText = picker.startDate.format('MM-DD (') + koreanStartOfWeekday + ') ~ ' + picker.endDate.format('MM-DD (') + koreanEndOfWeekday + ')';
								
							 	// 몇 박인지 계산
						        var nights = picker.endDate.diff(picker.startDate, 'days');
						        dateRangeText += ' ' + nights + '박';
						    
						        // input에 변경된 텍스트 설정
						        $('input[name="date"]').val(dateRangeText);
						        
						        // 기본 날짜 저장
						        previousValue = dateRangeText;
						    });
						    
						    // 취소 버튼 클릭 시
						    $('input[name="date"]').on('cancel.daterangepicker', function(ev, picker) {
						        $(this).val(previousValue); // 이전 값을 입력란에 설정
						    });
						    // 달력 바깥 영역 클릭 시
						    $('input[name="date"]').on('hide.daterangepicker', function(ev, picker) {
						        $(this).val(previousValue); // 이전 값을 입력란에 설정
						    });
	
						    // 영어 요일을 한글 요일로 변환
						    function convertToKoreanDayOfWeek(englishDayOfWeek) {
						        switch (englishDayOfWeek) {
						            case 'Sun':
						                return '일';
						            case 'Mon':
						                return '월';
						            case 'Tue':
						                return '화';
						            case 'Wed':
						                return '수';
						            case 'Thu':
						                return '목';
						            case 'Fri':
						                return '금';
						            case 'Sat':
						                return '토';
						            default:
						                return englishDayOfWeek;
						        }
						    }
						});
					</script>
				</div>
			</div>
			
			
			
			<div class="search2Personnel">
				<div class="search2Personnel2">
				    <label>인원</label>
				    <p>성인 0, 소아 0</p>
				  </div>
				  
				  <div class="personnel-controls">
				    <div class="personnelAdult">
					    <button id="decreaseAdult">-</button>
					    <span>성인</span>
					    <span id="adultCount">0</span>
					    <button id="increaseAdult">+</button>
				    </div>
				    <div class="personnelChild">
				    	<button id="decreaseChild">-</button>
				    	<span>소아</span>
				    	<span id="childCount">0</span>
				    	<button id="increaseChild">+</button>
				    </div>
				    
				</div>
			</div>
			<div class="search2Button">
				<button>검색하기</button>
			</div>
		</div>
