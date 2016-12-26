$(document).ready(function() {
	init();
});

var globalMap;
var globalMarker;
var globalGeocoder;

function init(){
	var xx = 0;
	var yy = 0;
	
	var xName = $('#xName').val();
	var yName = $('#yName').val();
	
	var xxStr = $('#'+xName, parent.document).val();
	var yyStr = $('#'+yName, parent.document).val();
	if(xxStr != null && xxStr != ""){
		xx = xxStr;
	}
	if(yyStr != null && yyStr != ""){
		yy = yyStr;
	}
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
		zoom: 16, 
		
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
	
	google.maps.event.addListener(globalMap, 'dragend', function(){// 드래그시 이벤트 추가
		//showMapAddr();
	});
	google.maps.event.addListener(globalMap, 'click', function(event){ // 지도클릭시 마커이동
		moveMarker(event.latLng); 
	});
	
	var myMarkerOptions = {
		position: globalMap.getCenter(),
		draggable: true,
		map: globalMap,
		//icon: "http://sstatic.naver.net/search/img2/ico_bal_a.gif", // 아이콘 설정할 때
		visible: true,
		animation: google.maps.Animation.DROP 
	};
	
	globalMarker = new google.maps.Marker(myMarkerOptions);
	
	google.maps.event.addListener(globalMarker, 'dragend', function(){// 드래그시 이벤트 추가
		getMarkPos();
	});
	//getMarkPos();
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
	var pos=globalMarker.getPosition();
	setMarkPosition(pos.lat(), pos.lng());
}

function setMarkPosition(lat, lng){
	document.getElementById('xxx').value = lat;
	document.getElementById('yyy').value = lng;
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
	codeAddress();
}

function clickAddress(a, addr,content){
	a.onmousedown = function(){
		globalMap.setCenter(addr);
		globalMarker.setPosition(addr);
		globalMarker.setAnimation(google.maps.Animation.DROP);
		getMarkPos();
	}; 
}