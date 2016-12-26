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
                          <span>텍스트등록</span>
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
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> 텍스트등록</h4>
                      <form id="saveForm" class="form-horizontal style-form" method="post" enctype="multipart/form-data" action="/text/insertText">
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">제목</label>
                              <div class="col-sm-10">
                                  <input type="text" id="title" name="title" class="form-control round-form" placeholder="제목을 입력해주세요">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">서브내용</label>
                              <div class="col-sm-10">
                              		<textarea rows="7" id="mcontents" name="mcontents" cols="7" style="resize:none;" class="form-control"></textarea>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">인용</label>
                              <div class="col-sm-10">
                              		<textarea rows="7" id="mcontents1" name="mcontents1" cols="7" style="resize:none;" class="form-control"></textarea>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">인용인</label>
                              <div class="col-sm-10">
                              		<input type="text" id="mcontents2" name="mcontents2" class="form-control round-form" placeholder="제목을 입력해주세요">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">내용</label>
                              <div class="col-sm-10">
                              		<textarea rows="7" id="contents" name="contents" cols="7" style="resize:none;" class="form-control"></textarea>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">링크URL</label>
                              <div class="col-sm-10">
                              		<input type="file" name="upload">
                                  <input type="text" style="display:none;" id="linkUrl" class="form-control" placeholder="링크URL">
                              </div>
                          </div>
                          <button type="button" class="btn btn-primary" id="discountAddBtn" onclick="addDiscount();">저장</button>
                      </form>
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
    <!--script for this page-->
    <script type="text/javascript" src='/common/ckeditor/ckeditor.js'></script>
  <script>
  var editor = [ ];
  $(function(){
	  if($('#contents').length == 1){
			
			editor[1] = CKEDITOR.replace( 'contents', {
				filebrowserUploadUrl: '/upload/image'
			});
			
			editor[1].updateElement();
		}
  });
	function addDiscount(){
		var linkUrl = $('#linkUrl').val();
		var title = $('#title').val();
		var contents = $('#contents').val();
		if(title == ''){
			
		//}else if(contents == ''){
			
		//}else if(linkUrl == ''){
			
		}else {
			//if(linkUrl.indexOf("http://") < 0 && linkUrl.indexOf("https://") < 0){
			//	linkUrl = "http://"+linkUrl;
			//}
			$('#contents').val(editor[1].getData());
			$('#saveForm').submit();
		}
	}
  </script>
  </body>
</html>
