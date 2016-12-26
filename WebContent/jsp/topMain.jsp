<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>   <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>      <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>      <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<title>Onpaging.com</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<link rel="stylesheet" href="/t7/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="/t7/vendor/font-awesome/css/font-awesome.min.css">
		<!--[if IE 8]>
			<link rel="stylesheet" href="/t7/vendor/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
		<link rel="stylesheet" href="/t7/vendor/prettyPhoto/css/prettyPhoto.css">
		<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700|Lato:300,400,700,400italic,700italic|Droid+Serif' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="/t7/css/base.css">
		<link rel="stylesheet" href="/t7/css/components.css">
		<link rel="stylesheet" href="/t7/colorschemes/default.css">
		<style type="text/css">
		#map_canvas { 
		margin: 0 auto;text-align:left;float:left;
		width: 97%;  height: 96%;vertical-align:top;
		min-height:100%;}
		#map_canvas, .full, .padding2, #main, .box, .wrapper{
		height: 95%;vertical-align:top;
		}
		</style>
		<link rel="stylesheet" href="/t5/assets/css/jquery-ui-1.9.2.custom.min.css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
		<script src="/t3/js/jquery-1.9.1.min.js"></script><script src="/t3/js/bootstrap.min.js"></script><script src="/t3/js/scripts.js"></script>
		<script src="/t5/assets/js/jquery-ui-1.9.2.custom.min.js" type="text/javascript"></script>
		<script src="/t7/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&region=KR"></script>
		<script type="text/javascript" src='/t3/js/markerclusterer_compiled.js'></script>
		<script type="text/javascript" src='/t3/js/googleMap.js'></script>
		<script type="text/javascript" src="/js/common/utils2.js"></script>
		<script type="text/javascript">
		var rootStr = "";
		$(document).ready(function() {
			$('#pageData').data("pageNowIndex",1);//현재 페이지 번호
			$('#pageData').data("pageViewRow",5);//한 페이지에 보여줄 row 수
			$('#pageData').data("totalRow",0);//전체 row 수
			$('#pageData').data("pageViewFistNo",1);//네비게이션바의 시작 번호
			$('#pageData').data("basicPageCnt",10);//네비게이션바 보여줄 수 
			$('#pageData2').data("pageNowIndex",1);//현재 페이지 번호
			$('#pageData2').data("pageViewRow",5);//한 페이지에 보여줄 row 수
			$('#pageData2').data("totalRow",0);//전체 row 수
			$('#pageData2').data("pageViewFistNo",1);//네비게이션바의 시작 번호
			$('#pageData2').data("basicPageCnt",10);//네비게이션바 보여줄 수 
			selectData();
			selectDataInfo();
			selectDataHot();
		});
		
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
						//$('#tbodya').empty();
						$('#more-wrapper1').remove();
						var html = "";
						
						var total = parseInt(data.totalCnt);
						var pageNum = total - ($('#pageData').data("pageViewRow") * ($('#pageData').data("pageNowIndex") -1) );
						
						for(var i = 0; i < data.result.length;i++){
							var evt = data.result[i];
							html +='<article class="entry style-large type-post">';
							html +='<figure class="entry-thumbnail hidden-xs">';
							html +='<a href="single.html">';
							html +='<img src="/data/upload/'+evt.linkUrl+'" data-src="/data/upload/'+evt.linkUrl+'" data-src-retina="/data/upload/'+evt.linkUrl+'" width="680" height="452" alt="">';
							html +='</a>';
							html +='</figure>';
							html +='<header class="entry-header">';
							html +='<h3 class="entry-title">';
							html +='<a href="/hottext/viewPost?num='+evt.num+'" rel="bookmark">'+$.chkBlk(evt.title, "")+'</a>';
							html +='</h3>';
							html +='<div class="entry-meta">';
							html +='<span class="author"></span>';
							html +='<span class="entry-date">'+$.chkBlkDt(evt.ltime, "")+'</span>';
							html +='<span class="category"></span>';
							html +='</div>';
							html +='</header>';
							html +='<p>'+$.chkBlk(evt.mcontents, "")+'</p>';
							html +='</article>';
						}
						html +='<div class="more-wrapper" id="more-wrapper1">';
						html +='<a href="blog.html" class="btn btn-warning btn-sm">More</a>';
						html +='</div>';
						
						$('#entriesPost').append(html);
					} 
				});
			}
		}
		
		function selectDataInfo(){
			$.post("" +'/discount/getDiscountlist', {
				pageViewRow : 100
			}, function(data) {
				var html = '';
				
				for(var i=0; i< data.resultList.length;i++){
					var evt = data.resultList[i];
					html +='<article class="type-post style-media-list media col-sm-6 col-md-12">';
					html +='<img src="/'+evt.imgurl+'" data-src="/'+evt.imgurl+'" data-src-retina="/'+evt.imgurl+'" width="80" height="80" class="media-object pull-left" alt="">';
					html +='<div class="media-body">';
					html +='<h3  class="entry-title">';
					html +='<a href="single.html" rel="bookmark">'+evt.title+'</a>';
					html +='</h3>';
					html +='<div class="entry-meta">';
					html +='<span class="entry-date">'+$.chkBlkDt2(evt.start,"")+' - '+$.chkBlkDt2(evt.end,"")+'</span>';
					html +='</div>';
					html +='</div>';
					html +='</article>';
				}
				if (html != '') {
					$('#entiesInfo').append(html);
				}
				
				
			}, 'json');
		}
		
		function selectDataHot(){
			$.post("" +'/hottext/getText', {
				pageViewRow : 100
			}, function(data) {
				var html = '';
				for(var i=0; i< data.result.length;i++){
					var evt = data.result[i];
					html +='<article class="type-post style-media-list style-review-list media col-sm-6 col-md-12">';
					html +='<img src="/data/upload/'+evt.linkUrl+'" data-src="/data/upload/'+evt.linkUrl+'" data-src-retina="/data/upload/'+evt.linkUrl+'" width="80" height="80" class="media-object pull-left" alt="">';
					html +='<div class="media-body">';
					html +='<h3  class="entry-title">';
					html +='<a href="/hottext/viewPost?num='+evt.num+'" rel="bookmark">'+evt.title+'</a>';
					html +='</h3>';
					html +='<p class="small">'+$.chkBlk(evt.mcontents, "")+'</p>';
					html +='</div>';
					html +='</article>';
				}
				
				if (html != '') {
					$('#entiesHot').append(html);
				}
				
				
			}, 'json');
		}
		</script>
	</head>
	<body>
		<h1 class="sr-only">Summarize</h1>
		<nav id="header" class="header-navbar" role="navigation">
			<div class="header-navbar-inner container">
				<div id="brand" class="navbar-brand">
					<a href="/main" rel="bookmark">
						<div style="font-size:30px;padding:15px;">Onpaging.com</div>
						<noscript>Onpaging.com</noscript>
					</a>
				</div>

				<ul class="nav nav-icons">
					<li>
						<div class="btn-icon" data-toggle=".header-navbar-inner" data-toggle-class="search-toggled-in">
						</div>
					</li>
				</ul>

				<ul class="nav navbar-nav">
					<li class="active">
						<a href="/main" data-toggle="li">Home</a>
					</li>
				</ul>

			</div>

		</nav>

		<div id="main" class="container">


			<div id="content" class="content section row">

				<div class="col-md-9 col-lg-9">

					<div class="row">

						<div class="col-md-4 col-lg-4 md-pull-right">
								
							<aside class="widget">

								<h2 class="widget-title ribbon ribbon-focus"><span>Info</span></h2>

								<div class="entries row" id="entiesInfo">
								</div>

								<div class="more-wrapper">
									<a href="blog.html" class="btn btn-warning btn-sm">More</a>
								</div>

							</aside>


						</div><!--/.col-md-4.col-lg-4.md-pull-right-->

						<div class="bg-base col-md-8 col-lg-8">
							
							<h2 class="section-title ribbon ribbon-highlight"><span>What's Hot</span></h2>

							<div class="entries" id="entriesPost">

								<article class="entry style-large type-post">

									<figure class="entry-thumbnail hidden-xs">
											
												<div class="full" style="vertical-align:top;">
													<!-- content <hr>-->
													<div class="" id="map_canvas" ></div>
												</div>
									</figure>
									<div style="text-align:right;"><a href="/map">크게보기</a></div>
								</article>
								
							</div>

						</div><!--/.bg-base.col-md-8.col-lg-8-->

					</div><!--/.colheight-->

				</div><!--/.col-md-8.col-lg-4-->

				<div class="sidebar col-md-3 col-lg-3">

					<aside class="widget">

						<h2 class="widget-title ribbon"><span>What's hot</span></h2>

						<div class="entries row" id="entiesHot">
						</div><!--/.entries.colheight-->


					</aside>

					<aside class="widget">

						<h3 class="widget-title ribbon"><span>Special</span></h3>

						<ul class="entries coverageList aligncenter">
							<li><a href="blog.html">#xPhone launch event</a></li>
							<li><a href="blog.html">#WCDC 2013</a></li>
							<li><a href="blog.html">#Nokiem bought by Macrosoft</a></li>
							<li><a href="blog.html">#Blueberry JUMP 2013</a></li>
							<li><a href="blog.html">#CONFEST 2013</a></li>
							<li><a href="blog.html">#Ullamco laboris nisi ut. </a></li>
							<li><a href="blog.html">#Eliquip ex ea commodo consequat.</a></li>
							<li><a href="blog.html">#Duis aute irure dolor in.</a></li>
							<li><a href="blog.html">#Reprehenderit in voluptate</a></li>
							<li><a href="blog.html">#Velit esse Ullamco laboris.</a></li>
						</ul>

					</aside><!--/.widget-->

				</div><!--/.sidebar.col-md-3.col-lg-3-->

			</div><!--/.row.content-->

			<div class="section content bg-base">
				
				<h2 class="section-title ribbon"><span>What's you should know</span></h2>
				
				<div class="entries">

					<div class="row">

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Social Media</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Postman will send alerts to your phone about popular people and their shouts.</a>
							</h3>

						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Politic</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Better to remain silent and be thought a fool than to speak out and remove all doubt, says Abraham L</a>
							</h3>
							
						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Sports</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">I always work with a goal - and the goal is to improve as a player and a person, says Rafael Nadal</a>
							</h3>

						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Entertainment</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Curt Cobain: Wanting to be someone else is a waste of the person you are.</a>
							</h3>
							
						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Technology</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Innovation distinguishes between a leader and a follower - Steve Jobs</a>
							</h3>

						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Tactical</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Know your enemy and know yourself and you can fight a hundred battles without disaster - Tzun Zu.</a>
							</h3>

						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Entertainment</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Curt Cobain: Wanting to be someone else is a waste of the person you are.</a>
							</h3>
							
						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Technology</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Innovation distinguishes between a leader and a follower - Steve Jobs</a>
							</h3>

						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Tactical</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Know your enemy and know yourself and you can fight a hundred battles without disaster - Tzun Zu.</a>
							</h3>

						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Social Media</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Postman will send alerts to your phone about popular people and their shouts.</a>
							</h3>

						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Politic</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Better to remain silent and be thought a fool than to speak out and remove all doubt, says Abraham L</a>
							</h3>
							
						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Sports</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">I always work with a goal - and the goal is to improve as a player and a person, says Rafael Nadal</a>
							</h3>

						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Politic</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Better to remain silent and be thought a fool than to speak out and remove all doubt, says Abraham L</a>
							</h3>
							
						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Sports</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">I always work with a goal - and the goal is to improve as a player and a person, says Rafael Nadal</a>
							</h3>

						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Entertainment</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Curt Cobain: Wanting to be someone else is a waste of the person you are.</a>
							</h3>
							
						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Technology</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Innovation distinguishes between a leader and a follower - Steve Jobs</a>
							</h3>

						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Tactical</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Know your enemy and know yourself and you can fight a hundred battles without disaster - Tzun Zu.</a>
							</h3>

						</article>

						<article class="entry type-post style-thumbnail-text col-sm-6 col-md-2 colheight-sm-1">
							
							<div class="entry-meta">
								<span class="category"><a href="blog.html">Social Media</a></span>
							</div>

							<h3 class="entry-title">
								<a href="single.html" rel="bookmark">Postman will send alerts to your phone about popular people and their shouts.</a>
							</h3>

						</article>

					</div><!--row.-->

				</div><!--entries.-->

			</div><!--.section.content.content-secondary-->
			
		</div><!--#main.container-->

		<footer id="footer" class="footer-area">

			<div class="footer-bottom">
				<div class="container aligncenter">
					<p>&copy;2013 by <a href="http://coolorize.com">Coolorize Network</a>. All Right Reserved. <p>
				</div>
			</div>
		</footer>
		<script src="/t7/vendor/jquery-1.10.1.min.js"></script>
		<!--
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="/t7/vendor/jquery-1.10.1.min.js"><\/script>')</script>
		-->
		<script src="/t7/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="/t7/vendor/prettyPhoto/jquery.prettyPhoto.js"></script>
		<script src="/t7/vendor/jquery.unveil.min.js"></script>
		<script src="/t7/js/main.js"></script>
		<input type="hidden" id="pageData" value="0" />
		<input type="hidden" id="pageData2" value="0" />
	</body>
</html>