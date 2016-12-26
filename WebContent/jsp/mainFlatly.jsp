<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:set var="rootStr" value=""></c:set>
<meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Onpaging.com</title>
<link href="${rootStr }/t1/assets/css/bootstrap.css" rel="stylesheet"><link href="${rootStr }/t3/css/custom.css" rel="stylesheet" /><link rel="shortcut icon" href="${rootStr }/images/favi/fa.ico">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="${rootStr }/t3/css/styles.css" rel="stylesheet">
<style>
.modal-body{padding-top:10px;}
.linkClass{padding-left:10px;}
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
		<%@ include file="../jsp/common/side.jsp"%>
		<div class="column col-sm-10 col-xs-10" id="main">
			<%@ include file="../jsp/common/layout.jsp"%>
			<div class="padding">
				<div class="full col-sm-9">
					<!-- content <hr>-->
					<div class="row" id="submenu" style=""></div>
					<div class="row" id="dataDis"></div>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>

<%@ include file="../jsp/common/popup.jsp"%>

<form id="topform" action=""><input type="hidden" id="dataTmp" /></form>
<button id="loading-indicator" class="btn btn-lg btn-warning" style="display:none;"><span class="glyphicon glyphicon-refresh glyphicon-refresh-animate" ></span> Loading...</button>
<input type="hidden" id="dataTmp2" value="${bean.id}" /><input type="hidden" id="dataTmp3" value="${userId}" />
<script src="${rootStr }/t3/js/jquery-1.9.1.min.js"></script><script src="${rootStr }/t3/js/bootstrap.min.js"></script><script src="${rootStr }/t3/js/scripts.js"></script><script src="${rootStr }/t3/js/main.js"></script>
</body>
</html>