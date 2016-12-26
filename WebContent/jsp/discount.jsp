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

 <!-- Magnific popup styles -->
  <link rel="stylesheet" href="/t5/assets/css/magnific-popup.css">
  
  <!-- Global CSS for the page and tiles -->
  <link rel="stylesheet" href="/t4/css/main.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    .cateList{margin:5px;}
    /**
 * Filters
 */
#filters {
  list-style-type: none;
  text-align: center;
  margin: 0 5% 0 5%;
}

#filters li {
  font-size: 15px;
  font-weight : bold;
  float: left;
  padding: 6px 0 4px 0;
  cursor: pointer;
  margin: 0 1% 0 1%;
  width: 8%;
  -webkit-transition: all 0.15s ease-out;
     -moz-transition: all 0.15s ease-out;
       -o-transition: all 0.15s ease-out;
          transition: all 0.15s ease-out;
  -webkit-border-radius: 3px;
     -moz-border-radius: 3px;
          border-radius: 3px;
}

#filters li:hover {
  background: #4281f5;
  color: #ffffff;
}

#filters li.active {
  background: #4281f5;
  color: #ffffff;
}
    </style>
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
                    <li><a class="logout" href="login.html">로그인</a></li>
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
                      <a class="active" href="javascript:loadData();">
                          <i class="fa fa-dashboard"></i>
                          <span>추천할인정보</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:loadData();" >
                          <i class="fa fa-desktop"></i>
                          <span>최신할인정보</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="general.html">General</a></li>
                          <li><a  href="buttons.html">Buttons</a></li>
                          <li><a  href="panels.html">Panels</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>인기할인정보</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="calendar.html">Calendar</a></li>
                          <li><a  href="gallery.html">Gallery</a></li>
                          <li><a  href="todo_list.html">Todo List</a></li>
                      </ul>
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
		<ol id="filters">
	    </ol>
		<div style="clear:both;"></div>
		<div style="height:10px;">&nbsp;</div>
      <ul id="tiles">
        <!-- These are our grid blocks -->
        <!-- End of grid blocks -->
      </ul>
<div id="loader">
        <div id="loaderCircle"></div>
      </div>
    </div>
		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="/t5/assets/js/jquery.js"></script>
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
  <script src="/t5/assets/js/jquery.imagesloaded.js"></script>
  <script src="/t5/assets/js/jquery.magnific-popup.min.js"></script>
    
    
  <script>
      //custom select box

      $(function(){
    	  
      });

  </script>
  
    	
 <script type="text/javascript">
      var handler = null,
      pageNowIndex = 1,
          isLoading = false,
          apiURL = '/discount/getDiscountlist';
      var filters=null;
      // Prepare layout options.
      var options = {
        autoResize: true, // This will auto-update the layout when the browser window is resized.
        container: $('#tiles'), // Optional, used for some extra CSS styling
        offset: 15, // Optional, the distance between grid items
        itemWidth: 210, // Optional, the width of a grid item
        fillEmptySpace: true
       // flexibleWidth: '50%'
      };

      /**
       * When scrolled all the way to the bottom, add more tiles.
       */
      function onScroll(event) {
        // Only check when we're not still waiting for data.
        if(!isLoading) {
          // Check if we're within 100 pixels of the bottom edge of the broser window.
          var closeToBottom = ($(window).scrollTop() + $(window).height() > $(document).height() - 100);
          if(closeToBottom) {
            loadData();
          }
        }
      };

      /**
       * Refreshes the layout.
       */
      function applyLayout() {
        options.container.imagesLoaded(function() {
          // Create a new layout handler when images have loaded.
          handler = $('#tiles li');
          filters = $('#filters li');
          handler.wookmark(options);
          
        });
      };

      /**
       * Loads data from the API.
       */
      function loadData() {
        isLoading = true;
        $('#loaderCircle').show();
        /* var kinds = "";
        $('.cateList').each(function(){
        	 var showFlg = $(this).attr("showflg");
        	 if(showFlg=="show"){
        		if(kinds != ""){
        			kinds += ',';
        		}
        		kinds += $(this).attr("va");
        	 }
        }); */
        //alert(pageNowIndex);
        $.ajax({
          url: apiURL,
          dataType: 'json',
          data: {pageNowIndex: pageNowIndex}, // Page parameter to make sure we load new data
          success: onLoadData
        });
      };

      /**
       * Receives data from the API, creates HTML for images and updates the layout
       */
      function onLoadData(data) {
    	   var resultList = data.resultList;
    	   
    	   $('#tiles').empty();
    	   
        isLoading = false;
        $('#loaderCircle').hide();

        // Increment page index for future calls.
       

        // Create HTML for the images.
        var html = '';
        var i=0, length=resultList.length, image;
        if(length < 10){
        	isLoading = false;
        }else{
        	 pageNowIndex++;
        }
        for(; i<length; i++) {
          image = resultList[i];
          html += '<li data-filter-class="['+image.type1+']">';

          // Image tag (preview in Wookmark are 200px wide, so we calculate the height based on that).
          html += '<div>';
          html += '<a href="'+image.imgurl+'" rel="lightbox" title="'+image.title+'">';
          //html += '<img src="'+image.imgurl+'" width="200" height="'+Math.round(image.height/image.width*200)+'">';
          html += '<img src="'+image.imgurl+'" width="'+image.xx+'" height="'+image.yy+'">';
          html += '</a>';
          html += '</div>';
          // Image title.
          html += '<p>'+image.title+'</p>';

          html += '</li>';
        }

        // Add image HTML to the page.
        $('#tiles').append(html);

        // TODO 클릭 div 또는 ajax팝업으로 변경 필요 이벤트 클릭 후 상세 link 연결
        $('#tiles').magnificPopup({
            delegate: 'li:not(.inactive) a',
            type: 'image',
            gallery: {
              enabled: true
            }
          });
        // Apply layout.
        applyLayout();
      };
      
      function getCate(){
    	  $.post('/discount/getCate', {
				mode : 'joinStart'
			}, function(data) {
				var html = '';
				html += '<li data-filter="all">전체</li>';
				
				for ( var k = 0; k < data.resultList.length; k++) {
					var cate = data.resultList[k];
					html += '<li data-filter="'+cate.num+'">'+cate.name+'</li>';
				}
				
				if (html != '') {
					$('#filters').html(html);
				}
			
			}, 'json');
      }
      
      function onClickFilter(e) {
          var $item = $(e.currentTarget),
              activeFilters = [],
              filterType = $item.data('filter');

          if (filterType === 'all') {
            filters.removeClass('active');
          } else {
            $item.toggleClass('active');

            // Collect active filter strings
            filters.filter('.active').each(function() {
              activeFilters.push($(this).data('filter'));
            });
          }

          handler.wookmarkInstance.filter(activeFilters, 'or');
        }

      getCate();
      
      loadData();
      // Capture scroll event.
      $(document).bind('scroll', onScroll);
      $('#filters').on('click.wookmark-filter', 'li', onClickFilter);
      
 
  </script>


  </script>
  </body>
</html>
