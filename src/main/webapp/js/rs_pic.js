var photos = [
  "../images/restaurant/sto01.jpg",
  "../images/restaurant/sto02.jpg",
  "../images/restaurant/sto03.jpg",
  "../images/restaurant/sto04.jpg",
  "../images/restaurant/sto05.jpg"
];
var currentPhotoIndex = 0;

function displayPhoto() {
  var storePicElem = document.getElementById("storePic");
  storePicElem.src = photos[currentPhotoIndex];
}

function prev_but(event) {
  event.preventDefault(); // 페이지 새로고침 방지
  currentPhotoIndex--;
  if (currentPhotoIndex < 0) {
    currentPhotoIndex = photos.length - 1;
  }
  displayPhoto();
}

function next_but(event) {
  event.preventDefault(); // 페이지 새로고침 방지
  currentPhotoIndex++;
  if (currentPhotoIndex >= photos.length) {
    currentPhotoIndex = 0;
  }
  displayPhoto();
}

document.addEventListener("DOMContentLoaded", function () {
  // 이전과 동일한 JavaScript 코드
  var informationData = [
    // 표시할 정보 배열
    {
      title: "메뉴",
      text: "주류와 함께 볶은 감자"
    },
    {
      title: "리뷰",
      text: "스낵은 다양하고 사장님 맛있어요"
    },
    {
      title: "정보",
      text: "레스토랑 위치: XX 거리, 도시"
    },
    // 필요한 경우 추가 정보 객체 추가
  ];

  var currentIndex = 0;
  var informationTitle = document.querySelector(".information h1");
  var informationText = document.querySelector(".information p");

  // 선택한 내용을 표시하는 함수
  function displayContent(button, content) {
    var info = informationData.find((item) => item.title === content);
    if (info) {
      currentIndex = informationData.indexOf(info);
      updateInformation();
      updateButtonColors(button);
    }
  }

  // 정보 표시 업데이트 함수
  function updateInformation() {
    var info = informationData[currentIndex];
    informationTitle.textContent = info.title;
    informationText.textContent = info.text;
  }

  // 버튼 색상 업데이트 함수
  function updateButtonColors(activeButton) {
    var menuButtons = document.querySelectorAll(".menu-button");
    menuButtons.forEach((button) => {
      if (button === activeButton) {
        button.classList.add("active-button");
      } else {
        button.classList.remove("active-button");
      }
    });
  }

  // 예약 버튼 클릭 처리 함수
  function makeReservation(event) {
    event.preventDefault(); // 페이지 새로고침 방지
    alert("예약 완료!"); // 원하는 예약 로직으로 대체
  }

  // '찜하기' 버튼 클릭 처리 함수
  function addToShopWish(event) {
    event.preventDefault(); // 페이지 새로고침 방지
    alert("저장 완료!"); // 원하는 찜 로직으로 대체
  }

  // 초기 정보 표시
  updateInformation();

  var prevButton = document.getElementById("prevButton");
  var nextButton = document.getElementById("nextButton");
  var reservationButton = document.getElementById("reservationButton");
  var saveButton = document.getElementById("saveButton");

  prevButton.addEventListener("click", prev_but);
  nextButton.addEventListener("click", next_but);
  reservationButton.addEventListener("click", makeReservation);
  saveButton.addEventListener("click", addToShopWish);
});
