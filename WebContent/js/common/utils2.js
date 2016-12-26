$( document ).ready(function() {
		
	$('.removeHan').keyup(function(){
		$(this).val(remove_han($(this).val()));
	}).blur(function(){
		$(this).val(remove_han($(this).val()));
	});
	
	$body = $("body");
	$body.append('<div class="modal"></div>');
	$(document).on({
		ajaxStart: function() { $body.addClass("loading");},
		ajaxStop: function() { $body.removeClass("loading");}    
	});
	
	$.popup = function(options) {
		
		var target = options.target!=undefined?
						options.target:"NewPopup";
		
		try{
			$form = $("<form>", {
				'action' : options.url,
				'target' : target,
				'method' : 'POST'
			});
			
			// data 추가
			if (options.data != undefined) {
				for (var key in options.data) {
					if(options.data.hasOwnProperty(key)){
						$hiddenInput = $("<input type='hidden'/>").
										attr("name", key);
						
						var val = options.data[key];
						if (val != undefined && val != "") 
							$hiddenInput.attr('value', val);
						$hiddenInput.appendTo($form);
					}
				}
			}
			
			// 메소드 추가
			if (options.method != undefined && options.method != "")
				$("<input type='hidden' name ='method'/>").
				attr('value', options.method).
				appendTo($form);
			
			$form.appendTo('body');
			
			if (options.width == undefined) {
				options.width = 800;
			}
		
			if (options.height == undefined) {
				options.height = 600;
			}
			
			var x = (screen.availWidth - options.width) / 2;
			var y = (screen.availHeight - options.height) / 2;
			var opt =   "left=" + x + "px," + 
						"top=" + y + "px," + 
						"width=" + options.width + "," + 
						"height=" + options.height + "," + 
						"toolbar=no," +
						"location=no," +
						"directories=no," +
						"status=no," +
						"menubar=no," +
						"resizable=yes," +
						"scrollbars=yes";
			
			window.open("", target, opt);
			
			$form.submit().remove();
		} catch (e) {
			return false;
		}
	};

	$.ajaxSession = function(data) {
		// 마스크 제거
		$.removeMask();
		
		if (data.resultCode != undefined && data.resultCode == 'ExpiredSession') {
			alert(data.messageCode);
		
			// 팝업인 경우
			if (opener != null) {
			opener.top.location.reload();
			window.close();
			} 
			// 팝업내 IFRAME인 경우
			else if (parent.top.opener != null) {
			parent.top.opener.top.location.reload();
			parent.top.window.close();
			} 
			// 팝업이 아닌경우
			else {
			top.location.reload();
			}
			
			return false;
 	}
		
		return true;
	};
	
	$.removeMask = function(){
		$("body").removeClass("loading");
	};
	
	/* 금액 콤마 표시*/
	$.set_comma = function(n){
		var reg = /(^[+-]?\d+)(\d{3})/;
		n += '';
		while (reg.test(n)){
			n = n.replace(reg, '$1' + ',' + '$2');
		}

		return n;
	};
	
	$.chkBlk = function(data, defaultValue){
		if(data == null || data == undefined){
			return defaultValue;
		}else{
			return data;
		}
	};
	
	$.chkBlkDt = function(data, defaultValue){
		if(data == null || data == undefined){
			return defaultValue;
		}else{
			return data.substring(0, 10).split("-").join(".");
		}
	};
	
	$.chkBlkDt2 = function(data, defaultValue){
		if(data == null || data == undefined){
			return defaultValue;
		}else{
			var yy = parseInt(data.substr(2, 2));
			var mm = parseInt(data.substr(4, 2));
			var dd = parseInt(data.substr(6, 2));
			return yy+"."+$.zeroPad(mm)+"."+$.zeroPad(dd);
		}
	};
	
	/* 날짜 더하기 Return : yyyy.mm.dd*/
	$.dateAdd = function(dateStr, addDay){
		if(addDay == ""){
			addDay = 0;
		}
		dateStr = dateStr.split(".").join("");
		var yy = parseInt(dateStr.substr(0, 4));
		var mm = parseInt(dateStr.substr(4, 2));
		var dd = parseInt(dateStr.substr(6, 2));
		var d = new Date(yy,mm - 1, dd);
		d.setDate(d.getDate()+parseInt(addDay));
		return d.getFullYear()+"."+$.zeroPad((d.getMonth()+1))+"."+$.zeroPad(d.getDate());
	};
	
	/* 날짜 더하기 Return : yyyy.mm.dd*/
	$.dateAddMonth = function(dateStr, addMonth){
		dateStr = dateStr.split(".").join("");
		var yy = parseInt(dateStr.substr(0, 4));
		var mm = parseInt(dateStr.substr(4, 2));
		var dd = parseInt(1);
		var d = new Date(yy,mm - 1, dd);
		d.setMonth(d.getMonth()+parseInt(addMonth));
		return d.getFullYear()+"."+$.zeroPad((d.getMonth()+1));
	};
	
	$.zeroPad = function(x){
		if(x != "" && parseInt(x) < 10){
			return "0"+x;
		}else{
			return x;
		}
	};
	
	
});
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function remove_han(str)
{
   return str.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
}