<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Onpaging - Text</title>

    <!-- Bootstrap core CSS -->
    <link href="/t5/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="/t5/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="/t5/assets/css/style.css" rel="stylesheet">
    <link href="/t5/assets/css/style-responsive.css" rel="stylesheet">
  <!-- CSS Reset -->
  <link rel="stylesheet" href="/t4/css/reset.css">

  <!-- Global CSS for the page and tiles -->
  <link rel="stylesheet" href="/t4/css/main.css">
  <link rel="stylesheet" href="/t5/assets/css/jquery-ui-1.9.2.custom.min.css">
  <link rel="stylesheet" href="/css/common/admin_style.css">
  <style type="text/css">
  .recommendClass{margin:15px;max-height:150px;overflow:auto; }
  .repleDiv{width:80%; }
  .moreBtn{cursor : pointer; }
  </style>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="/discount" class="logo"><b>Onpaging.com</b></a>
            <!--logo end-->
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="/main">Onpaging</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
                  <li class="mt">
                      <a class="active" href="javascript:pageAdd();">
                          <i class="fa fa-dashboard"></i>
                          <span>나를 변화시킨 글귀</span>
                      </a>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
        <section class="wrapper">

			<div id="main" role="main">

      <div class="row mt" id="discountAdd">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> 나를 변화시킨 글귀</h4>
                  	  <div id="tbodya">
                  	  
                  	  </div>
                  	  <div style="text-align:center;">
	                       <p class="paging"></p>
                  	  </div>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
    </div>
		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="/t5/assets/js/jquery.js"></script>
    <script src="/t5/assets/js/jquery-ui-1.9.2.custom.min.js" type="text/javascript"></script>
    <script src="/t5/assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="/t5/assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="/t5/assets/js/jquery.scrollTo.min.js"></script>
    <script src="/t5/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <!--common script for all pages-->
    <script src="/t5/assets/js/common-scripts.js"></script>
    <!-- Include the imagesLoaded plug-in -->
    <script src="/t4/libs/jquery.imagesloaded.js"></script>
    <!-- Include the plug-in -->
    <script src="/t4/jquery.wookmark.js"></script>
    <script type="text/javascript" src="/js/common/utils.js"></script>
    <script type="text/javascript" src="/js/common/list.js"></script>
    <script type="text/javascript" src="/js/jq/jquery.highlight-4.js"></script>
    <script type="text/javascript" src="/js/jq/jquery.cookie.js"></script>
    <!--script for this page-->
  <script>
  $(document).ready(function() {
		$('#pageData2').data("pageNowIndex",1);//현재 페이지 번호
		$('#pageData2').data("pageViewRow",10);//한 페이지에 보여줄 row 수
		$('#pageData2').data("totalRow",0);//전체 row 수
		$('#pageData2').data("pageViewFistNo",1);//네비게이션바의 시작 번호
		$('#pageData2').data("basicPageCnt",10);//네비게이션바 보여줄 수 
		selectData();
		
	});

	function pageReload(){
		selectData();
	}

	function selectData(){
		var searchWord = $('#searchWord').val();
		var check = true;
		if(check){
			$.ajax({
				url: '/text/getText',
				type: 'POST',
				data: {
					pageNowIndex: $('#pageData').data("pageNowIndex"),
					pageViewRow: $('#pageData').data("pageViewRow"),
					sortOptNo1: $('#pageData').data("sortOptNo1"),
					sortOptNo2: $('#pageData').data("sortOptNo2"),
					searchType: $('#searchType').val(),
					searchWord: searchWord
				},
				dataType: 'json',
				async: false,
				success: function(data, textStatus, xhr) {

					$('#pageData').data("totalRow",data.totalCnt);
					$('#tbodya').empty();
					var html = "";
					
					var total = parseInt(data.totalCnt);
					var pageNum = total - ($('#pageData').data("pageViewRow") * ($('#pageData').data("pageNowIndex") -1) );
					
					for(var i = 0; i < data.result.length;i++){
						var evt = data.result[i];
						html += '<div class="weather-2" data-num="'+$.chkBlk(evt.num, "")+'">';
						html += '<div class="weather-2-header">';
						html += '<div class="row">';
						html += '<div class="col-sm-6 col-xs-6">';
						html += '<p>'+(pageNum-(i))+'. '+$.chkBlk(evt.title, "")+'</p>';
						html += '</div>';
						html += '<div class="col-sm-6 col-xs-6 goright">';
						html += '<p class="small"></p>';
						html += '</div></div></div>';
						html += '<div class="row centered">';
						html += $.chkBlk(evt.contents, "");
						html += '</div>';
						html += '<div class="row data">';
						html += '<div class="col-sm-6 col-xs-6 goleft">';
						html += '<h4><a href="'+$.chkBlk(evt.linkUrl, "")+'" target="_blank">관련링크</a></h4>';
						html += '</div>';
						html += '<div class="col-sm-6 col-xs-6 goright">';
						html += '<button onclick="recom(\''+$.chkBlk(evt.num, "")+'\')" type="button" class="btn btn-default btn-lg">';
						html += '<span class="glyphicon glyphicon-thumbs-up"></span><span id="recomCnt'+$.chkBlk(evt.num, "")+'">'+$.chkBlk(evt.recomCnt, "")+'</span>';
						html += '</button> ';
						html += '<button onclick="comment(\''+$.chkBlk(evt.num, "")+'\')" type="button" class="btn btn-default btn-lg">';
						html += '<span class="glyphicon glyphicon-comment"></span>';
						html += '</button>';
						html += '</div>';
						html += '</div>';
						html += '<div class="repleInt"></div>';
						html += '<div class="repleDiv"></div>';
						html += '</div>';
					}
					$('#tbodya').html(html);
					
					for(var i = 0; i < data.result.length;i++){
						var evt = data.result[i];
						getComment(evt.num);
					}
					
					
					displayPageNav();
					if(html != ''){
						if(searchWord != ''){
							$("#tbodya").highlight(searchWord); 
						}
						
					}
				} 
			});
		}
	}
	
	function cookieSet(str, num){
		var recomClickTmp = $.cookie(str);
		var recomClick = [];
		if(recomClickTmp != null && recomClickTmp != undefined && recomClickTmp != ""){
			recomClick = recomClickTmp.split(",");
		}
		recomClick[recomClick.length] = num;
		$.cookie(str, recomClick.join(","), { expires: 1 });
	}
	
	function cookieCheck(str, num, inde){
		var check = 0;
		var recomClickTmp = $.cookie(str);
		var recomClick = [];
		if(recomClickTmp != null && recomClickTmp != undefined && recomClickTmp != ""){
			recomClick = recomClickTmp.split(",");
		}
		for(var i = 0; i < recomClick.length;i++){
			if(num == recomClick[i]){
				check++;
			}
		}
		
		return check < inde;
	}

	function recom(num){
		if(cookieCheck('onpagingTextRecommNum', num,0)){
			cookieSet('onpagingTextRecommNum', num);
			$.post("" +'/text/editRecom', {
				num : num
			}, function(data) {
				var cnt = parseInt($('#recomCnt'+num).text());
				$('#recomCnt'+num).text(cnt+1);
			}, 'json');
		}
		
	}
	function comment(num){
		$('.commentDiv').remove();
		var html = '';
		html += '<div class="form-group commentDiv" style="margin-top:5px;">';
		html += '<label class="col-sm-2 col-sm-2 control-label">답변</label>';
		html += '<textarea rows="7" id="contents" cols="7" style="resize:none;width:70%;float:left;" class="form-control"></textarea>';
		html += '<button onclick="commentSave(\''+num+'\')" type="button" class="btn btn-default btn-lg" style="float:left;margin-left:5px;">';
		html += '<span class="glyphicon glyphicon-plus"></span>';
		html += '</button> ';
		html += '</div><div style="clear:both;"></div>';
		$('.weather-2[data-num='+num+']').find('.repleInt').html(html);
		
	}
	
	function commentSave(num){
		var contents = $('#contents').val();
		if(contents != ""){
			if(cookieCheck('onpagingTextRecommInNum', num, 5)){
				cookieSet('onpagingTextRecommInNum', num);
				$.post("" +'/text/commentSave', {
					num : num,
					contents : contents
				}, function(data) {
					$('.commentDiv').remove();
					getComment(num);
				}, 'json');
			}else{
				alert("같은 글에 리플은 하루 5개로 제한됩니다.");
			}
		}
	}
	
	function getComment(num){
		$.ajax({
			url: '/text/getComment',
			type: 'POST',
			data: {
				pageNowIndex: $('#pageData2').data("pageNowIndex"),
				pageViewRow: $('#pageData2').data("pageViewRow"),
				sortOptNo1: $('#pageData2').data("sortOptNo1"),
				sortOptNo2: $('#pageData2').data("sortOptNo2"),
				searchType: $('#searchType').val(),
				searchWord: $('#searchWord').val(),
				num: num
			},
			dataType: 'json',
			async: false,
			success: function(data, textStatus, xhr) {
				
				$('#pageData2').data("totalRow",data.totalCnt);
				var html = "";
				
				var total = parseInt(data.totalCnt);
				var pageNum = total - ($('#pageData2').data("pageViewRow") * ($('#pageData2').data("pageNowIndex") -1) );
				
				for(var i = 0; i < data.result.length;i++){
					var evt = data.result[i];
					html += '<div class="recommendClass"><span class="glyphicon glyphicon-hand-right"></span> ';
					html += $.chkBlk(evt.contents, "");
					html += '</div>';
				}
				$('.weather-2[data-num='+num+']').find('.repleDiv').empty();
				$('.weather-2[data-num='+num+']').find('.repleDiv').html(html);
				
				var pageN = pageNum - parseInt($('#pageData2').data("pageViewRow"));
				if(pageN > 0){
					$('.weather-2[data-num='+num+']').find('.moreBtn').remove();
					var pHtml = '<span class="moreBtn glyphicon glyphicon-arrow-left btn-lg" onclick="prevCommend(\''+num+'\')"></span>';
					var nHtml = '<span class="moreBtn glyphicon glyphicon-arrow-right btn-lg" onclick="moreCommend(\''+num+'\')"></span>';
					if(parseInt($('#pageData2').data("pageNowIndex")) != 1){
						nHtml = pHtml+nHtml;
					}
					$('.weather-2[data-num='+num+']').find('.repleDiv').append(nHtml);
				}else{
					if(parseInt($('#pageData2').data("pageNowIndex")) != 1){
						var pHtml = '<span class="moreBtn glyphicon glyphicon-arrow-left btn-lg" onclick="prevCommend(\''+num+'\')"></span>';
						$('.weather-2[data-num='+num+']').find('.repleDiv').append(pHtml);
					}
				}
			} 
		});
	}
	
	function moreCommend(num){
		$('#pageData2').data("pageNowIndex",parseInt($('#pageData2').data("pageNowIndex")) + 1);
		getComment(num);
	}
	function prevCommend(num){
		$('#pageData2').data("pageNowIndex",parseInt($('#pageData2').data("pageNowIndex")) - 1);
		getComment(num);
	}

  </script>
  <input type="hidden" id="pageData" value="0" />
  <input type="hidden" id="pageData2" value="0" />
  </body>
</html>
