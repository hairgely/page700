var webm = 0;var loginflg = false;var editmode = true;var cateData = [];var ucaten = "";var ucatentext = "";var firstFlg = true;var urlDo = "";
var nowClickSite = 1;var nowClickSubSite = 1;

	$(function() {
		var UserAgent = navigator.userAgent; 
		if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null){
			webm = 1;
		}else{
			webm = 0;
		}
			
		$(document).ajaxSend(function(event, request, settings) {
			$('#loading-indicator').show();
		});
	
		$(document).ajaxComplete(function(event, request, settings) {
			$('#loading-indicator').hide();
		});
			
		$('#ucateadd03').click(function(){
			$("#openCateModal").click();
			var html = viewucateedit();
			if(html != ""){$("#ucateedittable").html(html);}
			clickcheck = true;
		});
			
		$('#ucateaddok').click(function(){
			var title = $('#ucateaddtext').val();
			if(title != ""){
				var ordby = 0; 
				$('.mainDivd2').each(function(t){
					if(ordby = $(this).attr("ordby")){
						ordby = $(this).attr("ordby");
					}
				});
				$.post("" +'/plagiarism/ucateadd'+urlDo, {
					mode : '',
					id : $('#dataTmp').data("login.id"),
					title : title,
					ordby:ordby
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
		$( window ).resize(function() {
			resizeWin();
		});
			
		var $body = $(document.body),$top = '';
		$top=$('<div>').addClass('top').hide().click(function(){
			$body.animate({ scrollTop: 0 });
		}).appendTo($body);
	
		$(window).scroll(function(){
		
			var y = $(this).scrollTop();
			if(y >= 100){
				$top.fadeIn();
			}else {
				$top.fadeOut();
			}
		});
	
		resizeWin();
			 
	
		getCate();
		buttonEf();
	});

	function buttonEf(){
		/*if(webm == 0){
			$('.imageClass').mousedown(function(){
				$('.panel').removeClass('panel-primary').removeClass('panel-default').addClass('panel-default');
				$(this).closest('.panel').addClass('panel-primary');
				var goUrl = $(this).attr("goUrl");
				window.open(goUrl);
				
			});
		}else{
			$('.pageItem').mousedown(function(){
				$('.pageItem').find('.panel').removeClass('panel-primary').removeClass('panel-default').addClass('panel-default');
				$(this).find('.panel').addClass('panel-primary');
				var goUrl = $(this).attr("goUrl");
				window.open(goUrl);
			});
		}*/
		
		
	}
	
	function resizeWin(){
		if($( window ).width() > 2380){
			$('.pageItem').removeClass('col-lg-3');
			$('.pageItem').removeClass('col-lg-2');
			$('.pageItem').addClass('col-lg-1');
			$('.catelist2').removeClass('btn-sm').removeClass('btn-lg').addClass('btn-lg');
		}else if($( window ).width() > 1280){
			$('.pageItem').removeClass('col-lg-3');
			$('.pageItem').removeClass('col-lg-1');
			$('.pageItem').addClass('col-lg-2');
			$('.catelist2').removeClass('btn-sm').removeClass('btn-lg').addClass('btn-lg');
		}else{
			$('.pageItem').removeClass('col-lg-2');
			$('.pageItem').removeClass('col-lg-1');
			$('.pageItem').addClass('col-lg-3');
			$('.catelist2').removeClass('btn-sm').removeClass('btn-lg').addClass('btn-sm');
		}
	}

	function viewucateedit(){
		var html = "";
		
		$('.mainDivd2').each(function(t){
			var nname = $(this).attr("nname");
			var num = $(this).attr("num");
			var ordby = $(this).attr("ordby");
			var openYn = $(this).attr("openYn");
			html += '<tr id="ucatetr00'+t+'">';
			html += '<td height="20px;" >';
			html += '<div id="ucateeditlist00'+t+'" cname1="ucateedittabletd01'+t+'" cname2="ucateedittabletd02'+t+'" style="max-width: 150px;overflow: hidden;" onclick="ucateeditname(\''+num+'\',\'ucateeditlist00'+t+'\');">'+nname+'</div>';
			html += '</td>';
			html += '<td class="ucateedittabletd01'+t+'" width="150px;">';
			var checkStrY = "";
			var checkStrN = "";
			if(openYn == "Y"){
				checkStrY = 'checked="checked"';
				checkStrN = "";
			}else{
				checkStrY = '';
				checkStrN = 'checked="checked"';
			}
			html += '<input type="radio" name="ucateedittabletd01'+num+'" onclick="ucateeditOpenYn(\''+'Y'+'\', \''+num+'\');" value="Y" '+checkStrY+'>공개 <input type="radio" name="ucateedittabletd01'+num+'" onclick="ucateeditOpenYn(\''+'N'+'\', \''+num+'\');" value="N" '+checkStrN+'>비공개';
			html += '</td>';
			html += '<td class="ucateedittabletd01'+t+'" ><button type="button" class="btn btn-primary btn-sm" onclick="ucateeditnamedel(\''+num+'\',\'ucatetr00'+t+'\');">삭제</button></td>'; 
			html += '<td class="ucateedittabletd01'+t+'" align="center"><span class="glyphicon glyphicon-chevron-up pointer" onclick="ucateeditnameup(\''+num+'\',\'ucatetr00'+t+'\',\''+ordby+'\');"></span></td>';
			html += '<td class="ucateedittabletd01'+t+'" align="center"><span class="glyphicon glyphicon-chevron-down pointer" onclick="ucateeditnamedown(\''+num+'\',\'ucatetr00'+t+'\',\''+ordby+'\');"></span></td>';
			html += '</tr>';
		});
		return html;
	}

	function getCate() {
		$('#cateDis').empty();
		$('#dataDis').empty();
		$.post('/plagiarism/getCate'+urlDo, {
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
			
			var html2 = '';
			html2 += '<li><button type="button" onclick="getSite(\'0\');" nname="MY" num="0" class="btn btn-default btn-sm catelistButton">MY</button></li>';
			for ( var k = 0; k < data.resultCate.length; k++) {
				var cate = data.resultCate[k];
				var ssStr = "btn-default";
				if(cate.stype=='0'){
					if(cate.num == "1"){
						ssStr = "btn-primary";
					}
					html2 += '<li><button type="button" onclick="getSite(' + cate.num + ');" class="btn '+ssStr+' btn-sm catelistButton" nname="'+cate.mname+'" num="'+cate.num+'">'+cate.mname+'</button></li>';
				}
			}
			
			if (html2 != '') {
				$('#cateDisButton').html(html2);
			}
		}, 'json');
	}

	function getSite(cate) {
		nowClickSite = cate;
		$('.subBtn').removeClass('btn-warning').removeClass('btn-default').addClass('btn-default');
		if(cate == 1){
			$('.subBtn:eq(0)').removeClass('btn-default').addClass('btn-warning');
		}else if(cate == 21){
			$('.subBtn:eq(1)').removeClass('btn-default').addClass('btn-warning');
		}else if(cate == 3){
			$('.subBtn:eq(2)').removeClass('btn-default').addClass('btn-warning');
		}else if(cate == 4){
			$('.subBtn:eq(3)').removeClass('btn-default').addClass('btn-warning');
		}else{
			$('.subBtn:eq(0)').removeClass('btn-default').addClass('btn-warning');
		}

		
		$('.mainDivd2').css("background-color","");
		$('.catelist').each(function(){
			var num = $(this).attr("num");
			if(num == cate){
				$('#datatitle').text($(this).attr("nname"));
				$(this).css("background-color","#ffa500");
			}else{
				$(this).css("background-color","");
			}
		});
		
		$('.catelistButton').removeClass('btn-primary').removeClass('btn-default').addClass('btn-default');
		$('.catelistButton').each(function(){
			var num = $(this).attr("num");
			if(num == cate){
				$('#datatitle').text($(this).attr("nname"));
				$(this).removeClass('btn-default').addClass('btn-primary');
			}else{
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
			html += '<button type="button" class="btn btn-default catelist2 btn-sm" onclick="getSiteLo('+cateTmp.num+',true);" num="'+cateTmp.num+'">'+cateTmp.name+'</button>';
			}
		}
		if (html != '') {
			$('#submenu').html(html).show();
			$('#submenu .catelist2:eq(0)').click();
			nowClickSubSite = $('#submenu .catelist2:eq(0)').attr("num");
			
		}else{
			$('#submenu').hide();
			getSiteLo(cate, false);
		}
	}

	function getSiteLo(cate, stpes){
		nowClickSubSite = cate;
		$('#dataDis').empty();
		
		if(cate == 0 && !loginflg){
			$('#dataDis').text("로그인 해주세요.");
		}else{
			var iid = $('#dataTmp').data("login.id");
			$.post('/plagiarism/getSite'+urlDo, {
				mode : '',
				cate : cate,
				iid : iid
			}, function(data) {
				
				if(stpes){
				$('#submenu .catelist2').removeClass('btn-warning').removeClass('btn-default').addClass('btn-default');
					$('#submenu .catelist2').each(function(){
						var num = $(this).attr("num");
						if(num == cate){ 
							$(this).removeClass('btn-default').addClass('btn-warning');
							nowClickSubSite = num;
						}else{
							 $(this).removeClass('btn-warning').addClass('btn-default');
						}
					});
				}
				
				var html = '';
				for ( var i = 0; i < data.resultList.length; i++) {
					var evt = data.resultList[i];
					var link = "";
					if(webm == 0 || (evt.addrem == null || evt.addrem == "null" || evt.addrem == "")){
						link = evt.addre;
					}else{
						link = evt.addrem;
					}
					if(webm == 1){
						html += '<a href="'+link+'" target="_blank">';
					}
					html += '<div class="pageItem col-xs-3 col-sm-4 col-md-3 col-lg-3">';
					html += '<div class="panel panel-default">';
					html += '<div class="panel-heading itemHeading">';
					html += evt.name;
					html += '</div>';
					html += '<div class="panel-body">';
					if(webm == 0){
						html += '<a href="'+link+'" target="_blank">';
					}
					html += '<img class="pointer imageClass img-rounded" ads="'+link+'" src="./img/site/'+evt.num+'.png" style="margin-top:5px;width:100%;height:100%;">';
					if(webm == 0){
						html += '</a>';
					}
					html += '</div>';
					html += '<div class="panel-footer itemFooter">';
						
					html += '<a><span class="glyphicon glyphicon-minus pointer" onclick="delSite(\''+evt.num+'\');"></span></a>';
					
					html += '</div>';
					html += '</div>';
					html += '</div>';
					if(webm == 1){
						html += '</a>';
					}
				}
				html += '<div class="mainDivd" id="siteuadd01" onclick="dirinput2();" style="cursor:pointer;width: 155px;height: 155px;background-color: #DADADA;text-align: center;margin: 5px;float: left;font-size:30px">사이트추가</div>';
				if (html != '') {
					$('#dataDis').html(html);
					
					 $('img').each(function(n){
				$(this).error(function(){
				 var ads = $(this).attr('ads');
				 $(this).attr('src', 'http://img.bitpixels.com/getthumbnail?code=48861&size=200&url='+ads);
				});
				});
					 buttonEf();
				}
				if(firstFlg){
				var dataTmp2 = $('#dataTmp2').val();
		if(dataTmp2 != ""){
			//getSite(0);
			loginTmpstart(dataTmp2);
		}else if($('#dataTmp3').val() != ""){
			loginTmpstart($('#dataTmp3').val());
		}
		firstFlg = false;
				}
				resizeWin();
				
			}, 'json');
		}

	}

	function hideCate(){
		var showFlg = $('#cateDis').data("showFlg");
		if(showFlg != 'N'){
			$('#cateDis').hide();
			$('#cateDis').data("showFlg", "N");
		}else{
			$('#cateDis').show();
			$('#cateDis').data("showFlg", "Y");
		}
		
	}
	function hideCateButton(){
		var showFlg = $('#cateDisButton').data("showFlg");
		if(showFlg != 'N'){
			$('#cateDisButton').hide();
			$('#cateDisButton').data("showFlg", "N");
			$('.xsSubMenu').show();
		}else{
			$('#cateDisButton').show();
			$('#cateDisButton').data("showFlg", "Y");
			$('.xsSubMenu').hide();
		}
		
	}

	function addfavorite(num) {
	var iid = $('#dataTmp').data("login.id");
		if(iid == null || iid == ""){
			messagePopup("로그인이 필요한 기능입니다.","즐겨찾기");
		}else{
			
			$.post('/plagiarism/addfavorite'+urlDo, {
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
		var joinemail = $('#joinemail').val();
		if(id == ''){
			$('#errordiv').text("아이디를 입력해 주세요.");
		}else if(id.length < 4){
			$('#errordiv').text("아이디는 4자리 이상 입력하세요.");
		}else if(pwd == ''){
			$('#errordiv').text("비밀번호를 입력해 주세요.");
		}else{
			var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

			if(pwd != cpwd){
				$('#errordiv').text("비밀번호와 비밀번호확인이 일치하지 않습니다.");
			}else if(joinemail != "" && regex.test(joinemail) === false){
				$('#errordiv').text("잘못된 이메일 형식입니다.");
			}else{
				$('#errordiv').text("");
				$.post('/plagiarism/joinStart'+urlDo, {
					mode : 'joinStart',
					id : id,
					pwd : pwd,
					joinemail : joinemail,
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
			$.post('/plagiarism/loginstart'+urlDo, {
				mode : '',
				id : id,
				pwd : pwd
			}, function(data) {
				if(data.result == "1"){
					$('#loginerrordiv').text("아이디 또는 비밀번호가 일치하지 않습니다.");
				}else if(data.result == "2"){
					$('#loginerrordiv').text("아이디 또는 비밀번호가 일치하지 않습니다.");
				}else{
					$('#topform').attr("action","/main");
					$('#topform').submit();
				}
			}, 'json');
		}
	}

	function loginTmpstart(id){
		$.post('/plagiarism/loginTmpstart'+urlDo, {
			mode : '',
			id : id
		}, function(data) {
			if(data.result == "1"){
				
			}else if(data.result == "2"){
				
				$('#cateDis01').empty();
				
				loginflg = true;
				$('#dataTmp').data("login.id",id);
				
				getSite(0);
				$('#ucateaddno').click();
				
				var html = viewucate(data);

				if (html != '') {
					$('.mainDivd2').remove();
					$('#cateDis').append(html);
				}
				$('#divSide00').show();
			}
		}, 'json');
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
		$('#topform').attr("action","/plagiarism/logout"+urlDo);
		$('#topform').submit();
	}

	function viewucate(data){
		var html = "";

		for ( var k = 0; k < data.resultList.length; k++) {
			var cate = data.resultList[k];
			html += '<li>';
			html += '<a class="mainDivd2" onclick="getSiteu(' + cate.num + ');" nname="'+cate.name+'" num="'+cate.num+'" stype="'+cate.stype+'" sgroup="'+cate.sgroup+'" ordby="'+cate.ordby+'">';
			html += cate.name+"*";
			html += '</a></li>';
		}
		
		var html2 = '';
		for ( var k = 0; k < data.resultList.length; k++) {
			var cate = data.resultList[k];
			if(cate.stype=='0'){
				html2 += '<li><button type="button" onclick="getSiteu(' + cate.num + ');" class="btn btn-default btn-sm catelistButton mainDivd24" nname="'+cate.name+'" num="'+cate.num+'">'+cate.name+'</button></li>';
			}
		}
		
		if (html2 != '') {
			$('.mainDivd24').remove();
			$('#cateDisButton').append(html2);
		}
		return html;
	}

	function getSiteu(cate){
		ucaten = cate;
		$('.catelist').css("background-color", "");
		$('.mainDivd2').each(function(){
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
		 $.post('/plagiarism/getSiteu'+urlDo, {
			mode : 'getSiteu', cate : cate, iid : iid
		}, function(data) {
			$('#dataDis').empty();	
			var html = '';
			for ( var i = 0; i < data.resultList.length; i++) {
				var evt = data.resultList[i];
				var link = "";
				if(webm == 0 || (evt.addrem == null || evt.addrem == "null" || evt.addrem == "")){
					link = evt.addre;
				}else{
					link = evt.addrem;
				}
				if(webm == 1){
					html += '<a href="'+link+'" target="_blank">';
				}
				html += '<div class="pageItem col-xs-6 col-sm-4 col-md-3 col-lg-3">';
				html += '<div class="panel panel-default">';
				html += '<div class="panel-heading">';
				html += evt.name;
				html += '</div>';
				html += '<div class="panel-body">';
				if(webm == 0){
					html += '<a href="'+link+'" target="_blank">';
				}
				html += '<img class="pointer imageClass img-rounded" src="http://img.bitpixels.com/getthumbnail?code=48861&size=200&url='+evt.addre+'" style="margin-top:5px;width:100%;height:100%;">';
				if(webm == 0){
					html += '</a>';
				}
				html += '</div>';
				html += '<div class="panel-footer">';
				if($('#dataTmp2').val() != ""){
					html += '<a><span class="glyphicon glyphicon-minus pointer" onclick="delfavorite2(\''+evt.num+'\');"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
				}
				html += '</div>';
				html += '</div>';
				html += '</div>';
				if(webm == 1){
					html += '</a>';
				}
			}
			
			if(editmode){
				if($('#dataTmp2').val() != ""){
					html += '<button type="button" class="btn btn-primary btn-lg" id="siteuadd01" onclick="dirinput2();">사이트<br/>추가</button>';
				}
			}
			if (html != '') {
				$('#dataDis').html(html);
				buttonEf();
			}
			resizeWin();
		}, 'json');
	}
	function dirinput2(){
		$('#errordiv12').text("");
		$('#catetitlediv12').text(ucatentext);
		$("#openAddModal").click();
	}
	function dirinput3(){
		$('#errordiv13').text("");
		$("#openAddModal2").click();
	}
	function delfavorite(num) {
		messageConfirmPopup("삭제하시겠습니까?","즐겨찾기","delfavorite",num);
	}
	function delfavorite2(num) {
		messageConfirmPopup("삭제하시겠습니까?","즐겨찾기","delfavorite2",num);
	}

	function saveConfirm (){
		var type =$('#saveConfirmBtn').data("type");
		var num =$('#saveConfirmBtn').data("num");
		var iid = $('#dataTmp').data("login.id");
		if(type == "delfavorite"){
			$.post('/plagiarism/delfavorite'+urlDo, {
					mode : '', num : num, iid : iid
				}, function(data) {
					$('#closeConfirmModal').click();
					messagePopup("삭제 되었습니다.","즐겨찾기");
					getSite(0);
				}, 'json');
		}else if(type == "delcate"){
				$.post('/plagiarism/ucatedel'+urlDo, {
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
		}else if(type == "delfavorite2"){
			$.post('/plagiarism/delsiteu'+urlDo, {
					mode : '', num : num, id : iid
				}, function(data) {
					$('#closeConfirmModal').click();
					messagePopup("삭제 되었습니다.","즐겨찾기");
					getSiteu(ucaten);
				}, 'json');
		}else if(type == "delSiteAd"){
			   $.post('/plagiarism/delSiteAd', {
					mode : '',
					id : $('#dataTmp').data("login.id"),
					num : num
				}, function(data) {
					$('#closeConfirmModal').click();
					messagePopup("삭제 되었습니다.","사이트(관리자)");
					getSite(nowClickSite);
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
			$.post('/plagiarism/orderprev'+urlDo, {
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
			$.post('/plagiarism/orderprev'+urlDo, {
				mode : 'orderprev', iid : iid, num : num, orderb : orderb, pnum : pnum, porderb : porderb
			}, function(data) {
				getSite(0);
			}, 'json');
		}
	}
	function setSite2(){
		var insitename =$('#insitename2').val();
		var insiteaddr = $('#insiteaddr2').val();
		if(insitename == ""){
			$('#errordiv12').text("이름을 입력해주세요");
		}else if(insiteaddr == ""){
			$('#errordiv12').text("주소를 입력해주세요");
		}else{
			$('#errordiv12').text("");
			var id = $('#dataTmp').data("login.id");
			if(insiteaddr.indexOf("http://") < 0 && insiteaddr.indexOf("https://") < 0){
				insiteaddr = "http://"+insiteaddr;
			}
			$.post('/plagiarism/inputsite'+urlDo, {
				mode : '',
				id : id,
				name : insitename,
				addr : insiteaddr,
				ucaten : nowClickSite,
				kindx : nowClickSubSite
			}, function(data) {
				$('#insitename2').val("");
				$('#insiteaddr2').val("");
				getSiteu(nowClickSite);
			}, 'json');
		}
	}
	function setSite3(){
		var insitename =$('#insitename3').val();
		var insiteaddr = $('#insiteaddr3').val();
		if(insitename == ""){
			$('#errordiv13').text("이름을 입력해주세요");
		}else if(insiteaddr == ""){
			$('#errordiv13').text("주소를 입력해주세요");
		}else{
			$('#errordiv13').text("");
			var id = $('#dataTmp').data("login.id");
			if(insiteaddr.indexOf("http://") < 0){
				insiteaddr = "http://"+insiteaddr;
			}
			$.post('/plagiarism/inputsite3'+urlDo, {
				mode : '',
				id : id,
				name : insitename,
				addr : insiteaddr,
				ucaten : ucaten
			}, function(data) {
				$('#insitename3').val("");
				$('#insiteaddr3').val("");
				getSite(0);
			}, 'json');
		}
		
	}
	function ucateeditnamedel(ucatenum,focusid){
		$('#closeCateModal').click();
		messageConfirmPopup("삭제하시겠습니까?","카테고리삭제","delcate",ucatenum);
	}
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
			$.post('/plagiarism/ucateeditnameup'+urlDo, {
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
			$.post('/plagiarism/ucateeditnameup'+urlDo, {
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
	function ucateeditOpenYn(openYn, num){
		$.post('/plagiarism/ucateeditOpenYn'+urlDo, {
			mode : '', iid : $('#dataTmp3').val(), num : num,openYn:openYn
		}, function(data) {
		}, 'json');
	}
	function findPWD(){
		$('#closeloginModal').click();
		$('#openFindsModal').click();
	}
	function findPwdGo(){
		var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		var findPwdId = $('#findPwdId').val();
		var findPwdEmail = $('#findPwdEmail').val();
		if(findPwdId == ""){
			$('#finderrordiv').text("아이디를 입력해주세요.");
		}else if(findPwdEmail == ""){
			$('#finderrordiv').text("이메일을 입력해주세요.");
		}else if(regex.test(findPwdEmail) === false){
			$('#finderrordiv').text("잘못된 이메일 형식입니다.");
		}else{
			$('#finderrordiv').text("");
			$.post('/plagiarism/sendEmailFindPwd'+urlDo, {
				mode : '',
				id : findPwdId,
				email : findPwdEmail
			}, function(data) {
				$('#finderrordiv').text("");
				if(data.result == "0"){
					$('#closeFindModal').click();
					messagePopup("메일을 발송하였습니다.","비밀번호찾기");
				}else if(data.result == "1"){
					$('#finderrordiv').text("등록된 이메일이 없습니다.");
				}else if(data.result == "2"){
					$('#finderrordiv').text("입력하신 정보가 일치하지 않습니다.");
				}else if(data.result == "3"){
					$('#finderrordiv').text("메일전송중 에러가 발생되었습니다. 다시 시도해 주시기 바랍니다.");
				}
			}, 'json');
		}
	}
	function delSite(num){
		messageConfirmPopup("삭제하시겠습니까?","사이트삭제(관리자)","delSiteAd",num);
	}