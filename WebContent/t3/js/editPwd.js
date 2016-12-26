var urlDo = "";
$(function() {
		
		$(document).ajaxSend(function(event, request, settings) {
		$('#loading-indicator').show();
		});

		$(document).ajaxComplete(function(event, request, settings) {
		$('#loading-indicator').hide();
		});
		
		$('.navbar-side').hide();
	});
	
function editPwd(){
		var id = $('#findid').val();
		var pwd = $('#findpw').val();
		var cpwd = $('#findpwconfirm').val();
		var key = $('#dataTmp3').val();
		if(id == ''){
			$('#finderrordiv').text("아이디를 입력해 주세요.");
		}else if(id.length < 4){
			$('#finderrordiv').text("아이디는 4자리 이상 입력하세요.");
		}else if(pwd == ''){
			$('#finderrordiv').text("비밀번호를 입력해 주세요.");
		}else{
			if(pwd != cpwd){
				$('#finderrordiv').text("비밀번호와 비밀번호확인이 일치하지 않습니다.");
			}else{
				$('#finderrordiv').text("");
				$.post('/plagiarism/updatePwd'+urlDo, {
					mode : 'editPwd',
					id : id,
					pwd : pwd,
					key : key,
				}, function(data) {
					if(data.result == "1"){
						$('#finderrordiv').text("해당 KEY는 이미 만료되었습니다. 입력한 정보를 다시 확인해 주시기 바랍니다.");
					}else if(data.result == "2"){
						$('#finderrordiv').text("입력한 정보를 찾을 수 없습니다.");
					}else if(data.result == "3"){
						$('#finderrordiv').text("예기치 않은 오류가 발생하였습니다. 다시 시도해주시기 바랍니다.");
					}else{
						
						$('#findid').val("");
						$('#findpw').val("");
						$('#findpwconfirm').val("");
						
						messagePopup("변경되었습니다.","비밀번호");
						
					}
				}, 'json');
			}
		}
	}
 function goMain(){
	 $('#topform').attr("action","/main");
		$('#topform').submit();
 }
 
 function messagePopup(message, title){
	 $('#myModalLabel').text(title);
	 $('#myModalLabelBody').text(message);
	 $('#openModal').click();
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