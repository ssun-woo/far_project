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
        xhttp.open("GET", "chkReservation.jsp", true);
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
        xhttp.open("GET", "Jjim.jsp", true);
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
        xhttp.open("GET", "chk_pwd.jsp", true);
        xhttp.send();
    }