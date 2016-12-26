var server = "";
var hosthtmtmp = '.do';
var loginflg = false;
var editmode = false;
var webm = 0;
var ucaten = "";
var ucatentext = "";
var catehtml = '<div class="mainDiv titlediv catelist" ';
var catehtml2 = '</div>';
var sitehtml = '<div class="mainDivd" style="cursor:pointer;width: 155px;height: 155px;background-color: #DADADA;text-align: center;margin: 5px;float: left;"';
var sitehtmlmy = '<div class="mainDivd" style="cursor:pointer;width: 155px;height: 200px;background-color: #DADADA;text-align: center;margin: 5px;float: left;"';
var catehtml3 = '<div style="clear:both"></div>';
var strurl01 = '/planner/plannerLogic';
var strurl02 = '<img src="http://open.thumbshots.org/image.pxf?url=';
var strurl03 = '" style="margin-top:5px;" width="140px" height="100px" onclick="goOpen(\'';
var strurl04 = '\');" />';
var strurl05 = '<div class="linkClass sitename" onclick="addfavorite(\'';
var strurl06 = '\');">';
var strurl26 = '\');" title="';
var strurl27 = '">';
var strurl07 = ' onclick="getSite(\'0\');" nname="내즐겨찾기" num="0">';
var strurl08 = ' onclick="getSite(';
var strurl09 = '<img src="http://open.thumbshots.org/image.pxf?url=';
var strurl10 = '" style="margin-top:5px;"  width="140px" height="105px"  onclick="goOpen(\'';
var strurl11 = '\',\'';
var strurl111 = '\');" ';
var strurl112 = 'title="';
var strurl113 = '" />';
var strurl12 = '<div class="linkClass sitename" num="';
var strurl13 = '" onclick="delfavorite(\'';
var strurl14 = '<span onclick="orderprev(\'';
var strurl15 = '&nbsp;&nbsp;&nbsp;<span onclick="ordernext(\'';
var strurl16 = '<div class="linkClass sitename" onclick="addfavorite(\'';
var strurl17 = '</div>';
var strurl18 = '</span>';
var strurl19 = '\',\'';
var strurl20 = '>';
var strurl21 = '<div class="linkClass sitename" onclick="delsiteu(';
var strurl23 = ');" title="';
//이름변경클릭 flag
var clickcheck = true;
function checkweb(){
	var UserAgent = navigator.userAgent; 
	if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null){
		webm = 1;
	}else{
		webm = 0;
	}
	getSite(1);
	$('#memo').val(message13).focus(function(){
		if($(this).val()==message13){
			$(this).val("").focus().css("color","#000000");
		}
	}).blur(function(){
		if($(this).val()==""){
			$(this).val(message13).css("color","#CDCDCD");
		}
	}).css("color","#CDCDCD");
	$('#searchword').val(message14).focus(function(){
		if($(this).val()==message14){
			$(this).val("").focus().css("color","#000000");
		}
	}).blur(function(){
		if($(this).val()==""){
			$(this).val(message14).css("color","#CDCDCD");
		}
	}).css("color","#CDCDCD");
	
	//수정모드
	$('#modetwo').click(function(){
		$('#divSide00').show();
		$(this).css("background-color","#ffa500");
		$('#modeone').css("background-color", "#DADADA");
		editmode = true;
		if(ucaten != ""){
			$('#siteuadd01').remove();
			var html = '<div class="mainDivd" id="siteuadd01" onclick="dirinput2();" style="cursor:pointer;width: 155px;height: 155px;background-color: #DADADA;text-align: center;margin: 5px;float: left;font-size:30px">'+message24+'</div>';
			$('#dataDis').append(html);
			$('#siteuadd01').corner();
		}
	});
	//일반모드
	$('#modeone').click(function(){
		$('#divSide00').hide();
		$(this).css("background-color","#ffa500");
		$('#modetwo').css("background-color", "#DADADA");
		getSite(1);
		editmode = false;
	});
	$('#modeone').css("background-color", "#ffa500");
	//추가버튼
	$('#ucateaddok').click(function(){
		var title = $('#ucateaddtext').val();
		if(title != ""){
			$.post("" +'/planner/plannerLogic'+".do", {
				mode : 'ucateadd',
				id : $('#dataTmp').data("login.id"),
				title : encodeURIComponent(title)
			}, function(data) {
				$('#cateDis01').empty();
				var html = viewucate(data);
				$('#ucateaddno').click();
				if (html != '') {
					$('#divSide01').show();
					$('#cateDis01').html(html);
					$('.mainDivd2').corner();
					
					var html2 = viewucateedit();
					if(html2 != ""){
						$("#ucateedittable").html(html2);
					}
				}
				
				
			}, 'json').error(function(){
			});
		}else{
			alert(message22);
		}
		
		$('#ucateaddtext').val("");
	});
	//취소버튼
	$('#ucateaddno').click(function(){
		$('#ucateaddtext').val("");
	});
	//카테고리 수정
	$('#ucateadd03').click(function(){
		hideDiv2();
		$('#submenu').empty();
		$('#dataDis').hide();
		$("#pop11").show();
		$('#errordiv11').text("");
		$('.catelist').each(function(){
			$(this).css("background-color", "#DADADA");
		});
		$(this).css("background-color","#ffa500");
		
		var html = viewucateedit();
		
		if(html != ""){
			$("#ucateedittable").html(html);
		}
		clickcheck = true;
	});
}

function getsubcate(cate){
	$('#submenu').empty();
	var html = "";
	$('.catea').each(function(){
		var sgroup = $(this).attr("sgroup");
		if(cate == sgroup){
			html += '<div class="mainDiv titlediv2 catelist2 catec" onclick="getSiteLo('+$(this).attr("num")+',true);" num="'+$(this).attr("num")+'"> ';
			html +=	$(this).attr("nname");
			html += '</div>';
		}
	});
	if (html != '') {
		$('#submenu').html(html).show();
		$('#submenu .catec').corner();
		$('#submenu .catec:eq(0)').click();
		
	}else{
		$('#submenu').hide();
		getSiteLo(cate, false);
	}
}

function getSiteLo(cate, stpes){
	$('#dataDis').empty();
	hideDiv();
	if(cate == 0 && !loginflg){
		$('#dataDis').text(message01);
	}else{
		if(stpes){
			$('#submenu .catec').each(function(){
				var num = $(this).attr("num");
				if(num == cate){
					$(this).css("background-color","#ffa500");
				}else{
					$(this).css("background-color", "#DADADA");
				}
			});
		}
		var iid = $('#dataTmp').data("login.id");
		$.post(server +strurl01+hosthtmtmp, {
			mode : 'getSite', cate : cate, iid : iid
		}, function(data) {
			var html = '';
			if(cate == 0){
				html = '<div style="font-size:15px;width: 100%;text-align:center;">'+message15+'</div>';
				html += '<div style="clear:both"></div>';
				html += '<div class="mainDivd" onclick="dirinput();" style="cursor:pointer;width: 155px;height: 200px;background-color: #DADADA;text-align: center;margin: 5px;float: left;font-size:30px">'+message16+'</div>';
			}
			for ( var i = 0; i < data.resultList.length; i++) {
				var evt = data.resultList[i];
				if(cate == 0){
					html += sitehtmlmy;
				}else{
					html += sitehtml;
				}
				html += strurl20;
				html += strurl09
						+ evt.addre
						+ strurl10;
				if(webm == 0 || evt.addrem == ""){
					html += evt.addre;
				}else{
					html += evt.addrem;
				}
				html += strurl11;
				html += evt.num;
				html += strurl111;
				html += strurl112;
				html += evt.name;
				html += strurl113;
				if(cate == 0){
					html += strurl12+evt.num+'" orderb="'+evt.orderb+strurl13+evt.num+strurl26 + evt.name +message20 +strurl27+evt.name+ strurl17;
					html += strurl14+evt.num+strurl19+evt.orderb+strurl06 + strmessage05 + strurl18;
					html += strurl15+evt.num+strurl19+evt.orderb+strurl06 + strmessage06 + strurl18;
				}else{
					html += strurl16+evt.num+strurl26 + evt.name+message19 +strurl27+evt.name+ strurl17;
				}
				html += catehtml2;
			}
			if (html != '') {
				$('#dataDis').html(html);
				$('.mainDivd').corner();
			}
		}, 'json');
	}
}

function getSite(cate) {
	ucaten = "";
	$('.catelist').each(function(){
		var num = $(this).attr("num");
		if(num == cate){
			$('#datatitle').text($(this).attr("nname"));
			$(this).css("background-color","#ffa500");
		}else{
			$(this).css("background-color", "#DADADA");
		}
	});
	if(cate != 0 && cate != 1){
		getsubcate(cate);
	}else{
		$('#submenu').empty().hide();
		getSiteLo(cate,false);
	}
	
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
			$(this).css("background-color", "#DADADA");
		}
	});
	$('#submenu').empty();	
	hideDiv();
	var iid = $('#dataTmp').data("login.id");
	$.post(server +strurl01+hosthtmtmp, {
		mode : 'getSiteu', cate : cate, iid : iid
	}, function(data) {
		var html = '';
		var i= 0;
		for ( i = 0; i < data.resultList.length; i++) {
			var evt = data.resultList[i];
				html += sitehtml;
			html += strurl20;
			html += strurl09
					+ evt.addre
					+ strurl10;
			if(webm == 0 || evt.addrem == ""){
				html += evt.addre;
			}else{
				html += evt.addrem;
			}
			html += strurl11;
			html += evt.num;
			html += strurl111;
			html += strurl112;
			html += evt.name;
			html += strurl113; 
				html += strurl21+evt.num+strurl23 + evt.name+message25 +strurl27+evt.name+ strurl17;
			html += catehtml2;
		}
		if(editmode || i == 0){
			html += '<div class="mainDivd" id="siteuadd01" onclick="dirinput2();" style="cursor:pointer;width: 155px;height: 155px;background-color: #DADADA;text-align: center;margin: 5px;float: left;font-size:30px">'+message24+'</div>';
		}
		
		if (html != '') {
			$('#dataDis').html(html);
			$('.mainDivd').corner();
		}
	}, 'json');
}
function goOpen(addre,num) {
	window.open(addre);
}
function setcount(num){
	$.post(server +strurl01+hosthtmtmp, {
		mode : 'setcount', num : num, iid : iid
	}, function(data) {
	}, 'json');
}
function addfavorite(num) {
	var iid = $('#dataTmp').data("login.id");
	if(iid == null || iid == ""){
	}else{
		$.post(server +strurl01+hosthtmtmp, {
			mode : 'addfavorite', num : num, iid : iid
		}, function(data) {
			alert(message10);
		}, 'json');
	}
}
function delfavorite(num) {
	if(confirm(message21)){
		var iid = $('#dataTmp').data("login.id");
		if(iid == null || iid == ""){
		}else{
			$.post(server +strurl01+hosthtmtmp, {
				mode : 'delfavorite', num : num, iid : iid
			}, function(data) {
				alert(message11);
				getSite(0);
			}, 'json');
		}
	}
}
function delsiteu(num) {
	if(confirm(message26)){
		var iid = $('#dataTmp').data("login.id");
		if(iid == null || iid == ""){
		}else{
			$.post(server +strurl01+hosthtmtmp, {
				mode : 'delsiteu', num : num, iid : iid
			}, function(data) {
				getSiteu(ucaten);
				alert(message27);
			}, 'json');
		}
	}
}
function pop06ok(){
	$( "#pop06" ).dialog( "close" );
}
function pop07ok(){
	$( "#pop07" ).dialog( "close" );
}
function login() {
	if(loginflg){
		$("#menu001").hide();
		$("#menu002").hide();
		loginflg = false;
		$('#dataTmp').data("login.id","");
		$('#logintext').text(strmessage02);
		
		$('#modediv').hide();
		$('#cateDis01').empty();
		$('#modeone').click();
		
	}else{
		hideDiv2();
		$("#pop01").show();
		$('#loginerrordiv').text("");
		$('#submenu').empty();
	}
}
function join() {
	hideDiv2();
	$('#dataDis').hide();
	$("#pop02").show();
	$('#errordiv').text("");
	$('#submenu').empty();
}
function hideDiv(){
	$('#datatitle2').show();
	$('#datatitle').show();
	$('#dataDis').show();
	$("#pop01").hide();
	$("#pop02").hide();
	$("#pop05").hide();
	$("#pop10").hide();
	$("#pop11").hide();
	$("#pop12").hide();
}
function hideDiv2(){
	$('#datatitle2').hide();
	$('#datatitle').hide();
	$('#dataDis').hide();
	$("#pop01").hide();
	$("#pop02").hide();
	$("#pop05").hide();
	$("#pop10").hide();
	$("#pop11").hide();
	$("#pop12").hide();
}
function dirinput(){
	hideDiv2();
	$("#pop10").show();
	$('#errordiv10').text("");
}
function dirinput2(){
	//ucaten
	hideDiv2();
	$("#pop12").show();
	$('#errordiv12').text("");
	$('#catetitlediv12').text(ucatentext);
}
function setSite(){
	var insitename =  $('#insitename').val();
	var insiteaddr = $('#insiteaddr').val();
	if(insitename == ""){
		$('#errordiv10').text(message17);
	}else if(insiteaddr == ""){
		$('#errordiv10').text(message18);
	}else{
		$('#errordiv10').text("");
		var id = $('#dataTmp').data("login.id");
		if(insiteaddr.indexOf("http://") < 0){
			insiteaddr = "http://"+insiteaddr;
		}
		$.post(server +strurl01+hosthtmtmp, {
			mode : 'inputsite',
			id : id,
			name : encodeURIComponent(insitename),
			addr : insiteaddr
		}, function(data) {
			$('#insitename').val("");
			$('#insiteaddr').val("");
			getSite(0);
		}, 'json');
	}
	
}
function setSite2(){
	//ucaten
	var insitename =  $('#insitename2').val();
	var insiteaddr = $('#insiteaddr2').val();
	if(insitename == ""){
		$('#errordiv12').text(message17);
	}else if(insiteaddr == ""){
		$('#errordiv12').text(message18);
	}else{
		$('#errordiv12').text("");
		var id = $('#dataTmp').data("login.id");
		if(insiteaddr.indexOf("http://") < 0){
			insiteaddr = "http://"+insiteaddr;
		}
		$.post(server +strurl01+hosthtmtmp, {
			mode : 'inputsite2',
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
function joinStart(){
	var id = $('#joinid').val();
	var pwd = $('#joinpw').val();
	var cpwd = $('#joinpwconfirm').val();
	if(id == ''){
		$('#errordiv').text(message02);
	}else if(id.length < 4){
		$('#errordiv').text(message12);
	}else if(pwd == ''){
		$('#errordiv').text(message03);
	}else{
		if(pwd != cpwd){
			$('#errordiv').text(message04);
		}else{
			$('#errordiv').text("");
			$.post(server +strurl01+hosthtmtmp, {
				mode : 'joinStart',
				id : id,
				pwd : pwd
			}, function(data) {
				if(data.result == "1"){
					$('#errordiv').text(message05);
				}else{
					$('#errordiv').text(message06);
					$('#joinid').val("");
					$('#joinpw').val("");
					$('#joinpwconfirm').val("");
				}
			}, 'json');
		}
	}
}
function loginstart(){
	var id = $('#loginid').val();
	var pwd = $('#loginpw').val();
	if(id == ''){
		$('#loginerrordiv').text(message02);
	}else if(pwd == ''){
		$('#loginerrordiv').text(message03);
	}else{
		$('#loginerrordiv').text("");
		$.post(server +strurl01+hosthtmtmp, {
			mode : 'loginstart',
			id : id,
			pwd : pwd
		}, function(data) {
			if(data.result == "1"){
				$('#loginerrordiv').text(message07);
			}else if(data.result == "2"){
				$('#loginerrordiv').text(message08);
			}else{
				
				$('#loginerrordiv').text("");
				$('#loginid').val("");
				$('#loginpw').val("");
				
				//
				$('#cateDis01').empty();
				
				
				loginflg = true;
				$('#dataTmp').data("login.id",id);
				
				$('#logintext').text(strmessage03);
				
				getSite(0);
				$('#ucateaddno').click();
				
				var html = viewucate(data);
				
				if (html != '') {
					$('#divSide01').show();
					$('#cateDis01').html(html);
					$('.mainDivd2').corner();
				}
				//if(id == "test1"){
					$('#modediv').show();
				//}
			}
		}, 'json');
	}
}
function searchstart(){
	$('#dataDis').empty();
	hideDiv();
	$('#datatitle').text(strmessage04);
	var word = $('#searchword').val();
	//var iid = $('#dataTmp').data("login.id");
	$.post(server +strurl01+hosthtmtmp, {
		mode : 'searchSite', word : escape(word)
	}, function(data) {
		var html = '';
		for ( var i = 0; i < data.resultList.length; i++) {
			var evt = data.resultList[i];
			html += sitehtml;
			html += strurl20;
			html += strurl02
					+ evt.addre
					+ strurl03
					+ evt.addre + strurl04;
			html += strurl05+evt.num+strurl06 + evt.name + strurl17;
			html += catehtml2;
		}
		if (html != '') {
			$('#dataDis').html(html);
			$('.mainDiv').corner();
		}
	}, 'json');
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
		$.post(server +strurl01+hosthtmtmp, {
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
		$.post(server +strurl01+hosthtmtmp, {
			mode : 'orderprev', iid : iid, num : num, orderb : orderb, pnum : pnum, porderb : porderb
		}, function(data) {
			getSite(0);
		}, 'json');
	}
}
function checklang(){
	var language = "";
	if(navigator.appName == 'Netscape'){
		language = navigator.language; 
	}else{
		language = navigator.browserLanguage;
		if(language.indexOf('en') > -1){
			document.locaton.href = '';
		}else if(language.indexOf('kr') > -1){
			document.locaton.href = '';
		}else{
			document.locaton.href = '';
		}
	}
}

function viewucate(data){
	var html = "";
	for ( var i = 0; i < data.resultList.length; i++) {
		var evt = data.resultList[i];
		html += '<div class="mainDiv titlediv2 catelist cateb mainDivd2" onclick="getSiteu(\''+evt.num+'\');" nname="'+evt.name+'" num="'+evt.num+'" stype="'+evt.stype+'" sgroup="'+evt.sgroup+'" ordby="'+evt.ordby+'">';
		html += evt.name;
		html += '</div>';
	}
	return html;
}

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

//이름변경취소
function ucateeditnameno(){
	var text =  $('#editcatename').val();
	var focusid = $('#editcatename').attr("focusid");
	var classname01 = $('#editcatename').attr("focusclass01");
	var classname02 = $('#editcatename').attr("focusclass02");
	$('#'+focusid).text(text);
	
	$('.'+classname01).show();
	$('.'+classname02).hide();
		
	clickcheck = true;
}
//이름변경
function ucateeditnameok(){
	var text =  $('#editcatename').val();
	var focusid = $('#editcatename').attr("focusid");
	var classname01 = $('#editcatename').attr("focusclass01");
	var classname02 = $('#editcatename').attr("focusclass02");
	var num = $('#editcatename').attr("num");
	
	$.post("" +'/planner/plannerLogic'+".do", {
		mode : 'ucateedit',
		id : $('#dataTmp').data("login.id"),
		title : encodeURIComponent(text),
		num : num
	}, function(data) {
		var html = viewucate(data);
		$('#ucateaddno').click();
		if (html != '') {
			$('#divSide01').show();
			$('#cateDis01').html(html);
			$('.mainDivd2').corner();
		}
	}, 'json').error(function(){
	});
	
	$('#'+focusid).text(text);
	
	$('.'+classname01).show();
	$('.'+classname02).hide();
		
	clickcheck = true;
}
//삭제
function ucateeditnamedel(ucatenum,focusid){
	if(confirm(message23)){
		$.post("" +'/planner/plannerLogic'+".do", {
			mode : 'ucatedel',
			id : $('#dataTmp').data("login.id"),
			num : ucatenum
		}, function(data) {
			$('.mainDivd2').each(function(t){
				var num = $(this).attr("num");
				if(num == ucatenum){
					$(this).remove();
				}
			});
			$('#'+focusid).remove();
		}, 'json').error(function(){
		});
	}
	
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
		$.post(server +strurl01+hosthtmtmp, {
			mode : 'ucateeditnameup', iid : iid, num : ucatenum,ordby:ordby, pnum : pnum, pordby : pordby
		}, function(data) {
			var html = viewucate(data);
			$('#ucateaddno').click();
			if (html != '') {
				$('#divSide01').show();
				$('#cateDis01').html(html);
				$('.mainDivd2').corner();
				
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
		$.post(server +strurl01+hosthtmtmp, {
			mode : 'ucateeditnameup', iid : iid, num : ucatenum,ordby:ordby, pnum : pnum, pordby : pordby
		}, function(data) {
			var html = viewucate(data);
			$('#ucateeditnamedown').click();
			if (html != '') {
				$('#divSide01').show();
				$('#cateDis01').html(html);
				$('.mainDivd2').corner();
				var html2 = viewucateedit();
				
				if(html2 != ""){
					$("#ucateedittable").html(html2);
				}
			}
		}, 'json');
	}
}

//이름변경 텍스트박스
function ucateeditname(num,idname){
	if(clickcheck){
		var texthtml = '<input type="text" id="editcatename" style="height: 15px; font-size: 15px; width: 380px;"/>';
		var classname01 = $('#'+idname).attr("cname1");
		var classname02 = $('#'+idname).attr("cname2");
		var text = $('#'+idname).text();
		$('#'+idname).text("").html(texthtml);
		$('#editcatename').val(text).attr("focusid",idname);
		$('#editcatename').val(text).attr("focusclass01",classname01);
		$('#editcatename').val(text).attr("focusclass02",classname02);
		$('#editcatename').val(text).attr("num",num);
		clickcheck = false;
		
		$('.'+classname01).hide();
		$('.'+classname02).show();
	}
}