var informationData = [
      {
        title: "메뉴",
        text: "감자 지짐이 알코올"
      },
      {
        title: "리뷰",
        text: "안주가 친절하고 사장님이 맛있어요"
      },
      {
        title: "정보",
        text: "식당 위치: XX 거리, 도시"
      }
    ];

     var currentIndex = 0;
    var informationTitle;
    var informationText;
    
    // 버튼 선택
    function displayContent(button, content) {
      var info = informationData.find(item => item.title === content);
      if (info) {
        currentIndex = informationData.indexOf(info);
        updateInformation();
        updateButtonColors(button);
      }
    }
    
    // 정보 표시
    function updateInformation() {
      informationTitle = document.querySelector('.information h1');
      informationText = document.querySelector('.information p');
      
      var info = informationData[currentIndex];
      informationTitle.textContent = info.title;
      informationText.textContent = info.text;
    }
    
    // 버튼 색상변경
    function updateButtonColors(activeButton) {
      var menuButtons = document.querySelectorAll('.menu-button');
      menuButtons.forEach(button => {
        if (button === activeButton) {
          button.classList.add('active-button');
        } else {
          button.classList.remove('active-button');
        }
      });
    }
    
    function makeReservation() {
      alert("예약이 완료되었습니다!");
    }

    function addToShopWish() {
      alert("찜하기가 완료되었습니다!");
    }

     document.addEventListener('DOMContentLoaded', updateInformation);
 