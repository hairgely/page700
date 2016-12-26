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
		});
		
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
						<a href="#" class="btn-icon" data-toggle=".header-navbar-inner" data-toggle-class="search-toggled-in">
							<span class="search-toggled-out-icon glyphicon glyphicon-search"></span>
							<span class="search-toggled-in-icon glyphicon glyphicon-remove"></span>
						</a>
					</li>
				</ul>

				<div class="search-wrapper js-stoppropagation">
					<div class="search-wrapper-inner">
						<form>
							<input type="text" value="" placeholder="search ... ">
							<button class="btn-icon" type="submit"><span class="glyphicon glyphicon-search"></span></button>
						</form>
					</div>
				</div>

				<ul class="nav navbar-nav">
					<li class="nav-all pull-right full-subnav-wrapper">

						<a href="#" data-toggle="li"> 
							<span class="text">All Categories</span>
							<span class="toggle glyphicon glyphicon-align-justify"></span>
						</a>

						<div class="row subnav-wrapper">
							
							<div class="col-md-2 col-sm-2 bg-bar">
								<strong class="subnav-header">Pages</strong>
								<ul class="subnav-full">
									<li><a href="index.html">Blog 3 Columns</a></li>
									<li><a href="blog.html">Blog 2 Columns</a></li>
									<li><a href="blog-grids.html">Blog Grids</a></li>
									<li><a href="reviews.html">Reviews Archive</a></li>
									<li><a href="single.html">Single Blog</a></li>
									<li><a href="single-full.html">Single Blog (Full)</a></li>
									<li><a href="components.html">Components</a></li>
								</ul>
							</div>

							<div class="col-md-2 col-sm-2">
								<strong class="subnav-header">Colorschemes</strong>
								<ul class="subnav-full">
									<li><a href="/t7/html/">Coolorize</a></li>
									<li><a href="/t7/html-dark/">Dark</a></li>
									<li><a href="/t7/html-light/">Light</a></li>
									<li><a href="#">Amet Commodo</a></li>
									<li><a href="#">Consectetur </a></li>
									<li><a href="#">Adipisicing</a></li>
									<li><a href="#">Duis aute </a></li>
								</ul>
							</div>

							<div class="col-md-2 col-sm-2">
								<strong class="subnav-header">Banner Placements</strong>
								<ul class="subnav-full">
									<li><a href="banner-index.html">Home</a></li>
									<li><a href="banner-single.html">Single</a></li>
									<li><a href="#">Ipsum  Nisi </a></li>
									<li><a href="#">Dolor Aliquip</a></li>
								</ul>
							</div>

							<div class="col-md-2 col-sm-2">
								<strong class="subnav-header">Category</strong>
								<ul class="subnav-full">
									<li><a href="#">Ipsum  Nisi </a></li>
									<li><a href="#">Dolor Aliquip</a></li>
									<li><a href="#">Amet Commodo</a></li>
									<li><a href="#">Consectetur </a></li>
								</ul>
							</div>

							<div class="col-md-2 col-sm-2">
								<strong class="subnav-header">Category</strong>
								<ul class="subnav-full">
									<li><a href="#">Consectetur </a></li>
									<li><a href="#">Adipisicing</a></li>
									<li><a href="#">Ipsum  Nisi </a></li>
									<li><a href="#">Dolor Aliquip</a></li>
								</ul>
							</div>

							<div class="col-md-2 col-sm-2">
								<strong class="subnav-header">Category</strong>
								<ul class="subnav-full">
									<li><a href="#">Ipsum  Nisi </a></li>
									<li><a href="#">Dolor Aliquip</a></li>
									<li><a href="#">Amet Commodo</a></li>
									<li><a href="#">Consectetur </a></li>
								</ul>
							</div>

						</div>
					</li>
					<li class="active">
						<a href="/main" data-toggle="li">Home</a>
					</li>
					<li>
						<a href="#" data-toggle="li">Drop Down 3</a>

						<div class="subnav-wrapper">
							<ul class="subnav-entries">
								<li><a href="#">Recent Entry fits in this type of dropdown. </a></li>
								<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit </a></li>
								<li><a href="#">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua </a></li>
								<li><a href="#">Ut enim ad minim veniam, quis nostrud exercitation ullamco </a></li>
								<li><a href="#">Laboris nisi ut aliquip ex ea commodo consequat. </a></li>
								<li><a href="#">Duis aute irure dolor in reprehenderit</a></li>
								<li><a href="#">In voluptate velit esse cillum dolore eu fugiat nulla pariatur</a></li>
								<li><a href="#">Excepteur sint occaecat cupidatat non proident</a></li>
								<li><a href="#">Sunt in culpa qui officia deserunt mollit anim id est laborum</a></li>
							</ul>
						</div>

					</li>
					<li><a href="#">Category 1</a></li>
					<li><a href="#">Category 2</a></li>
					<li><a href="#">Category 3</a></li>
					<li><a href="#">Category 4</a></li>
					<li><a href="#">Category 5</a></li>
					<li><a href="#">Category 6</a></li>
					<li><a href="#">Category 7</a></li>
				</ul>

			</div>

		</nav>

		<div id="main" class="container">

			<div class="section section-no-margin-bottom row entries bg-primary">

				<article class="entry style-grid style-hero hero-nav type-post col-xs-6 col-sm-6">
					
					<a href="single.html">

						<header class="entry-header">
							<p class="small">Previous Story</p>
							<h3 class="entry-title">Rumor: The long awaited update for Retina Display is ready to be annaunced on the next event held by them</h3>
						</header>

						<figure class="entry-thumbnail">

							<div class="overlay overlay-primary"></div>

							<!-- to disable lazy loading, remove data-src and data-src-retina -->
							<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

							<!--fallback for no javascript browsers-->
							<noscript>
								<img src="http://placehold.it/480x280" alt="">
							</noscript>

						</figure>

					</a> 

				</article>

				<article class="entry style-grid style-hero hero-nav type-post col-xs-6 col-sm-6">
					
					<a href="single-full.html">

						<header class="entry-header">
							<p class="small">Next Story</p>
							<h3 class="entry-title">Click here to see single blog post in full mode sit voluptatem accusantium doloremque laudantium</h3>
						</header>

						<figure class="entry-thumbnail">

							<div class="overlay overlay-primary"></div>

							<!-- to disable lazy loading, remove data-src and data-src-retina -->
							<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

							<!--fallback for no javascript browsers-->
							<noscript>
								<img src="http://placehold.it/480x280" alt="">
							</noscript>

						</figure>

					</a> 

				</article>

			</div>

			<div id="content" class="content section row">

				<div class="col-md-8 bg-base col-lg-8 col-xl-9">

					<div class="ribbon ribbon-highlight">
						<ol class="breadcrumb ribbon-inner">
							<li><a href="#">Home</a></li>
							<li><a href="#">Social Media</a></li>
							<li class="active" title="Postman will send notifications to your flashy smartphone about popular people and their latest shouts">Postman will send notifications ...</li>
						</ol>
					</div>
					
					<header class="page-header">
						
						<div class="page-meta pull-right hidden-xs">
							<a href="#comments">
								<span class="comments-count-balloon bg-primary">123<em>Comments</em></span>
							</a>
						</div>

						<h2 class="page-title">
							Postman will send notifications to your flashy smartphone about popular people and their latest shouts.
						</h2>

					</header>

					<article class="entry style-single type-post">
						
						<figure class="entry-thumbnail">

							<!-- to disable lazy loading, remove data-src and data-src-retina -->
							<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/680x452" data-src-retina="http://placehold.it/1024x680" width="680" height="452" alt="">

							<!--fallback for no javascript browsers-->
							<noscript>
								<img src="http://placehold.it/680x452" alt="">
							</noscript>

						</figure>

						<div class="entry-meta indented">
							<span class="author">by <a href="blog.html">John Doe</a></span>
							<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
							<span class="category">In <a href="blog.html">Social Media</a></span>
						</div>

						<div class="entry-content indented">

							<p class="lead">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</p>
							<p>
								Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui.
							</p>

							<blockquote class="pulled-left">
								<p>Better to remain silent and be thought a fool than to speak out and remove all doubt, <small> Abraham Lincoln</small></p>
							</blockquote>
							<p>
								At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.
							</p>

							<!-- 
							sample for adding full image
							<figure class="image image-full">

								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/680x452" data-src-retina="http://placehold.it/1024x680" width="680" height="452" alt="">

								<noscript>
									<img src="http://placehold.it/680x452" alt="">
								</noscript>

							</figure> -->

							<div class="gallery bg-page flushed-left">

								<!-- <h4 class="gallery-title">Gallery</h4> -->

								<div class="row">

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 1" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 2" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 3" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 4" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 5" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 6" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 7" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 8" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 9" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 10" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 10" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

									<div class="col-xs-3 col-sm-2">
										<a href="http://placehold.it/460x460" title="Image 2" class="thumbnail" data-rel="prettyPhoto[gallery]">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/80x80" alt="">
											</noscript>

										</a>
									</div><!--/.col-xs-2.col-sm-2-->

								</div><!--/.row-->

							</div><!--/.gallery-->

							<h3>Verdict</h3>
							<p>
								At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.
							</p>

							<h3>Score</h3>
							<ul class="entries">
								<li class="entry style-score-widget">
									<div class="score-value">81</div>
									<div class="score-label entry-title"><a href="single-full.html">Design</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 81%;">
										</div>
									</div>
								</li>
								<li class="entry style-score-widget">
									<div class="score-value">80</div>
									<div class="score-label entry-title"><a href="single-full.html">Functionality</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
										</div>
									</div>
								</li>
								<li class="entry style-score-widget">
									<div class="score-value">76</div>
									<div class="score-label entry-title"><a href="single-full.html">Performance</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
										</div>
									</div>
								</li>
							</ul>


						</div>

					</article>

					<div class="after-entry indented">

						<hr>


						<aside class="widget post-tags">
							<i class="icon-tags"></i> Tags:
							<a href="#"> Some</a>
							<a href="#"> Goes</a>
							<a href="#"> Here</a>
							<a href="#"> For</a>
							<a href="#"> Sure</a>
						</aside> 

						<hr>

						<aside class="widget widget-author media">
							
							<figure class="entry-author-avatar media-object avatar pull-left">
								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" class="img-circle" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/230x230" alt="">
								</noscript>
							</figure>

							<div class="media-body">
								<h4 class="entry-author-name">By <a href="blog.html">John Doe</a></h4>

								<p>
									Deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. 
								</p>

							</div>

						</aside>

						<hr>

						<aside class="widget">

							<h4 class="widget-title">Related Posts</h4>

							<div class="entries row">

								<article class="entry type-post style-thumbnail col-xs-3 col-sm-3">

									<figure class="entry-thumbnail">
										<!-- to disable lazy loading, remove data-src and data-src-retina -->
										<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

										<!--fallback for no javascript browsers-->
										<noscript>
											<img src="http://placehold.it/230x230" alt="">
										</noscript>
									</figure>

									<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis.</a> </h3>

										
								</article>

								<article class="entry type-post style-thumbnail col-xs-3 col-sm-3">

									<figure class="entry-thumbnail">
										<!-- to disable lazy loading, remove data-src and data-src-retina -->
										<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

										<!--fallback for no javascript browsers-->
										<noscript>
											<img src="http://placehold.it/230x230" alt="">
										</noscript>
									</figure>

									<h3 class="entry-title"><a href="single.html">Oomnis iste natus error sit voluptatem.</a> </h3>

									
								</article>

								<article class="entry type-post style-thumbnail col-xs-3 col-sm-3">

									<figure class="entry-thumbnail">
										<!-- to disable lazy loading, remove data-src and data-src-retina -->
										<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

										<!--fallback for no javascript browsers-->
										<noscript>
											<img src="http://placehold.it/230x230" alt="">
										</noscript>
									</figure>

									<h3 class="entry-title"><a href="single.html">Temporibus autem quibusdam.</a> </h3>

									
								</article>

								<article class="entry type-post style-thumbnail col-xs-3 col-sm-3">

									<figure class="entry-thumbnail">
										<!-- to disable lazy loading, remove data-src and data-src-retina -->
										<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

										<!--fallback for no javascript browsers-->
										<noscript>
											<img src="http://placehold.it/230x230" alt="">
										</noscript>
									</figure>

									<h3 class="entry-title"><a href="single.html">Siste natus error sit voluptatem.</a> </h3>

									
								</article>

							</div>

						</aside>

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

						<ol class="media-list comment-list">
							<li class="media comment">

								<img src="http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=74" width="74" height="74" alt="" class="avatar media-object pull-left img-circle">

								<div class="media-body">

									<h4 class="media-heading author-vcard">
										<cite class="fn"><a href="#" rel="external nofollow" class="url">Mr John Doe</a></cite> 
										<span class="comment-meta commentmetadata">on <a href="#">July 8, 2013 at 7:46 am</a></span>
									</h4>
									<p>Hi, this is a comment. enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>

								</div>

								<ol class="media-list">

									<li class="media comment">

										<img src="http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=74" width="74" height="74" alt="" class="avatar media-object pull-left img-circle">

										<div class="media-body">

											<h4 class="media-heading author-vcard">
												<cite class="fn"><a href="#" rel="external nofollow" class="url">Mr John Doe</a></cite> 
												<span class="comment-meta commentmetadata"> on <a href="#">July 8, 2013 at 7:46 am</a></span>
											</h4>

											<p>Hi, this is a comment. enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>

										</div>

									</li>

									<li class="media comment">

										<img src="http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=74" width="74" height="74" alt="" class="avatar media-object pull-left img-circle">

										<div class="media-body">

											<h4 class="media-heading author-vcard">
												<cite class="fn"><a href="#" rel="external nofollow" class="url">Mr John Doe</a></cite> 
												<span class="comment-meta commentmetadata"> on <a href="#">July 8, 2013 at 7:46 am</a></span>
											</h4>

											<p>Hi, this is a comment. enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>

										</div>

										<ol class="media-list">
											<li class="media comment">

												<img src="http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=74" width="74" height="74" alt="" class="avatar media-object pull-left img-circle">

												<div class="media-body">

													<h4 class="media-heading author-vcard">
														<cite class="fn"><a href="#" rel="external nofollow" class="url">Mr John Doe</a></cite> 
														<span class="comment-meta commentmetadata">on <a href="#">July 8, 2013 at 7:46 am</a></span>
													</h4>

													<p>Hi, this is a comment. enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
												</div>

											</li>

											<li class="media comment">

												<img src="http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=74" width="74" height="74" alt="" class="avatar media-object pull-left img-circle">

												<div class="media-body">

													<h4 class="media-heading author-vcard">
														<cite class="fn"><a href="#" rel="external nofollow" class="url">Mr John Doe</a></cite> 
														<span class="comment-meta commentmetadata">on <a href="#">July 8, 2013 at 7:46 am</a></span>
													</h4>

													<p>Hi, this is a comment. enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
												</div>

											</li>

										</ol>

									</li>

								</ol>

							</li>
							<li class="media comment">

								<img src="http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=74" width="74" height="74" alt="" class="avatar media-object pull-left img-circle">

								<div class="media-body">

									<h4 class="media-heading author-vcard">
										<cite class="fn"><a href="#" rel="external nofollow" class="url">Mr John Doe</a></cite> 
										<span class="comment-meta commentmetadata">on <a href="#">July 8, 2013 at 7:46 am</a></span>
									</h4>
									<p>Hi, this is a comment. enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>

								</div>

							</li>
							<li class="media comment">

								<img src="http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=74" width="74" height="74" alt="" class="avatar media-object pull-left img-circle">

								<div class="media-body">
													
									<h4 class="media-heading author-vcard">
										<cite class="fn"><a href="#" rel="external nofollow" class="url">Mr John Doe</a></cite> 
										<span class="comment-meta commentmetadata">on <a href="#">July 8, 2013 at 7:46 am</a></span>
									</h4>
									<p>Hi, this is a comment. enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>

								</div>

							</li>
						</ol>

						<div id="respond" class="comments-respond">

							<h3 id="reply-title" class="comment-reply-title">Leave a Reply</h3>

							<form action="#" class="form-inline row" method="post" id="commentform">

								<div class="form-group col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<label class="sr-only" for="inputName">Name</label>
									<input class="form-control" id="inputName" name="author" type="text" value="" aria-required="true" placeholder="Your Name">
								</div>

								<div class="form-group col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<label class="sr-only" for="inputEmail">Email</label>
									<input class="form-control" id="inputEmail" name="author" type="text" value="" aria-required="true" placeholder="Your Email">
								</div>

								<div class="form-group col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<label class="sr-only" for="inputWebsite">Website</label>
									<input class="form-control" id="inputWebsite" name="author" type="text" value="" aria-required="true" placeholder="Your Website">
								</div>

								<div class="form-group col-lg-12 col-md-12 col-sm-12">
									<label class="sr-only" for="inputMessage">Message</label>
									<textarea class="form-control" id="inputMessage" name="message" rows="8" aria-required="true" placeholder="Your Message"></textarea>
								</div>

								<div class="form-group col-lg-12 col-md-12 col-sm-12">
									<button class="btn btn-primary" name="submit" id="submit">Send Message</button>
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

					<aside class="widget">

						<h3 class="widget-title ribbon"><span>Tags</span></h3>

						<div class="tagcloud">
							<a href="#">Some</a>
							<a href="#">Tag</a>
							<a href="#">Goes</a>
							<a href="#">Here</a>
							<a href="#">Utempor</a>
							<a href="#">Incididunt</a>
							<a href="#">Labore</a>
							<a href="#">Dolore</a>
							<a href="#">Magna</a>
							<a href="#">Aliqua</a>
							<a href="#">Seddo</a> 
							<a href="#">Siusmod</a>
							<a href="#">Tempor</a>
							<a href="#">Incididunt</a>
							<a href="#">Ut labore</a>
							<a href="#">Et dolore </a>
							<a href="#">Magna </a>
							<a href="#">Aliqua</a>
						</div>

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
		<script src="/t7/js/main.js"></script>
		<input type="hidden" id="pageData" value="0" />
		<input type="hidden" id="pageData2" value="0" />
	</body>
</html>