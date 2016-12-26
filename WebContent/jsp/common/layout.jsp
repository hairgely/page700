<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0;border-radius : 0px;">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
			<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/main.do">page700.com</a> 
	</div>
	<div style="color: white; padding: 15px; float: right; font-size: 16px;" class="sidebar-collapse collapse"> 
	<c:choose>
		<c:when test="${not empty bean.id}">
			<a class="btn btn-danger square-btn-adjust" onclick="logout();">로그아웃</a> 
			<a class="btn btn-danger square-btn-adjust" id="ucateadd03" >카테고리 편집</a>
		</c:when>
		<c:otherwise>
			<a class="btn btn-danger square-btn-adjust" data-toggle="modal" data-target="#loginModal">로그인</a>
			<a class="btn btn-danger square-btn-adjust" data-toggle="modal" data-target="#joinModal">회원가입</a>
		</c:otherwise>
	</c:choose>
	<!-- 
		<a class="btn btn-danger square-btn-adjust" href="/topMain" target="_blank">Home</a> 
	 -->
	</div>
</nav> 

