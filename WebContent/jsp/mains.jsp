<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Onpaging.com</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="/t1/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="/t1/assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="/t1/assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
   
    <link rel="shortcut icon" href="/images/favi/fa.ico">
    
   <style>
   .catelist{cursor: pointer;}
   .catelist2{cursor: pointer;}
   .sidemenu{cursor: pointer;}
   .pointer{cursor: pointer;}
   #errordiv{color:red;font-weight: bold;}
   #loginerrordiv{color:red;font-weight: bold;}
   .panel-body{padding:5px;}
   </style>
</head>
<body>
sssssssssssssssssssssssssssssssssssssssssss
    <div id="wrapper">
    	<%@ include file="/jsp/common/layout.jsp"%>
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h3 id="datatitle"></h3>
                    <!-- 
                     <h2>Tabs & Panels </h2>   
                     -->
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr />
                
            <div class="row" id="submenu">
           	</div>
            <div class="row" id="dataDis">
            </div>
                   <!-- /. ROW  -->

    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        
        </div>
         <div data-toggle="modal" data-target="#myModal" id="openModal" style="display: none;">&nbsp;</div>
         <div data-toggle="modal" data-target="#myModalConfirm" id="openConfirmModal" style="display: none;">&nbsp;</div>
         <div data-toggle="modal" data-target="#myModalAdd" id="openAddModal" style="display: none;">&nbsp;</div>
         <div data-toggle="modal" data-target="#myModalCate" id="openCateModal" style="display: none;">&nbsp;</div>
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
        <button type="button" class="btn btn-default" data-dismiss="modal" id="closeModal();">닫기</button>
      </div>
    </div>
  </div>
</div>
  <div class="modal fade" id="myModalConfirm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalConfirmLabel"></h4>
      </div>
      <div class="modal-body" id="myModalConfirmLabelBody">
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-primary" onclick="saveConfirm();" id="saveConfirmBtn">저장</button>
        <button type="button" class="btn btn-default" data-dismiss="modal" id="closeConfirmModal">닫기</button>
      </div>
    </div>
  </div>
</div>
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
				<tr><td class="linkClass">아이디</td><td><input type="text" id="joinid" style="height: 35px; width: 200px;" maxlength="50"/></td></tr>
				<tr><td class="linkClass">비밀번호</td><td><input type="password" id="joinpw" style="height: 35px; width: 200px;" maxlength="50"/></td></tr>
				<tr><td class="linkClass">비밀번호확인</td><td><input type="password" id="joinpwconfirm" style="height: 35px; width: 200px;" maxlength="50"/></td></tr>
				<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
				</table>
				<table><tr><td style="font-size:18px;">*아이디 찾기 또는 비밀번호 찾기 기능은 지원하지 않습니다.</td></tr><tr><td style="font-size:18px;">*비밀번호는 암호화하지 않습니다. 쉬운 비밀번호를 사용해주세요.</td></tr></table>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="joinStart();">저장</button>
        <button type="button" class="btn btn-default" data-dismiss="modal" id="closejoinModal">닫기</button>
      </div>
    </div>
  </div>
</div>
  <div class="modal fade" id="myModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">사이트추가</h4>
      </div>
      <div class="modal-body">
      <div id="errordiv12" style=""></div>
        	<table>
				<tr><td class="linkClass">이름</td><td><input type="text" id="insitename2" style="height: 35px; width: 200px;" maxlength="50"/></td></tr>
				<tr><td class="linkClass">URL주소</td><td><input type="text" id="insiteaddr2" style="height: 35px; width: 200px;" maxlength="50"/></td></tr>
				<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
				</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="setSite2();">저장</button>
        <button type="button" class="btn btn-default" data-dismiss="modal" id="closeAddModal">닫기</button>
      </div>
    </div>
  </div>
</div>

  <div class="modal fade" id="myModalCate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">카테고리 편집</h4>
      </div>
      <div class="modal-body">
      <div style="margin-left:10px;font-size:27px;">카테고리 추가</div>
        	<table>
				<tr><td><input type="text" id="ucateaddtext" style="height: 25px; width: 200px;" maxlength="50"/>&nbsp;<span class="mainDiv titlediv6" id="ucateaddok" style="font-size: 20px;cursor: pointer;padding-left: 10px;padding-right: 10px;">추가</span>&nbsp;<span class="mainDiv titlediv6" id="ucateaddno" style="font-size: 20px;cursor: pointer;padding-left: 10px;padding-right: 10px;">취소</span></td></tr>
				</table>
		<br/><br/>
	<div style="margin-left: 10px;font-size: 27px;">카테고리 수정</div>
	<div style="height:100px;overflow:auto;">
	<table border="1" border-color="#EEEEEE" id="ucateedittable" style="margin-right: 15px;width: 510px;border: solid;border-width: 1px;border-color: #EEEEEE;"></table>
	</div>
	
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" id="closeCateModal">닫기</button>
      </div>
    </div>
  </div>
</div>
  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">로그인</h4>
      </div>
      <div class="modal-body">
      <div id="loginerrordiv"></div>
        	<table>
			<tr><td class="linkClass">아이디</td><td><input type="text" id="loginid" style="height: 30px; font-size: 18px; width: 250px;" /></td></tr>
			<tr><td class="linkClass">비밀번호</td><td><input type="password" id="loginpw" style="height: 30px; font-size: 18px; width: 250px;" /></td></tr>
			<tr><td>&nbsp;</td><td class="linkClass">
			<div class="mainDiv" style="cursor: pointer; width: 150px; height: 40px; background-color: #DADADA; text-align: center; margin: 5px;padding-top: 8px;" onclick="loginstart();">로그인</div>
			</td></tr></table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="loginStart();">저장</button>
        <button type="button" class="btn btn-default" data-dismiss="modal" id="closeloginModal">닫기</button>
      </div>
    </div>
  </div>
</div>


     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="/t1/assets/js/jquery-1.9.1.min.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="/t1/assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="/t1/assets/js/jquery.metisMenu.js"></script>
    <script type="text/javascript">
    var webm = 0;
    var catehtml = '<div class="mainDiv titlediv catelist" ';
	var catehtml2 = '</div>';
	var sitehtml = '<div class="mainDiv" style="cursor:pointer;width: 155px;height: 155px;background-color: #DADADA;text-align: center;margin: 5px;float: left;"';
	var sitehtmlmy = '<div class="mainDiv" style="cursor:pointer;width: 155px;height: 220px;background-color: #DADADA;text-align: center;margin: 5px;float: left;"';
	var catehtml3 = '<div style="clear:both"></div>';
	var loginflg = false;
	var editmode = true;
	var cateData = [];
	var ucaten = "";
	var ucatentext = "";
   $(function() {
	   var UserAgent = navigator.userAgent; 
		if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null){
			webm = 1;
		}else{
			webm = 0;
		}
		$('#ucateadd03').click(function(){
			$("#openCateModal").click();
			$(this).css("background-color","#ffa500");
			
			var html = viewucateedit();
			
			if(html != ""){
				$("#ucateedittable").html(html);
			}
			clickcheck = true;
		});
		
		//추가버튼
		$('#ucateaddok').click(function(){
			var title = $('#ucateaddtext').val();
			if(title != ""){
			var ordby = 0; 
			$('.mainDivd2').each(function(t){
				if(ordby = $(this).attr("ordby")){
					ordby = $(this).attr("ordby");
				}
			});
				$.post("" +'/plagiarism/ucateadd', {
					mode : '',
					id : $('#dataTmp').data("login.id"),
					title : encodeURIComponent(title),
					ordby  :ordby
				}, function(data) {
					var html = viewucate(data);
					$('#ucateaddno').click();
					if (html != '') {
						$('.mainDivd2').remove();
						$('#divSide01').show();
						$('#cateDis').append(html);
						
						var html2 = viewucateedit();
						if(html2 != ""){
							$("#ucateedittable").html(html2);
						}
					}
					
					
				}, 'json').error(function(){
				});
			}else{
				alert("카테고리명을 입력해주세요");
			}
			
			$('#ucateaddtext').val("");
		});
		$('#ucateaddno').click(function(){
			$('#ucateaddtext').val("");
		});
		getCate();

	});
   
   function viewucateedit(){
		var html = "";
		
		$('.mainDivd2').each(function(t){
			var nname = $(this).attr("nname");
			var num = $(this).attr("num");
			//var stype = $(this).attr("stype");
			//var sgroup = $(this).attr("sgroup");
			var ordby = $(this).attr("ordby");
			html += '<tr id="ucatetr00'+t+'">';
			html += '<td height="20px;" width="390px">';
			html += '<div id="ucateeditlist00'+t+'" cname1="ucateedittabletd01'+t+'" cname2="ucateedittabletd02'+t+'" style="width: 380px;overflow: hidden;" onclick="ucateeditname(\''+num+'\',\'ucateeditlist00'+t+'\');">'+nname+'</div>';
			html += '</td>';
			html += '<td class="ucateedittabletd01'+t+'" width="40px;" onclick="ucateeditnamedel(\''+num+'\',\'ucatetr00'+t+'\');">삭제</td>';
			html += '<td class="ucateedittabletd01'+t+'" width="20px;" onclick="ucateeditnameup(\''+num+'\',\'ucatetr00'+t+'\',\''+ordby+'\');">▲</td>';
			html += '<td class="ucateedittabletd01'+t+'"  width="20px;" onclick="ucateeditnamedown(\''+num+'\',\'ucatetr00'+t+'\',\''+ordby+'\');">▼</td>';
			html += '<td class="ucateedittabletd02'+t+'" style="display: none;">&nbsp;</td>';
			html += '<td class="ucateedittabletd02'+t+'" style="display: none;" width="40px;" onclick="ucateeditnameok();">변경</td>';
			html += '<td class="ucateedittabletd02'+t+'" style="display: none;" width="40px;" onclick="ucateeditnameno();">취소</td>';
			html += '</tr>';
		});
		return html;
	}
   
   function getCate() {
	   
		$('#cateDis').empty();
		$('#dataDis').empty();
		$.post('/plagiarism/getCate', {
			mode : ''
		}, function(data) {
			var html = '';

			html += '<li>';
			html += '<a class="catelist" onclick="getSite(\'0\');" nname="내즐겨찾기" num="0">내즐겨찾기</a>';
			html += '</li>';
			cateData = data.resultCate;
			for ( var k = 0; k < data.resultCate.length; k++) {
				var cate = data.resultCate[k];
				if(cate.stype=='0'){
					html += '<li>';
					html += '<a class="catelist" onclick="getSite(' + cate.num + ');" nname="'+cate.name+'" num="'+cate.num+'">';
					html += cate.name;
					html += '</a></li>';
				}
			}
			if (html != '') {
				$('#cateDis').html(html);
				if(loginflg){
					getSite(0);
				}else{
					getSite(1);
				}
				if(webm == 1){
					hideCate();
				}
			}
		}, 'json');
	}
   
   function getSite(cate) {
		
		$('.catelist').each(function(){
			var num = $(this).attr("num");
			if(num == cate){
				$('#datatitle').text($(this).attr("nname"));
				$(this).css("background-color","#ffa500");
			}else{
				$(this).css("background-color","");
			}
		});
		if(cate != 0){
			getsubcate(cate);
		}else{
			$('#submenu').empty().hide();
			getSiteLo(cate,false);
		}
		
	}
   
   function getsubcate(cate){
		$('#submenu').empty();
		var html = "";
		for ( var k = 0; k < cateData.length; k++) {
			var cateTmp = cateData[k];
			if(cate == cateTmp.sgroup && cateTmp.stype=='1'){
				html += '<div class="col-xs-4 col-sm-4 col-md-3 col-lg-2" >';
				html += '<div class="panel catelist2" onclick="getSiteLo('+cateTmp.num+',true);" num="'+cateTmp.num+'">';
				html += '<div class="panel-heading">';
				html += cateTmp.name;
				html += '</div>';
				html += '</div>';
				html += '</div>';
			}
		}
		if (html != '') {
			$('#submenu').html(html).show();
			$('#submenu .catelist2:eq(0)').click();
			
		}else{
			$('#submenu').hide();
			getSiteLo(cate, false);
		}
	}
   
   function getSiteLo(cate, stpes){
		
		$('#dataDis').empty();
		
		if(cate == 0 && !loginflg){
			$('#dataDis').text("로그인 해주세요.");
		}else{
			var iid = $('#dataTmp').data("login.id");
			$.post('/plagiarism/getSite', {
				mode : '',
				cate : cate,
				iid : iid
			}, function(data) {
				
				if(stpes){
					$('#submenu .catelist2').each(function(){
						var num = $(this).attr("num");
						if(num == cate){
							$(this).css("background-color","#ffa500");
						}else{
							$(this).css("background-color", "#DADADA");
						}
					});
				}
				
				var html = '';
				for ( var i = 0; i < data.resultList.length; i++) {
					var evt = data.resultList[i];
					
					html += '<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2" >';
					html += '<div class="panel panel-default">';
					html += '<div class="panel-heading">';
					html += evt.name;
					html += '</div>';
					html += '<div class="panel-body">';
					html += '<img class="pointer imageClass" ads="'+evt.addre+'" src="./img/site/'+evt.num+'.png" style="margin-top:5px;width:100%;height:100%;" onclick="goOpen(\'';
					if(webm == 0 || (evt.addrem == null || evt.addrem == "null" || evt.addrem == "")){
						html += evt.addre + '\');" />';
					}else{
						html += evt.addrem + '\');" />';
					}
					html += '</div>';
					html += '<div class="panel-footer">';
					if(cate == 0){
						html += '<a><span class="glyphicon glyphicon-minus pointer" onclick="delfavorite(\''+evt.num+'\');"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
						//html += '<a><span class="glyphicon glyphicon-chevron-left pointer" onclick="orderprev(\''+evt.num+'\',\''+evt.orderb+'\');"></span></a>';
						//html += '<a class="sitename" num="'+evt.num+'" orderb="'+evt.orderb+'"><span class="glyphicon glyphicon-chevron-right pointer" onclick="ordernext(\''+evt.num+'\',\''+evt.orderb+'\');"></span></a>';
					}else{
						html += '<a><span class="glyphicon glyphicon-plus pointer" onclick="addfavorite(\''+evt.num+'\');"></span></a>';
					}
					html += '</div>';
					html += '</div>';
					html += '</div>';
				}
				if (html != '') {
					$('#dataDis').html(html);
					
					 $('img').each(function(n){
				       $(this).error(function(){
				         var ads = $(this).attr('ads');
				         $(this).attr('src', 'http://img.bitpixels.com/getthumbnail?code=48861&size=200&url='+ads);
				       });
				    });
				}
			}, 'json');
		}

	}
   
   function hideCate(){
	   var showFlg = $('#cateDis').data("showFlg");
	   if(showFlg != 'N'){
		   $('#cateDis').find("li").hide();
		   $('#cateDis').data("showFlg", "N");
	   }else{
		   $('#cateDis').find("li").show();
		   $('#cateDis').data("showFlg", "Y");
	   }
	   
   }
   function goOpen(addre,num) {
		window.open(addre);
	}
   
   function addfavorite(num) {
	   var iid = $('#dataTmp').data("login.id");
		if(iid == null || iid == ""){
			messagePopup("로그인이 필요한 기능입니다.","즐겨찾기");
		}else{
			
			$.post('/plagiarism/addfavorite', {
				mode : '', num : num, iid : iid
			}, function(data) {
				messagePopup("저장되었습니다.","즐겨찾기");
			}, 'json');
		}
		
	}
  
   function joinStart(){
		var id = $('#joinid').val();
		var pwd = $('#joinpw').val();
		var cpwd = $('#joinpwconfirm').val();
		console.log('test');
		if(id == ''){
			$('#errordiv').text("아이디를 입력해 주세요.");
		}else if(id.length < 4){
			$('#errordiv').text("아이디는 4자리 이상 입력하세요.(비밀번호는 제약없음)");
		}else if(pwd == ''){
			$('#errordiv').text("비밀번호를 입력해 주세요.");
		}else{
			if(pwd != cpwd){
				$('#errordiv').text("비밀번호와 비밀번호확인이 일치하지 않습니다.");
			}else{
				$('#errordiv').text("");
				$.post('/plagiarism/joinStart', {
					mode : 'joinStart',
					id : id,
					pwd : pwd
				}, function(data) {
					if(data.result == "1"){
						$('#errordiv').text("이미 존재하는 아이디 입니다.");
					}else{
						
						$('#joinid').val("");
						$('#joinpw').val("");
						$('#joinpwconfirm').val("");
						
						$('#closejoinModal').click();
						messagePopup("가입 되었습니다.","회원가입");
					}
				}, 'json');
			}
		}
	}
   
   function loginstart(){
		var id = $('#loginid').val();
		var pwd = $('#loginpw').val();
		if(id == ''){
			$('#loginerrordiv').text("아이디를 입력해 주세요.");
		}else if(pwd == ''){
			$('#loginerrordiv').text("비밀번호를 입력해 주세요.");
		}else{
			$('#loginerrordiv').text("");
			$.post('/plagiarism/loginstart', {
				mode : '',
				id : id,
				pwd : pwd
			}, function(data) {
				if(data.result == "1"){
					$('#loginerrordiv').text("아이디 또는 비밀번호가 일치하지 않습니다.");
				}else if(data.result == "2"){
					$('#loginerrordiv').text("아이디 또는 비밀번호가 일치하지 않습니다.");
				}else{
					
					$('#loginerrordiv').text("");
					$('#loginid').val("");
					$('#loginpw').val("");
					
					$('#closeloginModal').click();
					
					$('#cateDis01').empty();
					
					
					loginflg = true;
					$('#dataTmp').data("login.id",id);
					
					$('#logintext').hide();
					$('#jointext').hide();
					$('#logouttext').show();
					
					getSite(0);
					$('#ucateaddno').click();
					
					var html = viewucate(data);

					if (html != '') {
						$('.mainDivd2').remove();
						$('#cateDis').append(html);
					}
					//if(id == "test1"){
						$('#divSide00').show();
					//}
				}
			}, 'json');
		}
	}
   
   function messagePopup(message, title){
	   $('#myModalLabel').text(title);
	   $('#myModalLabelBody').text(message);
	   $('#openModal').click();
   }
   
   function messageConfirmPopup(message, title, type, num){
	   $('#myModalConfirmLabel').text(title);
	   $('#myModalConfirmLabelBody').text(message);
	   $('#saveConfirmBtn').data("type",type);
	   $('#saveConfirmBtn').data("num",num);
	   $('#openConfirmModal').click();
   }
   
   function logout() {
		loginflg = false;
		$('#dataTmp').data("login.id","");
		
		$('#logintext').show();
		$('#jointext').show();
		$('#logouttext').hide();
		$('#divSide00').hide();
		$('.mainDivd2').each(function(){
			$(this).closest("li").remove();
		});
		getSite(1);
	}
   
   function viewucate(data){
		var html = "";

		for ( var k = 0; k < data.resultList.length; k++) {
			var cate = data.resultList[k];
			html += '<li>';
			html += '<a class="catelist mainDivd2" onclick="getSiteu(' + cate.num + ');" nname="'+cate.name+'" num="'+cate.num+'" stype="'+cate.stype+'" sgroup="'+cate.sgroup+'" ordby="'+cate.ordby+'">';
			html += cate.name+"*";
			html += '</a></li>';
		}
		return html;
	}
   
   function getSiteu(cate){
		ucaten = cate;
		$('.catelist').each(function(){
			var num = $(this).attr("num");
			if(num == cate){
				$('#datatitle').text($(this).attr("nname"));
				$(this).css("background-color","#ffa500");
				ucatentext = $(this).attr("nname");
			}else{
				$(this).css("background-color", "");
			}
		});
		$('#submenu').empty();	
		var iid = $('#dataTmp').data("login.id");
		 $.post('/plagiarism/getSiteu', {
			mode : 'getSiteu', cate : cate, iid : iid
		}, function(data) {
			
			var html = '';
			for ( var i = 0; i < data.resultList.length; i++) {
				var evt = data.resultList[i];
				
				html += '<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2" >';
				html += '<div class="panel panel-default">';
				html += '<div class="panel-heading">';
				html += evt.name;
				html += '</div>';
				html += '<div class="panel-body">';
				html += '<img class="pointer imageClass" src="http://img.bitpixels.com/getthumbnail?code=48861&size=200&url='+evt.addre+'" style="margin-top:5px;width:100%;height:100%;" onclick="goOpen(\'';
				if(webm == 0 || (evt.addrem == null || evt.addrem == "null" || evt.addrem == "")){
					html += evt.addre + '\');" />';
				}else{
					html += evt.addrem + '\');" />';
				}
				html += '</div>';
				html += '<div class="panel-footer">';
				html += '</div>';
				html += '</div>';
				html += '</div>';
			}
			
			if(editmode || i == 0){
				html += '<div class="mainDivd" id="siteuadd01" onclick="dirinput2();" style="cursor:pointer;width: 155px;height: 155px;background-color: #DADADA;text-align: center;margin: 5px;float: left;font-size:30px">사이트추가</div>';
			}
			if (html != '') {
				$('#dataDis').html(html);
			}
			
		}, 'json');
	}
   
   function dirinput2(){
		$('#errordiv12').text("");
		$('#catetitlediv12').text(ucatentext);
		$("#openAddModal").click();
	}
   
   function delfavorite(num) {
	   messageConfirmPopup("삭제하시겠습니까?","즐겨찾기","delfavorite",num);
	}
   
   function saveConfirm (){
	   var type =  $('#saveConfirmBtn').data("type");
	   var num =  $('#saveConfirmBtn').data("num");
	   var iid = $('#dataTmp').data("login.id");
	   if(type == "delfavorite"){
		   $.post('/plagiarism/delfavorite', {
				mode : '', num : num, iid : iid
			}, function(data) {
				$('#closeConfirmModal').click();
				messagePopup("삭제 되었습니다.","즐겨찾기");
				getSite(0);
			}, 'json');
	   }else if(type == "delcate"){
			$.post('/plagiarism/ucatedel', {
				mode : 'ucatedel',
				id : $('#dataTmp').data("login.id"),
				num : num
			}, function(data) {
				$('#closeConfirmModal').click();
				$('.mainDivd2').each(function(t){
					var nums = $(this).attr("num");
					if(nums == num){
						$(this).remove();
						getSite(0);
						messagePopup("삭제 되었습니다.","카테고리");
						return false;
					}
				});
			}, 'json').error(function(){
			});
	   }
   }
   
   function orderprev(num,orderb){
		var pnum = "";
		var porderb = "";
		$('.sitename').each(function(t){
			var checknum = $(this).attr("num");
			if(checknum == num){
				return false;
			}else{
				pnum = checknum;
				porderb = $(this).attr("orderb");
			}
		});
		if(pnum != ''){
			var iid = $('#dataTmp').data("login.id");
			$.post('/plagiarism/orderprev', {
				mode : 'orderprev', iid : iid, num : num, orderb : orderb, pnum : pnum, porderb : porderb
			}, function(data) {
				getSite(0);
			}, 'json');
		}
	}
	function ordernext(num,orderb){
		var pnum = "";
		var porderb = "";
		var check = false;
		$('.sitename').each(function(t){
			var checknum = $(this).attr("num");
			if(check){
				pnum = checknum;
				porderb = $(this).attr("orderb");
				return false;
			}
			if(checknum == num){
				check = true;
			}
		});
		if(pnum != ''){
			var iid = $('#dataTmp').data("login.id");
			$.post('/plagiarism/orderprev', {
				mode : 'orderprev', iid : iid, num : num, orderb : orderb, pnum : pnum, porderb : porderb
			}, function(data) {
				getSite(0);
			}, 'json');
		}
	}
	
	function setSite2(){
		//ucaten
		var insitename =  $('#insitename2').val();
		var insiteaddr = $('#insiteaddr2').val();
		if(insitename == ""){
			$('#errordiv12').text("이름을 입력해주세요");
		}else if(insiteaddr == ""){
			$('#errordiv12').text("주소를 입력해주세요");
		}else{
			$('#errordiv12').text("");
			var id = $('#dataTmp').data("login.id");
			if(insiteaddr.indexOf("http://") < 0){
				insiteaddr = "http://"+insiteaddr;
			}
			$.post('/plagiarism/inputsite2', {
				mode : '',
				id : id,
				name : encodeURIComponent(insitename),
				addr : insiteaddr,
				ucaten : ucaten
			}, function(data) {
				$('#insitename2').val("");
				$('#insiteaddr2').val("");
				getSiteu(ucaten);
			}, 'json');
		}
		
	}
	
	//삭제
	function ucateeditnamedel(ucatenum,focusid){
		$('#closeCateModal').click();
		messageConfirmPopup("삭제하시겠습니까?","카테고리삭제","delcate",ucatenum);
	}
	//위
	function ucateeditnameup(ucatenum,focusid,ordby){
		var iid = $('#dataTmp').data("login.id");
		var pnum = "";
		var pordby = "";
		$('.mainDivd2').each(function(){
			var nums = $(this).attr("num");
			var tmpordby = $(this).attr("ordby");
			if(nums == ucatenum){
				 return false;
			}else{
				pnum = nums;
				pordby = tmpordby;
			}
		});
		if(pnum != "" && pordby != ""){
			$.post('/plagiarism/ucateeditnameup', {
				mode : '', iid : iid, num : ucatenum,ordby:ordby, pnum : pnum, pordby : pordby
			}, function(data) {
				var html = viewucate(data);
				$('#ucateaddno').click();
				if (html != '') {
					$('#divSide01').show();
					$('.mainDivd2').remove();
					$('#cateDis').append(html);
					
					var html2 = viewucateedit();
					
					if(html2 != ""){
						$("#ucateedittable").html(html2);
					}
				}
			}, 'json');
		}
	}
	//아래
	function ucateeditnamedown(ucatenum,focusid,ordby){
		var iid = $('#dataTmp').data("login.id");
		var pnum = "";
		var pordby = "";
		var check = false;
		$('.mainDivd2').each(function(){
			var nums = $(this).attr("num");
			var tmpordby = $(this).attr("ordby");
			if(check){
				pnum = nums;
				pordby = tmpordby;
				 return false;
			}
			if(nums == ucatenum){
				check = true;
			}
		});
		if(pnum != "" && pordby != ""){
			$.post('/plagiarism/ucateeditnameup', {
				mode : 'ucateeditnameup', iid : iid, num : ucatenum,ordby:ordby, pnum : pnum, pordby : pordby
			}, function(data) {
				var html = viewucate(data);
				$('#ucateeditnamedown').click();
				if (html != '') {
					$('#divSide01').show();
					$('.mainDivd2').remove();
					$('#cateDis').append(html);
					var html2 = viewucateedit();
					
					if(html2 != ""){
						$("#ucateedittable").html(html2);
					}
				}
			}, 'json');
		}
	}

   </script>
   <form id="topform" action=""><input type="hidden" id="dataTmp" /></form>
</body>
</html>


