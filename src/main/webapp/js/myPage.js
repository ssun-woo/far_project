/**
 * 
 */
  function loadReservationPage() {
        var pageContent = document.getElementById('pageContent');
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                pageContent.innerHTML = this.responseText;
            }
        };
        xhttp.open("GET", "/my_page/chkResv", true);
        xhttp.send();
    }
    
    function loadReservationPage2() {
        var pageContent = document.getElementById('pageContent');
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                pageContent.innerHTML = this.responseText;
            }
        };
        xhttp.open("GET", "/my_page/wishlist", true);
        xhttp.send();
    }
    
    function loadReservationPage3() {
        var pageContent = document.getElementById('pageContent');
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                pageContent.innerHTML = this.responseText;
            }
        };
        xhttp.open("GET", "/my_page/changeMyInfo", true);
        xhttp.send();
    }