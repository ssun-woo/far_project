function show () {
    	  document.querySelector(".background").className = "background show";
    	}

    	function close () { 
    	  document.querySelector(".background").className = "background close";
    	}

    	document.querySelector("#review_write").addEventListener('click', show);
    	document.querySelector("#closeButton").addEventListener('click', close);