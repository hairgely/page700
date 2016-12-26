$(document).ready(function() {
	init();
});

var globalMap;
var globalMarker;
var globalGeocoder;
var markers = [];
var mc;
function init(){
	var xx = 0;
	var yy = 0;
	
	initialize(xx,yy);
}
// 맵 초기화
function initialize(x, y) {
	// 입력된 좌표가 없으면 기본좌표 설정.
	if(x==0){ x=37.56641923090; }
	if(y==0){ y=126.9778741551; }
	
	globalGeocoder = new google.maps.Geocoder();
	
	var latlng = new google.maps.LatLng(x, y);
	
	var myOptions = {
		zoom: 15, 
		
		//disableDoubleClickZoom:false,
		center: latlng, 
		
		navigationControl: false,// 눈금자 형태로 스케일 조절하는 컨트롤 활성화 선택.
		navigationControlOptions: { 
		position: google.maps.ControlPosition.TOP_RIGHT,
		style: google.maps.NavigationControlStyle.DEFAULT // ANDROID, DEFAULT, SMALL, ZOOM_PAN
		},
		
		streetViewControl: false,
		
		scaleControl: false,// 지도 축적 보여줄 것인지.
		//scaleControlOptions: { position: google.maps.ControlPosition.TOP_RIGHT },
		
		mapTypeControl: false, // 지도,위성,하이브리드 등등 선택 컨트롤 보여줄 것인지
		mapTypeId: google.maps.MapTypeId.ROADMAP// HYBRID, ROADMAP, SATELLITE, TERRAIN
	}; 
	
	    
	globalMap = new google.maps.Map(document.getElementById("map_canvas"), myOptions); 
	
	var mcOptions = {
			gridSize: 50,
			maxZoom: 15
	};
	mc = new MarkerClusterer(globalMap, [], mcOptions);
	
	google.maps.event.addListener(globalMap, 'dragend', function(){// 드래그시 이벤트 추가
		//showMapAddr();
	});
	google.maps.event.addListener(globalMap, 'click', function(event){ // 지도클릭시 마커이동
		//moveMarker(event.latLng); 
	});
	
	google.maps.event.addListener(globalMap, 'zoom_changed', function() {
		//resizeMarker();
	});
	/*var myMarkerOptions = {
		position: globalMap.getCenter(),
		draggable: false,
		map: globalMap,
		//icon: "http://sstatic.naver.net/search/img2/ico_bal_a.gif", // 아이콘 설정할 때
		visible: true,
		animation: google.maps.Animation.DROP 
	};*/
	
	//globalMarker = new google.maps.Marker(myMarkerOptions);
	
	//google.maps.event.addListener(globalMarker, 'dragend', function(){// 드래그시 이벤트 추가
	//	getMarkPos();
	//});
	//getMarkPos();
	getLocations();
	
}
 
// 드래그할 때 맵 중앙 좌표의 주소
function showMapAddr(){
	globalGeocoder.geocode( { 'location': globalMap.getCenter()}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			var str="";
			for(var i=3; i>=0; i--){
				str += " "+results[0].address_components[i].short_name;
			}
			document.getElementById("txtAddress").innerHTML=str;
			//document.getElementById("txtAddress").innerHTML=results[0].address_components[0].long_name;
		} else {
			alert("Geocode was not successful for the following reason: " + status);
		}
	});
}

// 마크좌표 가져오기
function getMarkPos(){
	//var pos=globalMarker.getPosition();
	//parent.setMarkPosition(xName, yName, pos.lat(), pos.lng());
}

function addMarker(x, y, z) {
	var location = new google.maps.LatLng(x, y);
	/*var populationOptions = {
		      strokeColor: '#FF0000',
		      strokeOpacity: 0.35,
		      strokeWeight: 1,
		      fillColor: '#FF0000',
		      fillOpacity: 0.35,
		      map: globalMap,
		      center: location,
		      radius: Math.sqrt(z) * 100,
		      title : x+" "+y
		    };*/
	var marker = new google.maps.Marker({
        position: location,
        map: globalMap,
        icon: '/images/chart.png',
        zIndex: Math.round(location.lat() * -100000) << 5
    });
	
	//var marker = new google.maps.Circle(populationOptions);
	 
	  /*var marker = new google.maps.Marker({
	    position: location,
	    map: globalMap,
	    icon : 'images/beachflag.png'
	  });*/
	marker.x = x;
	marker.y = y;
	  markers.push(marker);
	}

// 지도 클릭시 마커 이동
function moveMarker(loc){
	//alert(loc);
	globalMarker.setPosition(loc);
	getMarkPos();
}

function codeAddress(){
	$('#GoogleMap_addr').html("");
	var address = $('#GoogleMap_input').val();
	address = address +", KR";
	//콜백 함수 호출.
	globalGeocoder.geocode( { 'address': address}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			var ul = document.createElement('div');
			for(var i=0; i<results.length; i++){
				var li = document.createElement('div'); 
				li.className = "googleSearchResultDiv";
				var a = document.createElement('a');
				a.className = "googleSearchResult";
				
				a.href = "#";
				a.innerHTML = results[i].formatted_address;
				clickAddress(a, results[i].geometry.location,
				results[i].formatted_address);
				
				li.appendChild(a);
				ul.appendChild(li);
			}
			document.getElementById("GoogleMap_addr").appendChild(ul);
		}
	});
}

function copyAddress(){
	var addr = $('#addr').val();
	var addrDetail = $('#addrDetail').val();
	var addr1 = $('#'+addr, parent.document).val();
	var addr2 = $('#'+addrDetail, parent.document).val();
	var address = addr1+' '+addr2;
	$('#GoogleMap_input').val(address);
	//codeAddress();
}

function clickAddress(a, addr,content){
	a.onmousedown = function(){
		globalMap.setCenter(addr);
		globalMarker.setPosition(addr);
		globalMarker.setAnimation(google.maps.Animation.DROP);
		getMarkPos();
	}; 
}

function getLocations(){
	$.post("" +'/map/getLocations', {
		ordby:''
	}, function(data) {
		var totalCnt = data.resultList.length;
		$('#totalCnt').text(totalCnt);
		for(var i=0;i<totalCnt;i++){
			var evt = data.resultList[i];
			addMarker(evt.lat, evt.lon, 0.1);
		}
		 mc.addMarkers(markers, true);
		//allView(data.resultList);
	}, 'json').error(function(){
	});
}

function allView(resultList){
	
	var LatLngList = new Array ();
	var cnt = 0;
	
	for(var i=0;i<resultList.length;i++){
		var evt = resultList[i];
		LatLngList[cnt] = new google.maps.LatLng (evt.lat, evt.lon);
		cnt++;
	}
	
	var bounds = new google.maps.LatLngBounds();
	for (var i = 0, LtLgLen = LatLngList.length; i < LtLgLen; i++) {
	  bounds.extend (LatLngList[i]);
	}
	globalMap.fitBounds (bounds);
	
}

function setAllMap(map) {
  for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(map);
  }
}
function clearMarkers() {
	  setAllMap(null);
	}

function resizeMarker(){
	clearMarkers();
	var zoom = globalMap.getZoom();
	var zz = 2;
	if(zoom < 5){
		zz = zz*((5 - zoom)*10);
	}
	var size = 0.1 + ((15 - zoom) * zz);
	if(size <= 0){
		size = 0.1;
	}
	var markersTmp = markers;
	markers = [];
	for (var i = 0; i < markersTmp.length; i++) {
		addMarker(markersTmp[i].x ,markersTmp[i].y ,size);
	}
}
function showMarkers() {
	  setAllMap(globalMap);
	}