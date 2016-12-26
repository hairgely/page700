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
		<script type="text/javascript" src="/js/jq/jquery.cookie.js"></script>
		<script src="/t5/assets/js/jquery-ui-1.9.2.custom.min.js" type="text/javascript"></script>
		<script src="/t7/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
		<script type="text/javascript" src="/js/common/utils2.js"></script>
		<script type="text/javascript">
		var rootStr = "";
		$(document).ready(function() {
		});
		function commentSave(num){
			var contents = $('#contents').val();
			var title = $('#title').val();
			var score = $('#score').val();
			if(contents != ""){
				//if(cookieCheck('onpagingTextRecommInNum', num, 5)){
				//	cookieSet('onpagingTextRecommInNum', num);
					$.post("" +'/hottext/commentSave', {
						num : num,
						contents : contents,
						title : title,
						score : score
					}, function(data) {
						setComment(data.resultCom);
					}, 'json');
				//}else{
				//	alert("같은 글에 리플은 하루 5개로 제한됩니다.");
				//}
			}
		}
		
		function recom(num){
			//if(cookieCheck('onpagingTextRecommNum', num,0)){
			//	cookieSet('onpagingTextRecommNum', num);
				$.post("" +'/hottext/editRecom', {
					num : num
				}, function(data) {
					var cnt = parseInt($('#recomCnt').text());
					$('#recomCnt').text(cnt+1);
				}, 'json');
			//}
			
		}
		
		function setComment(data){
			var html ='<li class="media comment">';
			html +='<div class="media-body">';
			html +='<h4 class="media-heading author-vcard">';
			html +='<cite class="fn">'+data.title+'</cite>';
			html +='<span class="comment-meta commentmetadata">'+data.ltime+'</span>';
			html +='</h4>';
			html +='<p>'+data.contents+'</p>';
			html +='</div>';
			html +='</li>';
			$('#commentDiv').append(html);
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

				<div class="col-md-8 bg-base col-lg-8 col-xl-9">

					<div class="ribbon ribbon-highlight">
						<ol class="breadcrumb ribbon-inner">
							<li><a href="#">Home</a></li>
							<li><a href="#">What's Hot</a></li>
						</ol>
					</div>
					
					<header class="page-header">
						
						<div class="page-meta pull-right hidden-xs">
								<button type="button" class="btn btn-default btn-lg">
									<span id="recomCnt">${cData.recomCnt}</span>
								</button>
								<button onclick="recom('${cData.num}');" type="button" class="btn btn-default btn-lg">
									<span class="glyphicon glyphicon-thumbs-up"></span>
								</button>
						</div>

						<h2 class="page-title">
							${cData.title}
						</h2>

					</header>

					<article class="entry style-single type-post">
						
						<figure class="entry-thumbnail">

							<!-- to disable lazy loading, remove data-src and data-src-retina -->
							<img src="/data/upload/${cData.linkUrl}" data-src="/data/upload/${cData.linkUrl}" data-src-retina="/data/upload/${cData.linkUrl}" width="680" height="452" alt="">

						</figure>

						<div class="entry-meta indented">
							<span class="entry-date">${cData.ltime}</span>
						</div>
						<div class="entry-content indented">
							<p class="lead">
								${cData.mcontents}
							</p>
							<blockquote class="pulled-left">
								<p>${cData.mcontents1} <small> ${cData.mcontents2}</small></p>
							</blockquote>
							<p class="lead">
								${cData.contents}
							</p>

							<h3>Score</h3>
							<ul class="entries">
								<li class="entry style-score-widget">
									<div class="score-value" id="commentAvg">${commentAvg}</div>
									<div class="score-label entry-title"><a href="single-full.html"></a></div>
									<div class="progress">
										<div class="progress-bar" id="commentAvgBar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${commentAvg}%;">
										</div>
									</div>
								</li>
							</ul>

						</div>

					</article>

					<div class="after-entry indented">

						<hr>

						<aside class="widget">
							Share:
							<a href="#" class="" onclick="window.open(
								'https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(location.href), 
								'facebook-share-dialog', 
								'width=626,height=436'); 
								return false;"><span class="icon-stack"><i class="icon-sign-blank icon-stack-base"></i><i class="icon-facebook icon-light"></i></span></a>
							<a href="#" class="" onclick="window.open(
								'http://twitter.com/home?status='+encodeURIComponent(location.href), 
								'facebook-share-dialog', 
								'width=626,height=436'); 
								return false;"><span class="icon-stack"><i class="icon-sign-blank icon-stack-base"></i><i class="icon-twitter icon-light"></i></span></a>
							<a href="#" class="" onclick="window.open(
								'https://plus.google.com/share?url='+encodeURIComponent(location.href), 
								'facebook-share-dialog', 
								'width=500,height=436'); 
								return false;"><span class="icon-stack"><i class="icon-sign-blank icon-stack-base"></i><i class="icon-google-plus icon-light"></i></span></a>
							<a href="#" class="" onclick="javascript:void((function(){var e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)})());"><span class="icon-stack"><i class="icon-sign-blank icon-stack-base"></i><i class="icon-pinterest icon-light"></i></span></a>
						</aside> 

					</div>
					
					<div id="comments" class="comments-area indented">

						<h4 class="comments-title">Comments</h4>

						<ol class="media-list comment-list" id="commentDiv">
							<c:forEach var="result" items="${commentList}" varStatus="stauts">
								<li class="media comment">
									<!-- 
									<img src="http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=74" width="74" height="74" alt="" class="avatar media-object pull-left img-circle">
									 -->
									<div class="media-body">
	
										<h4 class="media-heading author-vcard">
											<cite class="fn">${result.title}</cite> 
											<span class="comment-meta commentmetadata">${result.ltime}</span>
										</h4>
										<p>${result.contents}</p>
	
									</div>
								</li>
							</c:forEach>
							
						</ol>

						<div id="respond" class="comments-respond">

							<h3 id="reply-title" class="comment-reply-title">Leave a Reply</h3>

							<form class="form-inline row" method="post" id="commentform">

								<div class="form-group col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<label class="sr-only" for="inputName">Name</label>
									<input class="form-control" id="title" name="title" type="text" value="" aria-required="true" placeholder="Your Name">
								</div>
								<div class="form-group col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<label class="sr-only" for="inputName">Score</label>
									<input class="form-control" id="score" name="score" type="text" value="" aria-required="true" placeholder="Your Score">
								</div>

								<div class="form-group col-lg-12 col-md-12 col-sm-12">
									<label class="sr-only" for="inputMessage">Message</label>
									<textarea class="form-control" id="contents" name="contents" rows="8" aria-required="true" placeholder="Your Message"></textarea>
								</div>

								<div class="form-group col-lg-12 col-md-12 col-sm-12">
									<div class="btn btn-primary" name="saveComment" id="saveComment" onclick="commentSave('${cData.num}');">Send Message</div>
								</div>

							</form>

						</div><!-- #respond -->

					</div><!--/#comments-->

				</div><!--/.col-md-8.col-lg-8.col-xl-9-->

				<div class="sidebar col-md-4 col-lg-4 col-xl-3">

					<aside class="widget">

						<h2 class="widget-title ribbon"><span>Featured Posts</span></h2>

						<div class="entries row">

							<article class="type-post style-media-list media col-sm-6 col-md-12">

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single.html" rel="bookmark">Ullamco laboris nisi ut aliquip ex ea commodo consequat.</a>
									</h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
										<span class="category">In <a href="blog.html">Technology</a></span>
									</div>
								</div>

							</article>

							<article class="type-post style-media-list media col-sm-6 col-md-12">

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single.html" rel="bookmark">Duis aute irure dolor in reprehenderit in voluptate velit esse.</a>
									</h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
										<span class="category">In <a href="blog.html">Technology</a></span>
									</div>
								</div>

							</article>

							<article class="type-post style-media-list media col-sm-6 col-md-12">

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single.html" rel="bookmark">Excepteur sint occaecat cupidatat non proident.</a>
									</h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
										<span class="category">In <a href="blog.html">Technology</a></span>
									</div>
								</div>

							</article>

							<article class="type-post style-media-list media col-sm-6 col-md-12">

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single.html" rel="bookmark">Ullamco laboris nisi ut aliquip ex ea commodo consequat.</a>
									</h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
										<span class="category">In <a href="blog.html">Technology</a></span>
									</div>
								</div>

							</article>

							<article class="type-post style-media-list media col-sm-6 col-md-12">

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single.html" rel="bookmark">Duis aute irure dolor in reprehenderit in voluptate velit esse.</a>
									</h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
										<span class="category">In <a href="blog.html">Technology</a></span>
									</div>
								</div>

							</article>

						</div>

					</aside><!--/.widget-->

					<aside id="reviewCarousel" class="widget carousel slide">

						<h2 class="widget-title ribbon"><span>Latest Review</span></h2>

						<div class="carousel-inner">
							<div class="item active">

								<article class="entry style-grid style-review type-post">
					
									<header class="entry-header">
										<h3 class="entry-title"><a href="single.html">xPhone 5s Review</a> </h3>
										<p class="small">Excepteur sint occaecat cupidatat non proident</p>
									</header>

									<div class="style-review-score">
										81
									</div>
												
									<figure class="entry-thumbnail">

										<a href="single.html" class="overlay overlay-primary"></a>

										<!-- to disable lazy loading, remove data-src and data-src-retina -->
										<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

										<!--fallback for no javascript browsers-->
										<noscript>
											<img src="http://placehold.it/720x420" alt="">
										</noscript>

									</figure>

								</article>

							</div><!--/.item.active-->

							<div class="item">
								
								<article class="entry style-grid style-review type-post">
					
									<header class="entry-header">
										<h3 class="entry-title"><a href="single.html">xPhone 5s Review</a> </h3>
										<p class="small">Excepteur sint occaecat cupidatat non proident</p>
									</header>

									<div class="style-review-score">
										80
									</div>
												
									<figure class="entry-thumbnail">

										<a href="single.html" class="overlay overlay-primary"></a>

										<!-- to disable lazy loading, remove data-src and data-src-retina -->
										<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

										<!--fallback for no javascript browsers-->
										<noscript>
											<img src="http://placehold.it/720x420" alt="">
										</noscript>

									</figure>

								</article>

							</div><!--/.item.active-->

						</div><!--/.carousel-inner-->

						<a class="left carousel-control" href="#reviewCarousel" data-slide="prev">
							<span class="icon icon-angle-left"></span>
						</a>
						<a class="right carousel-control" href="#reviewCarousel" data-slide="next">
							<span class="icon icon-angle-right"></span>
						</a>

					</aside><!--/.widget.carousel-->
					
					<aside class="widget">

						<h2 class="widget-title ribbon"><span>What's Hot</span></h2>

						<div class="entries row">

							<article class="type-post style-media-list media col-sm-6 col-md-12">

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single.html" rel="bookmark">Ullamco laboris nisi ut aliquip ex ea commodo consequat.</a>
									</h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
										<span class="category">In <a href="blog.html">Technology</a></span>
									</div>
								</div>

							</article>

							<article class="type-post style-media-list media col-sm-6 col-md-12">

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single.html" rel="bookmark">Duis aute irure dolor in reprehenderit in voluptate velit esse.</a>
									</h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
										<span class="category">In <a href="blog.html">Technology</a></span>
									</div>
								</div>

							</article>

							<article class="type-post style-media-list media col-sm-6 col-md-12">

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single.html" rel="bookmark">Excepteur sint occaecat cupidatat non proident.</a>
									</h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
										<span class="category">In <a href="blog.html">Technology</a></span>
									</div>
								</div>

							</article>

							<article class="type-post style-media-list media col-sm-6 col-md-12">

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single.html" rel="bookmark">Ullamco laboris nisi ut aliquip ex ea commodo consequat.</a>
									</h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
										<span class="category">In <a href="blog.html">Technology</a></span>
									</div>
								</div>

							</article>

							<article class="type-post style-media-list media col-sm-6 col-md-12">

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single.html" rel="bookmark">Duis aute irure dolor in reprehenderit in voluptate velit esse.</a>
									</h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
										<span class="category">In <a href="blog.html">Technology</a></span>
									</div>
								</div>

							</article>

						</div>

					</aside><!--/.widget-->

					<aside class="widget">

						<h3 class="widget-title ribbon"><span>Latest Discussion</span></h3>

						<ul class="entries">

							<li class="entry style-recent-list type-post">

								<span class="comments-count-balloon">900</span>
								<a href="single.html" rel="bookmark" class="entry-title">Ullamco laboris nisi ut aliquip ex ea commodo consequat.</a>

							</li>

							<li class="entry style-recent-list type-post">

								<span class="comments-count-balloon">860</span>
								<a href="single.html" rel="bookmark" class="entry-title">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</a>
										
							</li>

							<li class="entry style-recent-list type-post">

								<span class="comments-count-balloon">1234</span>
								<a href="single.html" rel="bookmark" class="entry-title">In voluptate velit esse cillum dolore eu fugiat nulla pariatur.</a>
										
							</li>

							<li class="entry style-recent-list type-post">

								<span class="comments-count-balloon">90</span>
								<a href="single.html" rel="bookmark" class="entry-title">Duis aute irure dolor in reprehenderit.</a>
										
							</li>

							<li class="entry style-recent-list type-post">

								<span class="comments-count-balloon">8</span>
								<a href="single.html" rel="bookmark" class="entry-title">Utempor incididunt ut labore et dolore magna aliqua.</a>
										
							</li>

						</ul>

					</aside><!--/.widget-->

					<aside class="widget">

						<h3 class="widget-title ribbon"><span>Special Coverage</span></h3>

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

				</div><!--/.sidebar col-md-4 col-lg-4 col-xl-3-->

			</div><!--/#content-->
			
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
		<input type="hidden" id="pageData" value="0" />
		<input type="hidden" id="pageData2" value="0" />
	</body>
</html>