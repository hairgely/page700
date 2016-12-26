<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Onpaging.com</title>
<link href="/t1/assets/css/bootstrap.css" rel="stylesheet"><link href="/t3/css/custom.css" rel="stylesheet" /><link rel="shortcut icon" href="/images/favi/fa.ico">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="/t3/css/styles.css" rel="stylesheet">
<style>
  #map_canvas { 
  margin: 0 auto;text-align:left;float:left;
  width: 97%;  height: 96%;vertical-align:top;
    min-height:100%;}
 #map_canvas, .full, .padding2, #main, .box, .wrapper{
 height: 95%;vertical-align:top;
 }
.catelist{cursor: pointer;}
.mainDivd2{cursor: pointer;}
.catelistButton{margin:5px;}
.catelist2{cursor: pointer;margin:5px;}
.sidemenu{cursor: pointer;}
.pointer{cursor: pointer;}
#errordiv{color:red;font-weight: bold;}
#loginerrordiv{color:red;font-weight: bold;}
#finderrordiv{color:red;font-weight: bold;}
.panel-body{padding:5px;}
#loading-indicator {position: absolute;right: 50px;top: 100px;z-index : 99999;}
.glyphicon-refresh-animate {-animation: spin .7s infinite linear;-webkit-animation: spin2 .7s infinite linear;}
@-webkit-keyframes spin2 {from { -webkit-transform: rotate(0deg);}to { -webkit-transform: rotate(360deg);}}
@keyframes spin {from { transform: scale(1) rotate(0deg);}to { transform: scale(1) rotate(360deg);}}
a:active .imageClass{border:1px solid blue;}
a:active .panel-default{border:1px solid blue;}
</style>
</head>
<body>
<div class="wrapper">
	<div class="box">
		<div class="row row-offcanvas row-offcanvas-left">
		<%@ include file="/jsp/common/side2.jsp"%>
		<div class="column col-sm-10 col-xs-10" id="main">
			<%@ include file="/jsp/common/layout.jsp"%>
			<div class="padding2">
				<div class="full" style="vertical-align:top;">
					<!-- content <hr>-->
					<div class="" id="map_canvas" ></div>
					<input type="text" id="xxx" />
					<input type="text" id="yyy" />
				</div>
			</div>
		</div>
		</div>
	</div>
</div>

<%@ include file="/jsp/common/popup.jsp"%>

<form id="topform" action=""><input type="hidden" id="dataTmp" /></form>
<button id="loading-indicator" class="btn btn-lg btn-warning" style="display:none;"><span class="glyphicon glyphicon-refresh glyphicon-refresh-animate" ></span> Loading...</button>
<input type="hidden" id="dataTmp2" value="${bean.id}" /><input type="hidden" id="dataTmp3" value="${userId}" />
<script src="/t3/js/jquery-1.9.1.min.js"></script><script src="/t3/js/bootstrap.min.js"></script><script src="/t3/js/scripts.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&region=KR"></script>
<script type="text/javascript" src='/t3/js/markerclusterer_compiled.js'></script>
<script type="text/javascript" src='/t3/js/googleMap.js'></script>
<script type="text/javascript">
</script>
</body>
</html>