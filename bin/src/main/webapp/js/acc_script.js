/**
 * acc_script.js
 */
 
document.addEventListener('DOMContentLoaded', function() {
	var location = document.querySelector('.location');
	var regionList = document.getElementById('regionList');
	var cityList = document.getElementById('cityList');

	regionList.addEventListener('mouseover', function(event) {
	    var target = event.target;
	    var region = target.getAttribute('data-region');
	    if (region) {
	        var cities = getCitiesByRegion(region);
	        displayCityList(cities);
      	}
	});

	location.addEventListener('mouseout', function(event) {
		var relatedTarget = event.relatedTarget;
		// relatedTarget이 location 또는 그 자식 요소들인지 확인
		if (!relatedTarget || !location.contains(relatedTarget)) {
			cityList.innerHTML = '';
			cityList.style.display = 'none';
		}
	});
	
	function getCitiesByRegion(region) {
	    var cityData = {
	      	 '서울': ['강남', '서초'],
	      	 '경기': ['수원', '가평'],
	      	 '강원': ['평창', '강릉'],
	      	 '경상': ['경주', '포항'],
	      	 '전라': ['광주', '여수'],
	      	 '충청': ['보령', '제천'],
	      	 '제주': ['성산', '애월']
	    };
	
	    return cityData[region] || [];
	}
	
	function displayCityList(cities) {
	    cityList.innerHTML = '';
	    if (cities.length === 0) {
	        cityList.style.display = 'none';
	    } else {
	        for (var i = 0; i < cities.length; i++) {
	        	var city = cities[i];
	        	var li = document.createElement('li');
	        	li.textContent = city;
	        	cityList.appendChild(li);
	        }
	        cityList.style.display = 'block';
	    }
    }
}); 