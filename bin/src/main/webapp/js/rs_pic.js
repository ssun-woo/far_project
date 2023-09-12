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
  event.preventDefault(); // Prevent page refresh
  currentPhotoIndex--;
  if (currentPhotoIndex < 0) {
    currentPhotoIndex = photos.length - 1;
  }
  displayPhoto();
}

function next_but(event) {
  event.preventDefault(); // Prevent page refresh
  currentPhotoIndex++;
  if (currentPhotoIndex >= photos.length) {
    currentPhotoIndex = 0;
  }
  displayPhoto();
}

document.addEventListener("DOMContentLoaded", function () {
  // same JavaScript code as before
  var informationData = [
    // array of information to display
    {
      title: "Menu",
      text: "Potato Sauteed with Alcohol"
    },
    {
      title: "Review",
      text: "The snacks are kind and the boss is delicious"
    },
    {
      title: "Information",
      text: "Restaurant Location: XX Street, City"
    },
    // add additional info objects as needed
  ];

  var currentIndex = 0;
  var informationTitle = document.querySelector(".information h1");
  var informationText = document.querySelector(".information p");

  // Function to display the selected content
  function displayContent(button, content) {
    var info = informationData.find((item) => item.title === content);
    if (info) {
      currentIndex = informationData.indexOf(info);
      updateInformation();
      updateButtonColors(button);
    }
  }

  // information display update function
  function updateInformation() {
    var info = informationData[currentIndex];
    informationTitle.textContent = info.title;
    informationText.textContent = info.text;
  }

  // button color update function
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

  // Reservation button click processing function
  function makeReservation(event) {
    event.preventDefault(); // Prevent page refresh
    alert("Reservation complete!"); // Replace with your desired scheduling logic
  }

  // Function to handle the click of the Save button
  function addToShopWish(event) {
    event.preventDefault(); // Prevent page refresh
    alert("Save completed!"); // Replace with your wish logic
  }

  // display initial information
  updateInformation();

  // Add event listeners to the buttons
  var prevButton = document.getElementById("prevButton");
  var nextButton = document.getElementById("nextButton");
  var reservationButton = document.getElementById("reservationButton");
  var saveButton = document.getElementById("saveButton");

  prevButton.addEventListener("click", prev_but);
  nextButton.addEventListener("click", next_but);
  reservationButton.addEventListener("click", makeReservation);
  saveButton.addEventListener("click", addToShopWish);
});
