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
					<li class="storeMenuRegis list-group-item"
						onclick="location='/ceo/store_list'"><strong>메뉴</strong> 등록 및
						수정</li>
					<li class="storeInfoEdit list-group-item"
						onclick="location='/ceo/store_info_edit_list'"><strong>소개글</strong>
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
                  </select> <label>세부 선택</label> <select id="typeSelect2" name="detailCate"
                     disabled="disabled">
                     <option value="none">업소를 먼저 선택해 주세요</option>
                  </select>
               </div>

               <div class="storeRegistration">
                  <label>업체 이름</label> <input type="text" id="storeName"
                     name="storeName" placeholder="가게 이름을 입력해주세요.">
               </div>

               <div class="storeRegistration">
                  <label>업체 소개글</label>
                  <textarea id="storeIntro" name="storeIntro" rows="3"
                     placeholder="가게를 소개하는 글을 입력해주세요."></textarea>
               </div>

               <div class="storeRegistration">
                  <label>업체 주소</label>
                  <div class="storeAddressArea">
                     <div class="storeAddressF">
                        <input type="text" id="storeAddressFirst" name="storeAddr1" placeholder="주소 검색">
                           <input type="button" onclick="sample6_execDaumPostcode()" value="주소 찾기"><br>
                        <!-- <button id="storeAddressSearchBtn">주소 검색</button> -->
                  
                        
                     </div>
                  </div>
                  <div class="storeAddressS">
                     <input type="text" id="storeAddressSecond" name="storeAddr2"
                        placeholder="상세주소">
                  </div>
               </div>

               <div class="storeRegistration">
                  <label>사업자등록번호</label> <input type="text"
                     id="businessRegistrationNumber" name="regNum"
                     placeholder="사업자등록번호를 입력해주세요.">
               </div>

               <div class="storeRegistration">
                  <label>로고 이미지 첨부</label> <input type="file" id="logoImage"
                     name="logoImage">
               </div>

               <div class="storeRegistrationButton">
                  <button type="submit" class="storeRegistrationBtn">등록하기</button>
               </div>
            </form>
         </div>
      </div>

   </div>
</div>


<br>
<br>
<br>
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

/*    function loadCeoPage4() {
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

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}
                
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("storeAddressFirst").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("storeAddressSecond").focus();
            }
        }).open();
    }
	

</script>