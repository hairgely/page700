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

    <title>DASHGUM - Bootstrap Admin Template</title>

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
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src='/common/ckeditor/ckeditor.js'></script>
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
                          <span>할인등록</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:pageList();" >
                          <i class="fa fa-desktop"></i>
                          <span>할인목록</span>
                      </a>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="/discount" >
                          <i class="fa fa-desktop"></i>
                          <span>할인정보</span>
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
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> 할인등록</h4>
                      <form class="form-horizontal style-form" method="get">
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">제목</label>
                              <div class="col-sm-10">
                                  <input type="text" id="title" class="form-control round-form" placeholder="제목을 입력해주세요">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">서브내용</label>
                              <div class="col-sm-10">
                              		<textarea rows="7" id="mcontents" cols="7" style="resize:none;" class="form-control"></textarea>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">내용</label>
                              <div class="col-sm-10">
                              		<textarea rows="7" id="contents" cols="7" style="resize:none;" class="form-control"></textarea>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">타입선택1</label>
                              <div class="col-sm-10">
                                <input type="radio" name="type1" id="optionsRadios1" value="1" checked> 추첨
							    <input type="radio" name="type1" id="optionsRadios2" value="2"> 선착순
							    <input type="radio" name="type1" id="optionsRadios3" value="3"> 선착순
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">타입선택2</label>
                              <div class="col-sm-10">
                                <input type="radio" name="type2" id="optionsRadios1" value="1" checked> 추첨
							    <input type="radio" name="type2" id="optionsRadios2" value="2"> 선착순
							    <input type="radio" name="type2" id="optionsRadios3" value="3"> 선착순
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">타입선택3</label>
                              <div class="col-sm-10">
                                <input type="radio" name="type3" id="optionsRadios1" value="1" checked> 추첨
							    <input type="radio" name="type3" id="optionsRadios2" value="2"> 선착순
							    <input type="radio" name="type3" id="optionsRadios3" value="3"> 선착순
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">이벤트 날짜</label>
                              <div class="col-sm-10">
                                  <input type="text" id="start" class="form-control datepicker" >
                                  <input type="text" id="end" class="form-control datepicker" >
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">이미지</label>
                              <div class="col-sm-10">
                                  <input type="text" id="imgurl" class="form-control" placeholder="이미지URL">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">xwidth</label>
                              <div class="col-sm-10">
                                  <input type="text" id="xx" class="form-control" placeholder="이미지가로">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">yheight</label>
                              <div class="col-sm-10">
                                  <input type="text" id="yy" class="form-control" placeholder="이미지세로">
                              </div>
                          </div>
                          <button type="button" class="btn btn-primary" id="discountAddBtn" onclick="addDiscount();">저장</button>
                          <button type="button" class="btn btn-primary" id="discountEditBtn" onclick="editDiscount();" style="display:none;">수정</button>
                          <button type="button" class="btn btn-primary" id="discountDelBtn" onclick="delDiscount();" style="display:none;">삭제</button>
                          <input type="text" id="num" />
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
          	
          	<div class="row mt" id="discountList" style="display:none;">
              <table class="table" >
                <thead>
                <tr>
                    <th>num</th>
                    <th>제목</th>
                    <th>type1</th>
                    <th>type1</th>
                    <th>type1</th>
                    <th>start</th>
                    <th>end</th>
                    <th>imgurl</th>
                </tr>
                </thead>
                <tbody id="dislist">
                </tbody>
            </table>
          	</div>
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
    <!--script for this page-->
    
  <script>
  var editor = [ ];
      $(function(){
    	  $( ".datepicker" ).datepicker({dateFormat: "yy.mm.dd"});
    	  if($('#contents').length == 1){
    			
    			editor[1] = CKEDITOR.replace( 'contents', {
    				filebrowserUploadUrl: '/upload/image'
    			});
    			
    			editor[1].updateElement();
    		}
      });
	function pageList(){
		$('#discountAdd').hide();
		$('#discountAddBtn').show();
		$('#discountEditBtn').hide();
		$('#discountDelBtn').hide();
		$('#discountList').show();
		$('#num').val("");
		$.post("" +'/discount/getDiscountlist', {
			pageViewRow : 100
		}, function(data) {
			var html = '';
			for(var i=0; i< data.resultList.length;i++){
				var evt = data.resultList[i];
				html +='<tr>';
				html +='<td>'+evt.num+'</td>';
				html +='<td onclick="getDiscountOne('+evt.num+')">'+evt.title+'</td>';
				html +='<td>'+evt.type1+'</td>';
				html +='<td>'+evt.type2+'</td>';
				html +='<td>'+evt.type3+'</td>';
				html +='<td>'+evt.start+'</td>';
				html +='<td>'+evt.end+'</td>';
				var xxyy = "";
				if(evt.xx != null && evt.xx != "" && evt.yy != null && evt.yy != ""){
					xxyy = 'width:'+evt.xx+'px;height:'+evt.yy+'px;';
				}
				html +='<td><img src="'+evt.imgurl+'" style="'+xxyy+' "/></td>';
				html +='</tr>';
			}
			if (html != '') {
				$('#dislist').html(html);
			}
			
		}, 'json');
	}
	function pageAdd(){
		$('#discountAdd').show();
		$('#discountList').hide();
		
	}
	
	function addDiscount(){
		$('#contents').val(editor[1].getData());
		$.post("" +'/discount/addDiscount', {
			title : $('#title').val(),
			contents : $('#contents').val(),
			mcontents : $('#mcontents').val(),
			type1 : $(':radio[name="type1"]:checked').val(),
			type2 : $(':radio[name="type2"]:checked').val(),
			type3 : $(':radio[name="type3"]:checked').val(),
			start : $('#start').val(),
			end : $('#end').val(),
			imgurl : $('#imgurl').val(),
			xx : $('#xx').val(),
			yy : $('#yy').val()
		}, function(data) {
			if(data.result == "1"){
				alert("저장되었습니다.");
				pageList();
			}else{
				pageList();
			}
		}, 'json');
	}
	function editDiscount(){
		$.post("" +'/discount/editDiscount', {
			num : $('#num').val(),
			title : $('#title').val(),
			contents : $('#contents').val(),
			type1 : $(':radio[name="type1"]:checked').val(),
			type2 : $(':radio[name="type2"]:checked').val(),
			type3 : $(':radio[name="type3"]:checked').val(),
			start : $('#start').val(),
			end : $('#end').val(),
			imgurl : $('#imgurl').val(),
			xx : $('#xx').val(),
			yy : $('#yy').val()
		}, function(data) {
			if(data.result == "1"){
				alert("저장되었습니다.");
				pageList();
			}else{
				pageList();
			}
		}, 'json');
	}
	function delDiscount(){
		$.post("" +'/discount/delDiscount', {
			num : $('#num').val()
		}, function(data) {
			if(data.result == "1"){
				alert("저장되었습니다.");
				pageList();
			}else{
				pageList();
			}
		}, 'json');
	}
	
	function getDiscountOne(num){
		$('#discountAdd').show();
		$('#discountList').hide();
		$('#discountAddBtn').hide();
		$('#discountEditBtn').show();
		$('#discountDelBtn').show();
		$.post("" +'/discount/getDiscountOne', {
			num : num
		}, function(data) {
			var evt = data.resultList;
			$('#num').val(evt.num);
			$('#title').val(evt.title);
			$('#contents').val(evt.contents);
			$('input:radio[name=type1]:input[value='+evt.type1+']').attr("checked", true);
			$('input:radio[name=type2]:input[value='+evt.type2+']').attr("checked", true);
			$('input:radio[name=type3]:input[value='+evt.type3+']').attr("checked", true);
			$('#start').val(evt.start);
			$('#end').val(evt.end);
			$('#imgurl').val(evt.imgurl);
			$('#xx').val(evt.xx);
			$('#yy').val(evt.yy);
			
		}, 'json');
	}
  </script>
  </body>
</html>
