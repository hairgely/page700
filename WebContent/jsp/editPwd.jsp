<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Onpaging.com</title>
<link href="/t1/assets/css/bootstrap.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="/t3/css/styles.css" rel="stylesheet">
<style>
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
#page-inner{width : 500px;}
</style>
</head>
<body>
<div id="wrapper">
<%@ include file="/jsp/common/layout.jsp"%>
<div id="page-wrapper" >
	<div style="max-width:500px;">
		<div class="row" style="padding-left : 10px;">
			<h1>비밀번호 변경</h1>
		</div>
		<div class="row" style="padding-left : 10px;">
			<div id="finderrordiv"></div>
			<table>
				<tr><td class="linkClass">아이디 </td><td><input type="text" id="findid" style="height: 35px; width: 200px;" maxlength="50"/></td></tr>
				<tr><td class="linkClass">새 비밀번호 </td><td><input type="password" id="findpw" style="height: 35px; width: 200px;" maxlength="50"/></td></tr>
				<tr><td class="linkClass">새 비밀번호 확인 </td><td><input type="password" id="findpwconfirm" style="height: 35px; width: 200px;" maxlength="50"/></td></tr>
				<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
			</table>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-primary" onclick="editPwd();">저장</button>
			<button type="button" class="btn btn-default" onclick="goMain();">메인으로 이동</button>
		</div>
	</div>
</div>
 
</div>
 <div data-toggle="modal" data-target="#myModal" id="openModal" style="display: none;">&nbsp;</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title" id="myModalLabel"></h4>
</div>
<div class="modal-body" id="myModalLabelBody">
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" onclick="goMain();">확인</button>
</div></div></div></div>

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title">로그인</h4>
</div>
<div class="modal-body">
<br/>
<div id="loginerrordiv"></div>
<table>
<tr><td class="linkClass">아이디</td><td><input type="text" id="loginid" style="height: 30px; font-size: 18px; width: 250px;" /></td></tr>
<tr><td class="linkClass">비밀번호</td><td><input type="password" id="loginpw" style="height: 30px; font-size: 18px; width: 250px;" /></td></tr>
<tr><td>&nbsp;</td><td class="linkClass">
</td></tr></table>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" onclick="loginstart();">로그인</button>
<button type="button" class="btn btn-default" data-dismiss="modal" id="closeloginModal">닫기</button>
</div></div></div></div>

<div class="modal fade" id="joinModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title">회원가입</h4>
</div>
<div class="modal-body">
<div id="errordiv"></div>
<table>
<tr><td class="linkClass">아이디*</td><td><input type="text" id="joinid" style="height: 35px; width: 200px;" maxlength="50"/></td></tr>
<tr><td class="linkClass">비밀번호*</td><td><input type="password" id="joinpw" style="height: 35px; width: 200px;" maxlength="50"/></td></tr>
<tr><td class="linkClass">비밀번호확인</td><td><input type="password" id="joinpwconfirm" style="height: 35px; width: 200px;" maxlength="50"/></td></tr>
<tr><td class="linkClass">이메일</td><td><input type="text" id="joinemail" style="height: 35px; width: 200px;" maxlength="50"/> 비밀번호찾기용</td></tr>
<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
</table>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" onclick="joinStart();">저장</button>
<button type="button" class="btn btn-default" data-dismiss="modal" id="closejoinModal">닫기</button>
</div></div></div></div>

<script src="/t3/js/jquery-1.9.1.min.js"></script><script src="/t3/js/bootstrap.min.js"></script><script src="/t3/js/scripts.js"></script><script src="/t3/js/editPwd.js"></script>
<form id="topform" action=""><input type="hidden" id="dataTmp" /></form>
<button id="loading-indicator" class="btn btn-lg btn-warning" style="display:none;"><span class="glyphicon glyphicon-refresh glyphicon-refresh-animate" ></span> Loading...</button>
<input type="hidden" id="dataTmp3" value="${tmpKey}" />
</body>
</html>