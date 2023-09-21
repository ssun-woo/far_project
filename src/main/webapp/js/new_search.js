/**
 * new_search.js
 */

$(document).ready(function() {
	$('.personnel-controls').hide();
	
	$('.search2Personnel2 p').click(function() {
    	$('.personnel-controls').toggle();
    });
    
	var adultCount = 0;
	var childCount = 0;
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

	function updateCounts() {
		$('#adultCount').text(adultCount);
        $('#childCount').text(childCount);
        $('.search2Personnel2 p').text('성인 ' + adultCount + ', 소아 ' + childCount);
 	}
 	
 	$(document).click(function(event) {
        if (!$('.search2Personnel2 p').is(event.target) && !$('.personnel-controls').is(event.target) && $('.personnel-controls').has(event.target).length === 0) {
            $('.personnel-controls').hide();
        }
    });
});