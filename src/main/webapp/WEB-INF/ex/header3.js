/**
 * header3
 */

document.addEventListener('DOMContentLoaded', function() {
	var inputDestination = document.getElementById('destination');
	var accSearch = document.querySelector('.accSearch');
	var regionList = document.getElementById('regionList');
	var cityList = document.getElementById('cityList');
	
	// input 클릭 시
	inputDestination.addEventListener('click', function() {
		accSearch.style.display = 'block';
	});
	
	// 지역 선택
	regionList.addEventListener('click', function(event) {
		var target = event.target;
		if (target.tagName === 'A') {
			var selectedRegion = target.textContent;
			inputDestination.value = selectedRegion;
			accSearch.style.display = 'none';
		}
	});
	
	// 도시 선택
	cityList.addEventListener('click', function(event) {
		var target = event.target;
		if (target.tagName === 'LI') {
			var selectedCity = target.textContent;
			inputDestination.value = selectedCity;
			accSearch.style.display = 'none';
		}
	});

	// 외부를 클릭 시 숨김
  	document.addEventListener('click', function(event) {
    	if (!accSearch.contains(event.target) && event.target !== inputDestination) {
      		accSearch.style.display = 'none';
    	}
  	});
});



$(document).ready(function() {
	$('.personnel-controls').hide();
	
	$('.search2Personnel2 p').click(function() {
    	$('.personnel-controls').toggle();
    });
    
	var adultCount = 0;
	var childCount = 0;
	var roomCount = 0;
	updateCounts();
	
	$('#decreaseAdult').click(function() {
    	if (adultCount > 0) {
			adultCount--;
			updateCounts();
        }
	});

	$('#increaseAdult').click(function() {
		adultCount++;
        updateCounts();
	});

	$('#decreaseChild').click(function() {
		if (childCount > 0) {
			childCount--;
			updateCounts();
		}
	});

	$('#increaseChild').click(function() {
        childCount++;
        updateCounts();
	});

	$('#decreaseRoom').click(function() {
		if (roomCount > 0) {
			roomCount--;
			updateCounts();
		}
	});

	$('#increaseRoom').click(function() {
		roomCount++;
        updateCounts();
	});

	function updateCounts() {
		$('#adultCount').text(adultCount);
        $('#childCount').text(childCount);
        $('#roomCount').text(roomCount);
        $('.search2Personnel2 p').text('성인 ' + adultCount + ', 소아 ' + childCount + ', 객실 ' + roomCount);
 	}
 	
 	$(document).click(function(event) {
        if (!$('.search2Personnel2 p').is(event.target) && !$('.personnel-controls').is(event.target) && $('.personnel-controls').has(event.target).length === 0) {
            $('.personnel-controls').hide();
        }
    });
});