<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/sc_detail.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <title>숙소 검색결과</title>
</head>
<body>
    <!-- 탭 네비게이션을 상단으로 이동 -->
    <div class="tabArea">
        <ul class="n1 nav nav-tabs" id="myTabs">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#rest">숙소</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#food">음식</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#cultrue">문화</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#beauty">뷰티</a>
            </li>
        </ul>
    </div>
    <div id="tab-content">

        <!-------------- 숙소 ---------------->

        <div class="tab-pane fade show active" id="rest">
            <div class="sc_textBox">
                <h4 class="mainText">
                    <br>
                    <strong>
                        " "
                    </strong>
                    에 대한 결과 검색
                </h4>
            </div>
            <div class="rest_all">
                <div class="titleTab">
                    <div class="subWrap">
                        <ul class="n2 nav nav-tabs">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#all_rest">통합</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#hot_rest">인기순</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#row_rest">낮은가격순</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#high_rest">높은가격순</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#many_rest">판매 많은순</a>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="box_list">
                <ul class="box_meun">
                    <li class="box_prd">
                        <div class="box_img">
                            <a href=""><img src="img/int_rest01.jpg" alt="sup01"></a>
                        </div>
                        <div class="box_text">
                            <div data-row>
                                <div data-cell>
                                    <div class="infoIcon">
                                        <i class="icon icondHot">호텔</i>
                                        <i class="icon">
                                            경기
                                            /
                                            고양시
                                        </i>
                                    </div>
                                </div>
                            </div>
                            <div data-row>
                                <div data-cell>
                                    <a href="">
                                        <h5 class="infoTitle">소노캄 고양</h5>
                                    </a>
                                    <p class="infoSubTitle">전 객실 미니바 무료 이벤트</p>
                                </div>
                                <div data-cell>
                                    <div class="" infoPrice" tabindex="0">
                                        <p class="final">
                                            <span class="bilnd">판매가</span>
                                            <strong>161,000</strong>
                                            원 ~
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div data-row="bottom">
                                <div data-cell>
                                    <p class="infoInfostar">
                                        등급 :
                                        5성급
                                    </p>
                                    <p class="info">경기도 고양시 일산동구 태극로 20</p>
                                </div>
                            </div>
                        </div>
                    </li>
                
                    <li class="box_prd">
                        <div class="box_img">
                            <a href=""><img src="img/int_rest01.jpg" alt="sup01"></a>
                        </div>
                        <div class="box_text">
                            <div data-row>
                                <div data-cell>
                                    <div class="infoIcon">
                                        <i class="icon icondHot">호텔</i>
                                        <i class="icon">
                                            경기
                                            /
                                            고양시
                                        </i>
                                    </div>
                                </div>
                            </div>
                            <div data-row>
                                <div data-cell>
                                    <a href="">
                                        <h5 class="infoTitle">소노캄 고양</h5>
                                    </a>
                                    <p class="infoSubTitle">전 객실 미니바 무료 이벤트</p>
                                </div>
                                <div data-cell>
                                    <div class="" infoPrice" tabindex="0">
                                        <p class="final">
                                            <span class="bilnd">판매가</span>
                                            <strong>161,000</strong>
                                            원 ~
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div data-row="bottom">
                                <div data-cell>
                                    <p class="infoInfostar">
                                        등급 :
                                        5성급
                                    </p>
                                    <p class="info">경기도 고양시 일산동구 태극로 20</p>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <!-------------- 음식 ---------------->

        <div class="tab-pane fade" id="food">
        </div>

        <!-------------- 문화 ---------------->

        <div class="tab-pane fade" id="cultrue">
            
        </div>

        <!-------------- 뷰티 ---------------->

        <div class="tab-pane fade" id="beauty">
            
        </div>
   
    <!-- footer -->
</body>