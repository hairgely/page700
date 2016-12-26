<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html><html><head>
<title>OnPaging - 인터넷을 여는 새로운 방법</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<style type="text/css">
<!-- IMG { border:0 } //-->
a{outline:none;select-dummy:expression(this.hideFocus=true);}
body{font-family:'돋움',dotum,Helvetica,sans-serif;-webkit-text-size-adjust:none;padding:10px;background-color: #FFFFFF;}
.linkClass{font-size:30px;}
.titlediv{font-size:40px;cursor:pointer;width:97%;height:60px;background-color:#DADADA;text-align:center;margin:5px;padding-top:20px;}
.sitename{width:150px;height:30px;overflow:hidden;color:#343434;}
.sitename2{font-size:35px;}
.catelist{font-size:24px;float:left;color:#FFFFFF;}
.catelist2{font-size:24px;float:left;color:#FFFFFF;}
.titlediv2{cursor:pointer;width:170px;height:37px;background-color:#eeeeee;text-align:center;margin:5px;padding-top:10px;}
.titlediv3{font-size:40px;cursor:pointer;width:97%;height:60px;background-color:#ffa500;text-align:center;margin:5px;padding-top:20px;color:#EFEFEF;font-weight: bold;}
.titlediv4{cursor:pointer;width:97%;height:33px;background-color:#eeeeee;text-align:center;margin:5px;padding-top:8px;}
.titlediv5{cursor:pointer;width:120px;height:28px;background-color:#eeeeee;text-align:center;padding-top:3px;color:#9a9a9a;}
.titlediv6{cursor:pointer;width:80px;height:30px;background-color:#eeeeee;text-align:center;padding-top:3px;color:#676767;}
.catea{display:none;}
.modetitle{width:100px;height:27px;text-align:center;padding-top:5px;padding:5px;background-color:#DADADA;}
.divSidecss{background-color:#FFFFFF;float:left;width:360px;}
.divSidecss2{background-color:#FFFFFF;float:left;width:360px;margin-top:20px;}
.divSidecss3{background-color:#eeeeee;float:left;width:360px;margin-top:20px;}
.mainDivdClassmy{cursor:pointer;width:155px;height:200px;background-color:#eeeeee;text-align:center;margin:5px;float:left;}
.mainDivdClass{cursor:pointer;width:155px;height:155px;background-color:#eeeeee;text-align:center;margin:5px;float:left;}
</style>
<script type="text/javascript" src="http://www.websnapr.com/js/websnapr.js"></script>
<script type="text/javascript">
var strmessage01='내즐겨찾기';var strmessage02="로그인";var strmessage03="로그아웃";var strmessage04='검색';var strmessage05="◀";var strmessage06="▶";var strmessage07="삭제";var strmessage08="▲";var strmessage09="▼";var strmessage10="변경";var strmessage11="취소";
var message01='로그인 후 사이트 상자 아래부분 사이트이름을 클릭하면 내즐겨찾기에 추가됩니다.';var message02="아이디를 입력해 주세요.";var message03="비밀번호를 입력해 주세요.";var message04="비밀번호와 비밀번호확인이 일치하지 않습니다.";var message05="이미 존재하는 아이디 입니다.";var message06="가입 되었습니다.";var message07="존재하지 않는 아이디입니다.";var message08="아이디와 비밀번호가 일치하지 않습니다.";var message09="존재하지 않는 아이디입니다.";var message10="내즐겨찾기에 추가되었습니다.";var message11="내즐겨찾기에서 삭제되었습니다.";var message12="아이디는 4자리 이상 입력하세요.(비밀번호는 제약없음)";var message13="하려던 일을 잊기 전에 메모";var message14="사이트 검색";var message15="각 카테고리의 사이트 아이콘 아래부분 사이트이름을 클릭하면 내즐겨찾기에 추가됩니다";var message16="주소 직접 추가";var message17="이름을 입력해주세요";var message18="주소를 입력해주세요";var message19=" - 내즐겨찾기에 추가";var message20=" - 내즐겨찾기에서 삭제";var message21="내즐겨찾기에서 삭제하시겠습니까?";var message22="카테고리명을 입력해주세요";var message23="카테고리에 포함된 모든 사이트가 삭제됩니다.\n카테고리를 삭제하시겠습니까?";var message24="사이트 추가";var message25="사이트 삭제";var message26="사이트를 삭제하시겠습니까?";var message27="사이트를 삭제하였습니다.";var message28="모바일에서도 같은 페이지를 볼수있습니다.";var message29="PC에서도 같은 페이지를 볼수있습니다.";
</script>
<script type='text/javascript' src='./common/jquery-1.5.2.min.js'></script><script type='text/javascript' src='./common/corner/jquery.corner.js'></script><script type='text/javascript' src='./common/ext/helloworld_min.js'></script>
<script type="text/javascript">$(function(){$('.mainDiv').corner();checkweb();});</script>
</head>
<body>
<div class="mainDiv" style="background-color: #FFFFFF; padding: 10px; min-width: 600px;">
<div class="mainDiv" style="width: 100%; height: 70px; background-color: #EFEFEF; min-width: 400px;">
<div style="height:25px;">&nbsp;</div>
<table style="width: 100%">
<tr><td valign="bottom" nowrap="nowrap">&nbsp;&nbsp;<a href="http://www.onpaging.com" style="text-decoration:none;font-size:30px;color: #ffa500;font-weight: bold;">새로운 시작&nbsp;&nbsp;&nbsp;onPaging</a></td>
<td align="right">
<table style="margin-right: 20px;"><tr><td><div class="mainDiv titlediv5" style="font-size: 25px;cursor: pointer;" onclick="login();" id="logintext">로그인</div>	</td><td><div class="mainDiv titlediv5" style="font-size: 25px;cursor: pointer;" onclick="join();">회원가입</div></td></tr></table>
</td></tr></table>
</div>
<div style="width: 100%; margin-top: 10px;">
<table style="width: 100%;" cellpadding=0 cellspacing=0>
<tr><td width="360px" valign="top">
<div id="divSide" class="mainDiv divSidecss"><div id="cateDis" style=""><div class="mainDiv titlediv2 catelist" onclick="getSite(0);" nname="내즐겨찾기" num="0">내즐겨찾기</div>
<c:forEach var="cateDisVar" items="${list}" varStatus="idx"><c:if test="${cateDisVar.num != 40 && cateDisVar.num != 6 && cateDisVar.num != 100 && cateDisVar.num != 101}"><c:choose><c:when test="${cateDisVar.stype == 0}"><div class="mainDiv titlediv2 catelist cateb" onclick="getSite(<c:out value="${cateDisVar.num}"></c:out>);" nname="<c:out value="${cateDisVar.name}"></c:out>" num="<c:out value="${cateDisVar.num}"></c:out>" stype="<c:out value="${cateDisVar.stype}"></c:out>" sgroup="<c:out value="${cateDisVar.sgroup}"></c:out>"><c:out value="${cateDisVar.name}"></c:out></div></c:when><c:otherwise><div class="mainDiv titlediv2 catelist catea" onclick="getSite(<c:out value="${cateDisVar.num}"></c:out>);" nname="<c:out value="${cateDisVar.name}"></c:out>" num="<c:out value="${cateDisVar.num}"></c:out>" stype="<c:out value="${cateDisVar.stype}"></c:out>" sgroup="<c:out value="${cateDisVar.sgroup}"></c:out>"><c:out value="${cateDisVar.name}"></c:out></div></c:otherwise></c:choose></c:if></c:forEach>
</div><div style="clear:both"></div></div>
<div id="divSide" class="mainDiv divSidecss2">
<div id="cateDis" style="">
<c:forEach var="cateDisVar" items="${list}" varStatus="idx"><c:if test="${cateDisVar.num == 40 || cateDisVar.num == 6}"><c:choose><c:when test="${cateDisVar.stype == 0}"><div class="mainDiv titlediv2 catelist cateb" onclick="getSite(<c:out value="${cateDisVar.num}"></c:out>);" nname="<c:out value="${cateDisVar.name}"></c:out>" num="<c:out value="${cateDisVar.num}"></c:out>" stype="<c:out value="${cateDisVar.stype}"></c:out>" sgroup="<c:out value="${cateDisVar.sgroup}"></c:out>"><c:out value="${cateDisVar.name}"></c:out></div></c:when><c:otherwise><div class="mainDiv titlediv2 catelist catea" onclick="getSite(<c:out value="${cateDisVar.num}"></c:out>);" nname="<c:out value="${cateDisVar.name}"></c:out>" num="<c:out value="${cateDisVar.num}"></c:out>" stype="<c:out value="${cateDisVar.stype}"></c:out>" sgroup="<c:out value="${cateDisVar.sgroup}"></c:out>"><c:out value="${cateDisVar.name}"></c:out></div></c:otherwise></c:choose></c:if></c:forEach>
</div><div style="clear:both"></div></div>
<div id="divSide" class="mainDiv divSidecss2">
<div id="cateDis" style="">
<c:forEach var="cateDisVar" items="${list}" varStatus="idx"><c:if test="${cateDisVar.num == 100 || cateDisVar.num == 101}"><c:choose><c:when test="${cateDisVar.stype == 0}"><div class="mainDiv titlediv2 catelist cateb" onclick="getSite(<c:out value="${cateDisVar.num}"></c:out>);" nname="<c:out value="${cateDisVar.name}"></c:out>" num="<c:out value="${cateDisVar.num}"></c:out>" stype="<c:out value="${cateDisVar.stype}"></c:out>" sgroup="<c:out value="${cateDisVar.sgroup}"></c:out>"><c:out value="${cateDisVar.name}"></c:out></div></c:when><c:otherwise><div class="mainDiv titlediv2 catelist catea" onclick="getSite(<c:out value="${cateDisVar.num}"></c:out>);" nname="<c:out value="${cateDisVar.name}"></c:out>" num="<c:out value="${cateDisVar.num}"></c:out>" stype="<c:out value="${cateDisVar.stype}"></c:out>" sgroup="<c:out value="${cateDisVar.sgroup}"></c:out>"><c:out value="${cateDisVar.name}"></c:out></div></c:otherwise></c:choose></c:if></c:forEach>
</div><div style="clear:both"></div></div>
<div id="divSide01" class="mainDiv divSidecss2" style="display: none;">
<div id="cateDis01" style=""></div>
<div style="clear:both"></div></div>
<div style="clear:both"></div><div>&nbsp;</div>
<div id="modediv" style="display: none;font-size: 20px;width: 100%;text-align: right;margin-right: 15px;margin-bottom: 20px;"><span class="mainDiv modetitle" id="modeone" style="cursor: pointer;">일반모드</span>&nbsp;&nbsp;<span class="mainDiv modetitle" id="modetwo" style="cursor: pointer;">수정모드</span></div>
<div id="divSide00" class="mainDiv divSidecss" style="margin-bottom: 20px;display: none;">
<div id="cateDis" style=""><div id="ucateadd03" class="mainDiv titlediv4 catelist cateb">카테고리 편집</div></div>
<div style="clear:both"></div></div>
<div id="noti01" style="font-size: 15px;color: #BBBBBB;text-align: center;">모바일에서도 같은 페이지를 볼수있습니다.</div>
<div id="divSide" class="mainDiv divSidecss3" style="padding-left: 4px;">
<table style="width: 100%"><tr><td title="사이트 검색" width="265px;" valign="top"><input type="text" id="searchword" style="height: 35px; font-size: 30px; width: 264px;"/></td><td title="사이트 검색" nowrap="nowrap"><div class="mainDiv titlediv6" style="font-size: 27px;cursor: pointer;" onclick="searchstart();">검색</div></td></tr><tr><td><a style='font-size:12px;' href='http://www.bitpixels.com/'>Website thumbnails provided by BitPixels</a></td></tr></table>
</div></td>
<td width="5px;"><div style="width: 5px;"></div></td>
<td valign="top">
<div id="divCenter" class="mainDiv" style="background-color: #FFFFFF; float: right; width: 100%;">
<div style="clear:both"></div>
<div class="mainDiv titlediv3" id="datatitle2"><div id="datatitle"></div></div>
<div id="submenu"></div>
<div style="clear:both"></div>
<div id="dataDis" style="font-size:30px;"></div>
<div style="clear:both"></div>
<div id="pop01" style="display: none;">
<div class="mainDiv titlediv">로그인</div>
<div id="loginerrordiv"></div>
<table>
<tr><td class="linkClass">아이디</td><td><input type="text" id="loginid" style="height: 35px; font-size: 30px; width: 250px;" /></td></tr>
<tr><td class="linkClass">비밀번호</td><td><input type="password" id="loginpw" style="height: 35px; font-size: 30px; width: 250px;" /></td></tr>
<tr><td>&nbsp;</td><td class="linkClass">
<div class="mainDiv" style="cursor: pointer; width: 150px; height: 40px; background-color: #DADADA; text-align: center; margin: 5px;padding-top: 8px;" onclick="loginstart();">로그인</div>
</td></tr></table>
<table><tr><td style="font-size:22px;">*아이디 찾기 또는 비밀번호 찾기 기능은 지원하지 않습니다.</td></tr></table></div>
<div id="pop02" style="display: none;">
<div class="mainDiv titlediv">회원가입</div>
<div id="errordiv"></div>
<table>
<tr><td class="linkClass">아이디</td><td><input type="text" id="joinid" style="height: 35px; font-size: 30px; width: 200px;" maxlength="50"/></td></tr>
<tr><td class="linkClass">비밀번호</td><td><input type="password" id="joinpw" style="height: 35px; font-size: 30px; width: 200px;" maxlength="50"/></td></tr>
<tr><td class="linkClass">비밀번호확인</td><td><input type="password" id="joinpwconfirm" style="height: 35px; font-size: 30px; width: 200px;" maxlength="50"/></td></tr>
<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td><td class="linkClass">
<div class="mainDiv" style="cursor:pointer; width: 150px;height: 40px;background-color: #DADADA;text-align: center;margin: 5px;padding-top: 8px;" onclick="joinStart();">회원가입 </div>
</td></tr></table>
<table><tr><td style="font-size:22px;">*아이디 찾기 또는 비밀번호 찾기 기능은 지원하지 않습니다.</td></tr><tr><td style="font-size:22px;">*비밀번호는 암호화하지 않습니다. 쉬운 비밀번호를 사용해주세요.</td></tr></table></div>
<div id="pop10" style="display: none;">
<div class="mainDiv titlediv">즐겨찾기 직접입력</div>
<div id="errordiv10" style=""></div>
<table>
<tr><td class="linkClass">이름</td><td><input type="text" id="insitename" style="height: 35px; font-size: 30px; width: 250px;" maxlength="50"/></td></tr>
<tr><td class="linkClass">주소</td><td><input type="text" id="insiteaddr" style="height: 35px; font-size: 30px; width: 400px;" maxlength="190"/></td></tr>
<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td>
<td class="linkClass">
<div class="mainDiv" style="cursor:pointer; width: 150px;height: 40px;background-color: #DADADA;text-align: center;margin: 5px;padding-top: 8px;" onclick="setSite();">입력 </div>
</td></tr></table></div>
<div id="pop12" style="display: none;">
<div class="mainDiv titlediv">사이트 추가 [<span id="catetitlediv12"></span>]</div>
<div id="errordiv12" style=""></div>
<table>
<tr><td class="linkClass">이름</td><td><input type="text" id="insitename2" style="height: 35px; font-size: 30px; width: 250px;" maxlength="50"/></td></tr>
<tr><td class="linkClass">주소</td><td><input type="text" id="insiteaddr2" style="height: 35px; font-size: 30px; width: 400px;" maxlength="190"/></td></tr>
<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td><td class="linkClass">
<div class="mainDiv" style="cursor:pointer; width: 150px;height: 40px;background-color: #DADADA;text-align: center;margin: 5px;padding-top: 8px;" onclick="setSite2();">입력 </div>
</td></tr></table></div>
<div id="pop11" style="display: none;">
<div class="mainDiv titlediv3">카테고리 편집</div>
<div style="margin-left:10px;font-size:27px;">카테고리 추가</div>
<div style="margin-left:10px;">
<input type="text" id="ucateaddtext" style="height: 25px; font-size: 23px; width: 250px;" maxlength="50"/>&nbsp;
<span class="mainDiv titlediv6" id="ucateaddok" style="font-size: 20px;cursor: pointer;padding-left: 10px;padding-right: 10px;">추가</span>&nbsp;<span class="mainDiv titlediv6" id="ucateaddno" style="font-size: 20px;cursor: pointer;padding-left: 10px;padding-right: 10px;">취소</span>
</div><br/>
<div style="margin-left: 10px;font-size: 27px;">카테고리 수정</div>
<div id="errordiv11" style="margin-left: 10px;"></div>
<div style="margin-left: 10px;width: 100%;text-align: left;font-size: 15px;min-height: 310px;">
<table border="1" border-color="#EEEEEE" id="ucateedittable" style="margin-right: 15px;width: 510px;border: solid;border-width: 1px;border-color: #EEEEEE;"></table>
</div></div></div>
</td></tr></table>
</div></div>
<form id="topform" action=""><input type="hidden" id="dataTmp" /></form>
</body>
</html>