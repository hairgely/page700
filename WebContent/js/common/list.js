$(document).ready(function() {
	$('#pageData').data("pageNowIndex",1);//현재 페이지 번호
	$('#pageData').data("pageViewRow",10);//한 페이지에 보여줄 row 수
	$('#pageData').data("totalRow",0);//전체 row 수
	$('#pageData').data("pageViewFistNo",1);//네비게이션바의 시작 번호
	$('#pageData').data("basicPageCnt",10);//네비게이션바 보여줄 수 
	
	/*var html = '';
	html += '<div class="btn_navi">';
	html += '<a href="JAVASCRIPT:naviPre2()" id="pagePre01">◄◄</a> ';
	html += '<a href="JAVASCRIPT:naviPre();" id="pagePre02">◄</a> ';
	html += '<span id="pageN01" class="nobg pagenozone"><a href="#">1</a></span> ';
	html += '<span id="pageN02" class="pagenozone"><a href="#">2</a></span> ';
	html += '<span id="pageN03" class="pagenozone"><a href="#">3</a></span> ';
	html += '<span id="pageN04" class="pagenozone"><a href="#">4</a></span> ';
	html += '<span id="pageN05" class="pagenozone"><a href="#">5</a></span> ';
	html += '<span id="pageN06" class="pagenozone"><a href="#">6</a></span> ';
	html += '<span id="pageN07" class="pagenozone"><a href="#">7</a></span> ';
	html += '<span id="pageN08" class="pagenozone"><a href="#">8</a></span> ';
	html += '<span id="pageN09" class="pagenozone"><a href="#">9</a></span> ';
	html += '<span id="pageN010" class="pagenozone"><a href="#">10</a></span> ';
	html += '<a href="JAVASCRIPT:naviNext();" id="pageNxt01">►</a> ';
	html += '<a href="JAVASCRIPT:naviNext2();" id="pageNxt02">►►</a>';
	html += '</div>';*/
	var html = '';
	html += '<ul class="pagination">';
	html += '<li><a href="JAVASCRIPT:naviPre();" id="pagePre02">«</a></li>';
	html += '<li id="pageN01" class="active pagenozone"><a href="#">1</a></li>';
	html += '<li id="pageN02" class="pagenozone"><a href="#">2</a></li>';
	html += '<li id="pageN03" class="pagenozone"><a href="#">3</a></li>';
	html += '<li id="pageN04" class="pagenozone"><a href="#">4</a></li>';
	html += '<li id="pageN05" class="pagenozone"><a href="#">5</a></li>';
	html += '<li id="pageN06" class="pagenozone"><a href="#">6</a></li>';
	html += '<li id="pageN07" class="pagenozone"><a href="#">7</a></li>';
	html += '<li id="pageN08" class="pagenozone"><a href="#">8</a></li>';
	html += '<li id="pageN09" class="pagenozone"><a href="#">9</a></li>';
	html += '<li id="pageN010" class="pagenozone"><a href="#">10</a></li>';
	html += '<li><a href="JAVASCRIPT:naviNext();" id="pageNxt01">»</a></li>';
	html += '</ul>';
	
	$('.paging').html(html);
	displayPageNav();
	if($('#listType').length != 0 && $('#listType').val() == "popup"){
	}else{
		window.onpopstate = function(event) {
			pageReload();
		};
		
		history.pushState({state:1}, "State 2", "?state=2");
	}
});

function displayPageNav(){
	var basicPageCnt = $('#pageData').data("basicPageCnt");
	var totalRow = parseInt($('#pageData').data("totalRow"));
	var pageNowIndex = $('#pageData').data("pageNowIndex");
	var pageViewRow = $('#pageData').data("pageViewRow");
	var tmp = 1;
	if(pageNowIndex % basicPageCnt == 0){
		tmp = 0;
	}
	var pageN = parseInt(pageNowIndex/basicPageCnt) +tmp;
	var startNo = (basicPageCnt * pageN) - (basicPageCnt-1);
	var limitNo = (totalRow/pageViewRow) + 1;
	
	$('.pagenozone').empty();
	var tmpIndex = 1;
	for(var i=startNo;i<(startNo+basicPageCnt);i++){
		if(i == pageNowIndex){
			var html = '<a>'+pageNowIndex+'</a>';
			$('#pageN0'+tmpIndex).html(html).addClass("active").show();
		}else{
			if(i < limitNo){
				var html = '<a href="JAVASCRIPT:goPage('+i+');">'+i+'</a>';
				$('#pageN0'+tmpIndex).removeClass("active").show().html(html);
			}else{
				$('#pageN0'+tmpIndex).hide();
			}
		}
		tmpIndex++;
	}
}

/**
 * 다음 페이징 이동
 */ 
function naviNext(){
	var pageNowIndex = $('#pageData').data("pageNowIndex");//현재 페이지 번호
	var pageNowIndexTmp = parseInt(pageNowIndex) +  1;
	
	var totalRow = parseInt($('#pageData').data("totalRow"));
	var pageViewRow = $('#pageData').data("pageViewRow");
	var limitNo = parseInt(totalRow/pageViewRow) + 1;
	
	if(pageNowIndexTmp <= limitNo){
		$('#pageData').data("pageNowIndex",pageNowIndexTmp);
		selectData();
	}
}

/**
 * 이전 페이지 이동
 */
function naviPre(){
	var pageNowIndex = $('#pageData').data("pageNowIndex");//현재 페이지 번호
	var pageNowIndexTmp = parseInt(pageNowIndex) -  1;
	if(pageNowIndexTmp >= 1){
		$('#pageData').data("pageNowIndex",pageNowIndexTmp);
		selectData();
	}
}

/**
 * 맨 앞 페이지로 이동
 */
function naviPre2(){
	$('#pageData').data("pageViewFistNo",1);
	$('#pageData').data("pageNowIndex",1);
	selectData();
}

/**
 * 맨 뒤 페이지로 이동
 */
function naviNext2(){
	var totalRow = parseInt($('#pageData').data("totalRow"));
	var pageViewRow = $('#pageData').data("pageViewRow");
	var limitNo = (totalRow/pageViewRow) + 1;
	$('#pageData').data("pageViewFistNo",parseInt(limitNo));
	$('#pageData').data("pageNowIndex",parseInt(limitNo));
	selectData();
}

function sort(a){
	var name = $('#pageData').data("sortOptNo1");
	var type = $('#pageData').data("sortOptNo2");
	if(name != a){
		$('#pageData').data("sortOptNo1",a);//
		$('#pageData').data("sortOptNo2","DESC");//DESC//ASC//
		type = "DESC";
	}else{
		if(type == "DESC"){
			$('#pageData').data("sortOptNo2","ASC");//DESC//ASC//
		}else{
			$('#pageData').data("sortOptNo2","DESC");//DESC//ASC//
		}
	}
	$('.sortMark').each(function(){
		var sortName = $(this).attr("sortName");
		if(sortName == a){
			if(type == "DESC"){
				$(this).text("▼");
			}else{
				$(this).text("▲");
			}
		}
	});
	selectData();
}

function goPage(pNo){
	$('#pageData').data("pageNowIndex",pNo);
	selectData();
}

function changeListRow(){
	var listRow = $('#listRow').val();
	$('#pageData').data("pageViewRow",listRow);//한 페이지에 보여줄 row 수
	selectData();
}