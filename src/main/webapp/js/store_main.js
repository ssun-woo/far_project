/**
 * store_main.js
 * - store_regis_write_check()
 * - info_regis_write_check()
 * - onchange_select() (store_regis_typeSelect)
 * - menu_regis_write_check()
 */

function store_regis_write_check() {
	var typeSelect1 = document.getElementById("typeSelect1");
	var typeSelect2 = document.getElementById("typeSelect2");
	
	if (typeSelect1.value == "none") {
    	alert("업소 유형을 선택하세요");
    	return false;
    }
    
    if (typeSelect2.value == "none") {
    	alert("세부 유형을 선택하세요");
    	return false;
    }

   if($.trim($("#storeName").val()) == "") {
      alert("업체 이름을 입력하세요");
      $("#storeName").val("").focus();
      return false;
   }
   
   if($.trim($("#storeIntro").val()) == "") {
      alert("업체 소개글을 입력하세요");
      $("#storeIntro").val("").focus();
      return false;
   }
   
   if($.trim($("#storeAddressFirst").val()) == "") {
      alert("업체 주소를 입력하세요");
      $("#storeAddressFirst").val("").focus();
      return false;
   }
   
   if($.trim($("#storeAddressSecond").val()) == "") {
      alert("상세 주소를 입력하세요");
      $("#storeAddress").val("").focus();
      return false;
   }
   
   if($.trim($("#businessRegistrationNumber").val()) == "") {
      alert("사업자등록번호를 입력하세요");
      $("#businessRegistrationNumber").val("").focus();
      return false;
   }
   
   if($.trim($("#logoImage").val()) == "") {
      alert("로고 이미지를 첨부하세요");
      $("#logoImage").val("").focus();
      return false;
   }
   
   
   return true;
}


function info_regis_write_check() {
   if($.trim($("#storeIntroEdit").val()) == "") {
      alert("가게 소개글을 입력하세요");
      $("#storeIntroEdit").val("").focus();
      return false;
   }
   
   if($.trim($("#storeAddressEditFirst").val()) == "") {
      alert("가게 주소를 입력하세요");
      $("#storeAddressEditFirst").val("").focus();
      return false;
   }
   
   if($.trim($("#storeAddressEditSecond").val()) == "") {
      alert("상세 주소를 입력하세요");
      $("#storeAddressEditSecond").val("").focus();
      return false;
   }
}

function onchange_select(){
	var typeSelect1 = document.getElementById("typeSelect1");
	var typeSelect2 = document.getElementById("typeSelect2");
	
	typeSelect2.innerHTML = '<option value = "none">업소를 선택해 주세요</option>';
	
	 // 한글과 영어 값의 매핑 객체 생성
    var typeMapping = {
        "업소를 선택해 주세요": "none",
        "호텔": "hotel",
        "모텔": "motel",
        "펜션/풀빌라": "pension",
        "글램핑/캠핑": "camping",
        "한식": "korean",
        "양식": "western",
        "일식": "japanese",
        "중식": "chinese",
        "아시안": "asian",
        "멕시칸": "mexican",
        "콘서트": "concert",
        "연극": "play",
        "뮤지컬": "musical",
        "전시회": "exhibition",
        "헤어": "hair",
        "네일": "nail",
        "눈썹": "eyebrow",
        "바디": "body"
    };
	
	/* 세부 선택창 활성화 */
	typeSelect2.disabled = false;
	
	if (typeSelect1.value == "acc") {
    	addOptionsToTypeSelect2(["호텔", "모텔", "펜션/풀빌라", "글램핑/캠핑"]);
	} else if (typeSelect1.value == "resto") {
    	addOptionsToTypeSelect2(["한식", "양식", "일식", "중식", "아시안", "멕시칸"]);
    } else if (typeSelect1.value == "culture") {
    	addOptionsToTypeSelect2(["콘서트", "연극", "뮤지컬", "전시회"]);
    } else if (typeSelect1.value == "beauty") {
    	addOptionsToTypeSelect2(["헤어", "네일", "눈썹", "바디"]);
    }
    
	function addOptionsToTypeSelect2(optionArray) {
    optionArray.forEach(function(selectedOption) {
        var option = document.createElement("option");
        var value = typeMapping[selectedOption]; // 선택한 옵션에 대응하는 영어 값을 가져옴
        option.value = value; // 영어 값을 <option>의 value 속성에 설정
        option.textContent = selectedOption; // 한글 텍스트를 <option>에 설정
        typeSelect2.appendChild(option); // <select>에 <option> 추가
    });
}
};



function menu_regis_write_check() {
	if($.trim($("#newMenuRegis").val()) == "") {
      alert("등록할 메뉴 이름을 입력하세요");
      $("#newMenuRegis").val("").focus();
      return false;
   }
   
   if($.trim($("#newPriceRegis").val()) == "") {
      alert("등록할 메뉴 가격을 입력하세요");
      $("#newPriceRegis").val("").focus();
      return false;
   }
   
   if($.trim($("#newMenuInfoRegis").val()) == "") {
      alert("등록할 메뉴 소개를 입력하세요");
      $("#newMenuInfoRegis").val("").focus();
      return false;
   }
   
   if($.trim($("#newMenuImageRegis").val()) == "") {
      alert("등록할 메뉴 사진을 첨부하세요");
      $("#newMenuImageRegis").val("").focus();
      return false;
   }
}

function menu_regis_write_check2() {
	if($.trim($("#newMenuRegis").val()) == "") {
      alert("등록할 메뉴 이름을 입력하세요");
      $("#newMenuRegis").val("").focus();
      return false;
   }
   
   if($.trim($("#newPriceRegis").val()) == "") {
      alert("등록할 메뉴 가격을 입력하세요");
      $("#newPriceRegis").val("").focus();
      return false;
   }
   
   if($.trim($("#newMenuInfoRegis").val()) == "") {
      alert("등록할 메뉴 소개를 입력하세요");
      $("#newMenuInfoRegis").val("").focus();
      return false;
   }
}


function menu_edit_write_check() {
	var menuSelect = document.getElementById("menuSelect");
	
	if (menuSelect.value == "") {
		alert("수정할 메뉴를 선택해 주세요");
		return false;
	}

   if($.trim($("#newMenu").val()) == "") {
      alert("수정할 메뉴 이름을 입력하세요");
      $("#newMenu").val("").focus();
      return false;
   }
   
   if($.trim($("#newPrice").val()) == "") {
      alert("수정할 메뉴 가격을 입력하세요");
      $("#newPrice").val("").focus();
      return false;
   }
   
   if($.trim($("#newMenuInfo").val()) == "") {
      alert("수정할 메뉴 소개를 입력하세요");
      $("#newMenuInfo").val("").focus();
      return false;
   }
   
   if($.trim($("#newMenuImage").val()) == "") {
      alert("수정할 메뉴 사진을 첨부하세요");
      $("#newMenuImage").val("").focus();
      return false;
   }
   
   return true;
}