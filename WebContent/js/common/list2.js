$(document).ready(function() {
	$('#pageData_2').data("pageNowIndex",1);//현재 페이지 번호
	$('#pageData_2').data("pageViewRow",10);//한 페이지에 보여줄 row 수
	$('#pageData_2').data("totalRow",0);//전체 row 수
	$('#pageData_2').data("pageViewFistNo",1);//네비게이션바의 시작 번호
	$('#pageData_2').data("basicPageCnt",10);//네비게이션바 보여줄 수 
	
	var html = '<a href="JAVASCRIPT:naviPre2_2()" id="pagePre01_2"><img src="/images/board/btn_pre00.gif" alt="맨앞으로" class="vm" /></a>';
	html += '<a href="JAVASCRIPT:naviPre_2();" id="pagePre02_2"><img src="/images/board/btn_pre01.gif" alt="이전" class="vm" /></a>';
	html += '<span id="pageN0_21" class="nobg pagenozone_2"><a href="#"><em>1</em></a></span>';
	html += '<span id="pageN0_22" class="pagenozone_2"><a href="#">2</a></span> ';
	html += '<span id="pageN0_23" class="pagenozone_2"><a href="#">3</a></span> ';
	html += '<span id="pageN0_24" class="pagenozone_2"><a href="#">4</a></span> ';
	html += '<span id="pageN0_25" class="pagenozone_2"><a href="#">5</a></span> ';
	html += '<span id="pageN0_26" class="pagenozone_2"><a href="#">6</a></span> ';
	html += '<span id="pageN0_27" class="pagenozone_2"><a href="#">7</a></span> ';
	html += '<span id="pageN0_28" class="pagenozone_2"><a href="#">8</a></span> ';
	html += '<span id="pageN0_29" class="pagenozone_2"><a href="#">9</a></span> ';
	html += '<span id="pageN0_210" class="pagenozone_2"><a href="#">10</a></span> ';
	html += '<a href="JAVASCRIPT:naviNext_2();" id="pageNxt01_2">';
	html += '<img src="/images/board/btn_next01.gif" alt="다음" class="vm" /></a> ';
	html += '<a href="JAVASCRIPT:naviNext2_2();" id="pageNxt02_2">';
	html += '<img src="/images/board/btn_next00.gif" alt="맨뒤으로" class="vm" />';
	html += '</a>';
	$('.paging_2').html(html);
	displayPageNav_2();
	
/*	window.onpopstate = function(event) {
		pageReload();
	};

	history.pushState({state:1}, "State 2", "?state=2");*/
});

function displayPageNav_2(){
	var basicPageCnt = $('#pageData_2').data("basicPageCnt");
	var totalRow = parseInt($('#pageData_2').data("totalRow"));
	var pageNowIndex = $('#pageData_2').data("pageNowIndex");
	var pageViewRow = $('#pageData_2').data("pageViewRow");
	var tmp = 1;
	if(pageNowIndex % basicPageCnt == 0){
		tmp = 0;
	}
	var pageN = parseInt(pageNowIndex/basicPageCnt) +tmp;
	var startNo = (basicPageCnt * pageN) - (basicPageCnt-1);
	var limitNo = (totalRow/pageViewRow) + 1;
	
	$('.pagenozone_2').empty();
	var tmpIndex = 1;
	for(var i=startNo;i<(startNo+basicPageCnt);i++){
		if(i == pageNowIndex){
			var html = '<em>'+pageNowIndex+'</em>';
			$('#pageN0_2'+tmpIndex).addClass("nobg").html(html).show();
		}else{
			if(i < limitNo){
				var html = '<a href="JAVASCRIPT:goPage_2('+i+');">'+i+'</a>';
				$('#pageN0_2'+tmpIndex).removeClass("nobg").html(html).show();
			}else{
				$('#pageN0_2'+tmpIndex).hide();
			}
		}
		tmpIndex++;
	}
}

/**
 * 다음 페이징 이동
 */ 
function naviNext_2(){
	var pageNowIndex = $('#pageData_2').data("pageNowIndex");//현재 페이지 번호
	var pageNowIndexTmp = parseInt(pageNowIndex) +  1;
	
	var totalRow = parseInt($('#pageData_2').data("totalRow"));
	var pageViewRow = $('#pageData_2').data("pageViewRow");
	var limitNo = parseInt(totalRow/pageViewRow) + 1;
	
	if(pageNowIndexTmp <= limitNo){
		$('#pageData_2').data("pageNowIndex",pageNowIndexTmp);
		selectData_2();
	}
}

/**
 * 이전 페이지 이동
 */
function naviPre_2(){
	var pageNowIndex = $('#pageData_2').data("pageNowIndex");//현재 페이지 번호
	var pageNowIndexTmp = parseInt(pageNowIndex) -  1;
	if(pageNowIndexTmp >= 1){
		$('#pageData_2').data("pageNowIndex",pageNowIndexTmp);
		selectData_2();
	}
}

/**
 * 맨 앞 페이지로 이동
 */
function naviPre2_2(){
	$('#pageData_2').data("pageViewFistNo",1);
	$('#pageData_2').data("pageNowIndex",1);
	selectData_2();
}

/**
 * 맨 뒤 페이지로 이동
 */
function naviNext2_2(){
	var totalRow = parseInt($('#pageData_2').data("totalRow"));
	var pageViewRow = $('#pageData_2').data("pageViewRow");
	var limitNo = (totalRow/pageViewRow) + 1;
	$('#pageData_2').data("pageViewFistNo",parseInt(limitNo));
	$('#pageData_2').data("pageNowIndex",parseInt(limitNo));
	selectData_2();
}

function sort_2(a){
	var name = $('#pageData_2').data("sortOptNo1");
	var type = $('#pageData_2').data("sortOptNo2");
	if(name != a){
		$('#pageData_2').data("sortOptNo1",a);//PLAGIARISM_RATE//VALUE05//표절율/제출일/
		$('#pageData_2').data("sortOptNo2","DESC");//DESC//ASC//
		type = "DESC";
	}else{
		if(type == "DESC"){
			$('#pageData_2').data("sortOptNo2","ASC");//DESC//ASC//
		}else{
			$('#pageData_2').data("sortOptNo2","DESC");//DESC//ASC//
		}
	}
	selectData_2();
}

function goPage_2(pNo){
	$('#pageData_2').data("pageNowIndex",pNo);
	selectData_2();
}

function changeListRow_2(){
	var listRow = $('#listRow').val();
	$('#pageData_2').data("pageViewRow",listRow);//한 페이지에 보여줄 row 수
	selectData_2();
}

