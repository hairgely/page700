<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>   <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>      <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>      <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>

		<meta charset="utf-8">
		<title>Summarize - Responsive Blog/Magazine</title>
		<meta name="description" content="">

		<!-- Mobile Devices Viewport Resset-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
		<meta name="apple-mobile-web-app-capable" content="yes">

		<link rel="stylesheet" href="/t7/vendor/bootstrap/css/bootstrap.min.css">

		<link rel="stylesheet" href="/t7/vendor/font-awesome/css/font-awesome.min.css">
		<!--[if IE 8]>
			<link rel="stylesheet" href="/t7/vendor/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->

		<link rel="stylesheet" href="/t7/vendor/prettyPhoto/css/prettyPhoto.css">

		<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700|Lato:300,400,700,400italic,700italic|Droid+Serif' rel='stylesheet' type='text/css'>

		<!-- base layout styling -->
		<link rel="stylesheet" href="/t7/css/base.css">

		<!-- components styling -->
		<link rel="stylesheet" href="/t7/css/components.css">
		
		<!-- template colorschemes -->
		<link rel="stylesheet" href="/t7/colorschemes/default.css">

		<script src="/t7/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

	</head>
	<body>

		<h1 class="sr-only">Summarize</h1>
			
		<nav id="header" class="header-navbar" role="navigation">

			<div class="header-navbar-inner container">
			
				<div id="brand" class="navbar-brand">
					<a href="index.html" rel="bookmark">

						<!-- to disable lazy loading, remove data-src and data-src-retina -->
						<img src="/t7/img/logo.png" data-src="/t7/img/logo.png" data-src-retina="/t7/img/logo-retina.png" width="244" height="56" alt="">

						<!--fallback for no javascript browsers-->
						<noscript>
							<img src="/t7/img/logo.png" alt="">
						</noscript>
					</a>
				</div>

				<ul class="nav nav-pages hidden-xs">
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
					<li><a href="#">Advertise </a></li>
					<li><a href="#">Terms &amp; Conditions</a></li>
					<li><a href="#">Privacy</a></li>
				</ul>
	
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
						<a href="#" data-toggle="li">Features</a>
						<div class="subnav-wrapper">
							<ul class="subnav">
								<li class="active"><a href="index.html">Blog 3 Columns</a></li>
								<li><a href="blog.html">Blog 2 Columns</a></li>
								<li><a href="blog-grids.html">Blog Grids</a></li>
								<li><a href="reviews.html">Reviews Archive</a></li>
								<li><a href="single.html">Single Blog</a></li>
								<li><a href="single-full.html">Single Blog (Full)</a></li>
								<li><a href="components.html">Components</a></li>
								<li>
									<a href="#" data-toggle="li">Colorshemes</a>
									<div class="subnav-wrapper">
										<ul class="subnav">
											<li><a href="/t7/html/">Coolorize</a></li>
											<li><a href="/t7/html-dark/">Dark</a></li>
											<li><a href="/t7/html-light/">Light</a></li>
										</ul>
									</div>
								</li>
								<li>
									<a href="#" data-toggle="li">Banner Placements</a>
									<div class="subnav-wrapper">
										<ul class="subnav">
											<li><a href="banner-index.html">Home</a></li>
											<li><a href="banner-single.html">Single</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
					</li>
					<li class="full-subnav-wrapper">
						<a href="#" data-toggle="li">Drop Down 2</a>

						<div class="row subnav-wrapper subnav-tabbed">
							
							<ul class="col-md-2 col-sm-2 subnav-tabbed-tabs alignright">
								
								<li class="active"><a href="#tabAll">All </a></li>
								<li><a href="#tabNotebook">Notebook</a></li>
								<li><a href="#tabSmartphone">Smartphone</a></li>
								
							</ul>

							<div class="col-md-10 col-sm-10 subnav-tabbed-panels">

								<div id="tabAll" class="subnav-tabbed-panel active">
									
									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
													<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>
									
									</article>

									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
												<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>

									</article>

									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
												<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>
									
									</article>

									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
												<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>
									
									</article>
									
								</div>
								<div id="tabNotebook" class="subnav-tabbed-panel">

									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
												<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>

									</article>

									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
												<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>

									
									</article>

									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
												<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>
									
									</article>
									
									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
												<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>

									
									</article>

								</div>
								<div id="tabSmartphone" class="subnav-tabbed-panel">

									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
												<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>
									
									</article>

									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
												<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>
									
									</article>
									
									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
												<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>
									
									</article>

									<article class="entry type-post style-thumbnail col-sm-3 col-md-3">

										<figure class="entry-thumbnail">
											<a href="single.html">
												<!-- to disable lazy loading, remove data-src and data-src-retina -->
												<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/230x230" data-src-retina="http://placehold.it/460x460" width="230" height="230" alt="">

												<!--fallback for no javascript browsers-->
												<noscript>
													<img src="http://placehold.it/230x230" alt="">
												</noscript>
											</a>
										</figure>

										<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</a> </h3>
									
									</article>

								</div>

							</div>

						</div>

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

			<div class="section row entries bg-primary section-no-margin-bottom">

				<div class="col-lg-6 col-xl-5">

					<div class="row">

						<article class="entry style-grid style-hero hero-md-largest type-post col-md-8 col-lg-12 colheight-sm-1 colheight-md-2 colheight-lg-2 colheight-xl-2">
						
							<div class="ribbon ribbon-pulled ribbon-small ribbon-highlight">
								<a href="blog.html">Category Name</a>
							</div>

							<header class="entry-header">
								<h3 class="entry-title"><a href="single.html">This can be use for hand picked featured posts by staffs - sit voluptatem accusantium doloremque laudantium</a> </h3>
								<div class="entry-meta">
									<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
									<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
								</div>
							</header>

							<figure class="entry-thumbnail">

								<a href="single.html" class="overlay overlay-primary"></a>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/680x452" data-src-retina="http://placehold.it/1024x680" width="680" height="452" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/680x452" alt="">
								</noscript>

							</figure>

						</article>

						<article class="entry style-grid style-hero type-post col-md-4 col-lg-6 colheight-sm-1">
						
							<div class="ribbon ribbon-pulled ribbon-small ribbon-highlight">
								<a href="">Entertainment</a>
							</div>

							<header class="entry-header">
								<h3 class="entry-title"><a href="single.html">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a> </h3>
								<div class="entry-meta">
									<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
									<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
								</div>
							</header>
							
							<figure class="entry-thumbnail">

								<a href="single.html" class="overlay overlay-primary"></a>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/480x280" alt="">
								</noscript>

							</figure>

						</article>

						<article class="entry style-grid style-hero type-post col-md-4 col-lg-6 colheight-sm-1">
						
							<div class="ribbon ribbon-pulled ribbon-small ribbon-highlight">
								<a href="blog.html">Social Media</a>
							</div>

							<header class="entry-header">
								<h3 class="entry-title"><a href="single.html">Postman will send notifications to your flashy smartphone about popular people and their latest shouts.</a> </h3>
								<div class="entry-meta">
									<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
									<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
								</div>
							</header>
							
							<figure class="entry-thumbnail">

								<a href="single.html" class="overlay overlay-primary"></a>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/480x280" alt="">
								</noscript>

							</figure>

						</article>

					</div><!--/.row-->

				</div>

				<div class="col-lg-6 col-xl-7">

					<div class="row">

						<article class="entry style-grid style-hero type-post col-md-4 col-lg-6 colheight-sm-1">
						
							<div class="ribbon ribbon-pulled ribbon-small ribbon-highlight">
								<a href="blog.html">Event</a>
							</div>

							<header class="entry-header">
								<h3 class="entry-title"><a href="single.html">Rumor: The long awaited update for Retina Display is ready to be annaunced on the next event held by them</a> </h3>
								<div class="entry-meta">
									<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
									<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
								</div>
							</header>
							
							<figure class="entry-thumbnail">

								<a href="single.html" class="overlay overlay-primary"></a>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/480x280" alt="">
								</noscript>

							</figure>

						</article>

						<article class="entry style-grid style-hero type-post col-md-4 col-lg-6 colheight-sm-1">
						
							<div class="ribbon ribbon-pulled ribbon-small ribbon-highlight">
								<a href="blog.html">Tips</a>
							</div>

							<header class="entry-header">
								<h3 class="entry-title"><a href="single.html">This can be use for hand picked featured posts by staffs - sit voluptatem accusantium doloremque laudantium</a> </h3>
								<div class="entry-meta">
									<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
									<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
								</div>
							</header>

							<figure class="entry-thumbnail">

								<a href="single.html" class="overlay overlay-primary"></a>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/680x452" data-src-retina="http://placehold.it/1024x680" width="680" height="452" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/680x452" alt="">
								</noscript>

							</figure>

						</article>

						<article class="entry style-grid style-hero hero-lg-larger type-post col-md-4 col-lg-6 colheight-sm-1 colheight-lg-2">
						
							<div class="ribbon ribbon-pulled ribbon-small ribbon-highlight">
								<a href="blog.html">Technology</a>
							</div>

							<header class="entry-header">
								<h3 class="entry-title"><a href="single.html">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</a> </h3>
								<div class="entry-meta">
									<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
									<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
								</div>
							</header>
							
							<figure class="entry-thumbnail">

								<a href="single.html" class="overlay overlay-primary"></a>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/380x435" data-src-retina="http://placehold.it/620x709" width="380" height="435" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/380x435" alt="">
								</noscript>

							</figure>

						</article>

						<article class="entry style-grid style-hero type-post col-md-6 col-lg-6 colheight-sm-1">
						
							<div class="ribbon ribbon-pulled ribbon-small ribbon-highlight">
								<a href="blog.html">Event</a>
							</div>

							<header class="entry-header">
								<h3 class="entry-title"><a href="single.html">Rumor: The long awaited update for Retina Display is ready to be annaunced on the next event held by them</a> </h3>
								<div class="entry-meta">
									<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
									<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
								</div>
							</header>
							
							<figure class="entry-thumbnail">

								<a href="single.html" class="overlay overlay-primary"></a>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/680x452" data-src-retina="http://placehold.it/1024x680" width="680" height="452" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/680x452" alt="">
								</noscript>

							</figure>

						</article>

						<article class="entry style-grid style-hero type-post col-md-6 col-lg-6 colheight-sm-1">
						
							<div class="ribbon ribbon-pulled ribbon-small ribbon-highlight">
								<a href="blog.html">Social Media</a>
							</div>

							<header class="entry-header">
								<h3 class="entry-title"><a href="single.html">Postman will send notifications to your flashy smartphone about popular people and their latest shouts.</a> </h3>
								<div class="entry-meta">
									<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
									<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
								</div>
							</header>
							
							<figure class="entry-thumbnail">

								<a href="single.html" class="overlay overlay-primary"></a>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/480x280" alt="">
								</noscript>

							</figure>

						</article>

					</div><!--/.row-->

				</div>

			</div><!--/section.row.entries-->

			<div id="content" class="content section row">

				<div class="col-md-9 col-lg-9">

					<div class="row">

						<div class="col-md-4 col-lg-4 md-pull-right">
								
							<aside class="widget">

								<h2 class="widget-title ribbon ribbon-focus"><span>What's New</span></h2>

									<!-- <article class="entry style-grid type-post">
					
										<header class="entry-header">
											<h3  class="entry-title">
												<a href="single.html" rel="bookmark">Excepteur sint occaecat cupidatat non proident.</a>
											</h3>
											<div class="entry-meta">
												<span class="entry-date"><a href=""><time datetime="2013-07-04T23:26:34+00:00">8 hours ago</time></a></span>
											</div>
										</header>

										<figure class="entry-thumbnail">

											<a href="single.html" class="overlay overlay-primary"></a>

								
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

											<noscript>
												<img src="http://placehold.it/720x420" alt="">
											</noscript>

										</figure>

									</article> -->

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
												<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">3 hours ago</time></a></span>
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
												<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">4 hours ago</time></a></span>
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
												<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">5 hours ago</time></a></span>
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
												<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">6 hours ago</time></a></span>
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
												<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">7 hours ago</time></a></span>
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
												<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">8 hours ago</time></a></span>
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
												<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">9 hours ago</time></a></span>
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
												<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">10 hours ago</time></a></span>
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
												<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">11 hours ago</time></a></span>
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
												<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">12 hours ago</time></a></span>
											</div>
										</div>

									</article>

								</div>

								<div class="more-wrapper">
									<a href="blog.html" class="btn btn-warning btn-sm">More</a>
								</div>

							</aside>

							<aside class="widget">

								<h3 class="widget-title ribbon ribbon-focus"><span>Latest Discussion</span></h3>

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

								<h3 class="widget-title ribbon ribbon-focus"><span>TAGS</span></h3>

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

						</div><!--/.col-md-4.col-lg-4.md-pull-right-->

						<div class="bg-base col-md-8 col-lg-8">
							
							<h2 class="section-title ribbon ribbon-highlight"><span>What's Hot</span></h2>

							<div class="entries">

								<article class="entry style-large type-post">

									<figure class="entry-thumbnail hidden-xs">

										<a href="single.html">
											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/680x452" data-src-retina="http://placehold.it/1024x680" width="680" height="452" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/680x452" alt="">
											</noscript>
										</a>

									</figure>

									<header class="entry-header">

										<h3 class="entry-title">
											<a href="single.html" rel="bookmark">The mosts views and discussed posts on this time goes here.</a>
										</h3>
										<div class="entry-meta">
											<span class="author">by <a href="blog.html">John Doe</a></span>
											<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
											<span class="category">In <a href="blog.html">Technology</a></span>
										</div>

									</header>

									<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet.</p>

								</article>

								<article class="entry style-large type-post">

									<figure class="entry-thumbnail hidden-xs">

										<a href="single.html">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/680x452" data-src-retina="http://placehold.it/1024x680" width="680" height="452" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/680x452" alt="">
											</noscript>

										</a>

									</figure>

									<header class="entry-header">

										<h3 class="entry-title">
											<a href="single.html" rel="bookmark">Excepteur sint occaecat cupidatat non proident.</a>
										</h3>
										<div class="entry-meta">
											<span class="author">by <a href="blog.html">John Doe</a></span>
											<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
											<span class="category">In <a href="blog.html">Entertaintment</a></span>
										</div>

									</header>

									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

								</article>
								
								<article class="entry style-large type-post">

									<figure class="entry-thumbnail hidden-xs">

										<a href="single.html">

											<!-- to disable lazy loading, remove data-src and data-src-retina -->
											<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/680x452" data-src-retina="http://placehold.it/1024x680" width="680" height="452" alt="">

											<!--fallback for no javascript browsers-->
											<noscript>
												<img src="http://placehold.it/680x452" alt="">
											</noscript>
											
										</a>

									</figure>

									<header class="entry-header">

										<h3 class="entry-title">
											<a href="single.html" rel="bookmark">Excepteur sint occaecat cupidatat non proident.</a>
										</h3>
										<div class="entry-meta">
											<span class="author">by <a href="blog.html">John Doe</a></span>
											<span class="entry-date"><a href="blog.html">on <time datetime="2013-07-04T23:26:34+00:00">September 20 2013</time></a></span>
											<span class="category">In <a href="blog.html">Entertaintment</a></span>
										</div>

									</header>

									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

								</article>
								
							</div>

						</div><!--/.bg-base.col-md-8.col-lg-8-->

					</div><!--/.colheight-->

				</div><!--/.col-md-8.col-lg-4-->

				<div class="sidebar col-md-3 col-lg-3">
						
					<aside class="widget">

						<h2 class="widget-title ribbon"><span>Latest Review</span></h2>

						<div class="entries row">

							<article class="type-post style-media-list style-review-list media col-sm-6 col-md-12">

								<div class="style-review-score">
									80
								</div>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single-full.html" rel="bookmark">xPhone 15s</a>
									</h3>
									<p class="small">xPhone Designer: The most secure xPhone Ever?</p>
								</div>

							</article>

							<article class="type-post style-media-list style-review-list media col-sm-6 col-md-12">

								<div class="style-review-score">
									79
								</div>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single-full.html" rel="bookmark">xPhone 15c.</a>
									</h3>
									<p class="small">Sunt in culpa qui officia deserunt mollit anim id est laborum</p>
								</div>

							</article>

							<article class="type-post style-media-list style-review-list media col-sm-6 col-md-12">

								<div class="style-review-score">
									76
								</div>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single-full.html" rel="bookmark">Droid Maxxi.</a>
									</h3>
									<p class="small">Laborum sunt in culpa qui officia deserunt mollit anim id est </p>
								</div>

							</article>

							<article class="type-post style-media-list style-review-list media col-sm-6 col-md-12">

								<div class="style-review-score">
									79
								</div>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>

								<div class="media-body">
									<h3  class="entry-title">
										<a href="single-full.html" rel="bookmark">NOKIEM Lumpia</a>
									</h3>
									<p class="small">Deserunt laborum sunt in culpa qui officia  mollit anim id est </p>
								</div>

							</article>

							<article class="type-post style-media-list style-review-list media col-sm-6 col-md-12">

								<div class="style-review-score">
									74
								</div>

								<!-- to disable lazy loading, remove data-src and data-src-retina -->
								<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/80x80" data-src-retina="http://placehold.it/160x160" width="80" height="80" class="media-object pull-left" alt="">

								<!--fallback for no javascript browsers-->
								<noscript>
									<img src="http://placehold.it/80x80" alt="">
								</noscript>
								<div class="media-body">
									<h3  class="entry-title">
										<a href="single-full.html" rel="bookmark">NFC Dragonfly</a>
									</h3>
									<p class="small">Culpa deserunt laborum sunt in qui officia  mollit anim id est </p>
								</div>

							</article>

						</div><!--/.entries.colheight-->

						<div class="more-wrapper">
							<a href="review.html" class="btn btn-warning btn-sm">Review Archive</a>
						</div>

					</aside>

					<div class="collapsible-widgets">

						<aside class="widget">

							<h2 class="widget-title ribbon"><span>Top Smartphone</span></h2>

							<ul class="entries">
								<li class="entry style-score-widget">
									<div class="score-label entry-title"><a href="single-full.html">xPhone 15s</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 81%;">
											<span>Score:&nbsp;81</span>
										</div>
									</div>
								</li>
								<li class="entry style-score-widget">
									<div class="score-label entry-title"><a href="single-full.html">Droid Maxxi</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
											<span>Score:&nbsp;80</span>
										</div>
									</div>
								</li>
								<li class="entry style-score-widget">
									<div class="score-label entry-title"><a href="single-full.html">Performance</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
											<span>Score:&nbsp;76</span>
										</div>
									</div>
								</li>
								<li class="entry style-score-widget">
									<div class="score-label entry-title"><a href="single-full.html">NFC Dragonfly</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
											<span>Score:&nbsp;75</span>
										</div>
									</div>
								</li>
								<li class="entry style-score-widget">
									<div class="score-label entry-title"><a href="single-full.html">Andromeda Titan</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 70%;">
											<span>Score:&nbsp;70</span>
										</div>
									</div>
								</li>
							</ul>

						</aside>

						<aside class="widget">

							<h2 class="widget-title ribbon"><span>Top Notebook</span></h2>

							<ul class="entries">
								<li class="entry style-score-widget">
									<div class="score-label entry-title"><a href="single-full.html">xPhone 15s</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 81%;">
											<span>Score:&nbsp;81</span>
										</div>
									</div>
								</li>
								<li class="entry style-score-widget">
									<div class="score-label entry-title"><a href="single-full.html">Droid Maxxi</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
											<span>Score:&nbsp;80</span>
										</div>
									</div>
								</li>
								<li class="entry style-score-widget">
									<div class="score-label entry-title"><a href="single-full.html">Performance</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
											<span>Score:&nbsp;76</span>
										</div>
									</div>
								</li>
								<li class="entry style-score-widget">
									<div class="score-label entry-title"><a href="single-full.html">NFC Dragonfly</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
											<span>Score:&nbsp;75</span>
										</div>
									</div>
								</li>
								<li class="entry style-score-widget">
									<div class="score-label entry-title"><a href="single-full.html">Andromeda Titan</a></div>
									<div class="progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 70%;">
											<span>Score:&nbsp;70</span>
										</div>
									</div>
								</li>
							</ul>

						</aside>

					</div>

					<aside class="widget widget_calendar">

						<h3 class="widget-title ribbon"><span>Calendar</span></h3>

						<div id="calendar_wrap">
							<table id="wp-calendar">
								<caption>July 2013</caption>
								<thead>
									<tr>
										<th scope="col" title="Monday">M</th>
										<th scope="col" title="Tuesday">T</th>
										<th scope="col" title="Wednesday">W</th>
										<th scope="col" title="Thursday">T</th>
										<th scope="col" title="Friday">F</th>
										<th scope="col" title="Saturday">S</th>
										<th scope="col" title="Sunday">S</th>
									</tr>
								</thead>

								<tfoot>
									<tr>
										<td colspan="3" id="prev"><a href="#" title="View posts for March 2013">&laquo; Mar</a></td>
										<td class="pad">&nbsp;</td>
										<td colspan="3" id="next"><a href="#" title="View posts for March 2013">Aug &raquo;</a></td>
									</tr>
								</tfoot>
								<tbody>
									<tr><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td>
									</tr>
									<tr>
										<td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td>
									</tr>
									<tr>
										<td>15</td><td>16</td><td>17</td><td>18</td><td>19</td><td>20</td><td>21</td>
									</tr>
									<tr>
										<td>22</td><td>23</td><td>24</td><td>25</td><td>26</td><td>27</td><td>28</td>
									</tr>
									<tr>
										<td>29</td><td id="today">30</td><td>31</td>
										<td class="pad" colspan="4">&nbsp;</td>
									</tr>
								</tbody>
							</table>
						</div>
					</aside>

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

				</div><!--/.sidebar.col-md-3.col-lg-3-->

			</div><!--/.row.content-->

			<div id="coverageCarousel" class="section bg-primary carousel carousel slide">

				<h2 class="section-title ribbon ribbon-highlight"><span>&nbsp;</span></h2>
				<div class="carousel-inner">
					<div class="item active">
						<h2 class="section-title ribbon ribbon-highlight"><a href="blog.html"> xPhone launch event</a></h2>

						<div class="row entries">

							<article class="entry style-grid type-post col-md-6 col-lg-3 colheight-sm-1">
								
								<header class="entry-header">
									<p class="small"><a href="blog.html">Review</a></p>
									<h3 class="entry-title"><a href="single.html">xPhone first hand: Check out, this might be the right phone for you</a> </h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
										<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
									</div>
								</header>
								
								<figure class="entry-thumbnail">

									<a href="single.html" class="overlay overlay-primary"></a>

									<!-- to disable lazy loading, remove data-src and data-src-retina -->
									<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

									<!--fallback for no javascript browsers-->
									<noscript>
										<img src="http://placehold.it/480x280" alt="">
									</noscript>

								</figure>

							</article>

							<article class="entry style-grid type-post col-md-6 col-lg-3 colheight-sm-1">

								<header class="entry-header">
									<p class="small"><a href="blog.html">Event Report</a></p>
									<h3 class="entry-title"><a href="single.html">The rumor was not a joke, lorem ispsum dolor sit amet constactetiour.</a> </h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
										<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
									</div>
								</header>
								
								<figure class="entry-thumbnail">

									<a href="single.html" class="overlay overlay-primary"></a>

									<!-- to disable lazy loading, remove data-src and data-src-retina -->
									<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/680x452" data-src-retina="http://placehold.it/1024x680" width="680" height="452" alt="">

									<!--fallback for no javascript browsers-->
									<noscript>
										<img src="http://placehold.it/680x452" alt="">
									</noscript>

								</figure>

							</article>

							<article class="entry style-grid type-post col-md-6 col-lg-3 colheight-sm-1">
								<header class="entry-header">
									<p class="small"><a href="blog.html">Event Report</a></p>
									<h3 class="entry-title"><a href="single.html">The Event is starting Now. Grab your popcorn, beer and notes.</a> </h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
										<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
									</div>
								</header>
								
								<figure class="entry-thumbnail">

									<a href="single.html" class="overlay overlay-primary"></a>

									<!-- to disable lazy loading, remove data-src and data-src-retina -->
									<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

									<!--fallback for no javascript browsers-->
									<noscript>
										<img src="http://placehold.it/480x280" alt="">
									</noscript>

								</figure>

							</article>

							<article class="entry style-grid type-post col-md-6 col-lg-3 colheight-sm-1">
								<header class="entry-header">
									<p class="small"><a href="blog.html">Speculation</a></p>
									<h3 class="entry-title"><a href="single.html">Rumor: The long awaited update for Retina Display is ready to be annaunced on the next event held by them</a> </h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
										<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
									</div>
								</header>
								
								<figure class="entry-thumbnail">

									<a href="single.html" class="overlay overlay-primary"></a>

									<!-- to disable lazy loading, remove data-src and data-src-retina -->
									<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

									<!--fallback for no javascript browsers-->
									<noscript>
										<img src="http://placehold.it/480x280" alt="">
									</noscript>

								</figure>

							</article>

						</div><!--/.row.entries-->

					</div><!--/.item-->
					<div class="item">
						<h2 class="section-title ribbon ribbon-highlight"><a href="blog.html"> #WCDC 2013</a></h2>
						
						<div class="row entries">

							<article class="entry style-grid type-post col-md-6 col-lg-3 colheight-sm-1">
								<header class="entry-header">
									<p class="small"><a href="blog.html">Event Report</a></p>
									<h3 class="entry-title"><a href="single.html">The Event is starting Now. Grab your popcorn, beer and notes.</a> </h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
										<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
									</div>
								</header>
								
								<figure class="entry-thumbnail">

									<a href="single.html" class="overlay overlay-primary"></a>

									<!-- to disable lazy loading, remove data-src and data-src-retina -->
									<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

									<!--fallback for no javascript browsers-->
									<noscript>
										<img src="http://placehold.it/480x280" alt="">
									</noscript>

								</figure>

							</article>

							<article class="entry style-grid type-post col-md-6 col-lg-3 colheight-sm-1">
								<header class="entry-header">
									<p class="small"><a href="blog.html">Speculation</a></p>
									<h3 class="entry-title"><a href="single.html">Rumor: The long awaited update for Retina Display is ready to be annaunced on the next event held by them</a> </h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
										<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
									</div>
								</header>
								
								<figure class="entry-thumbnail">

									<a href="single.html" class="overlay overlay-primary"></a>

									<!-- to disable lazy loading, remove data-src and data-src-retina -->
									<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

									<!--fallback for no javascript browsers-->
									<noscript>
										<img src="http://placehold.it/480x280" alt="">
									</noscript>

								</figure>

							</article>

							<article class="entry style-grid type-post col-md-6 col-lg-3 colheight-sm-1">
								
								<header class="entry-header">
									<p class="small"><a href="blog.html">Review</a></p>
									<h3 class="entry-title"><a href="single.html">xPhone first hand: Check out, this might be the right phone for you</a> </h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
										<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
									</div>
								</header>
								
								<figure class="entry-thumbnail">

									<a href="single.html" class="overlay overlay-primary"></a>

									<!-- to disable lazy loading, remove data-src and data-src-retina -->
									<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/480x280" data-src-retina="http://placehold.it/720x420" width="480" height="280" alt="">

									<!--fallback for no javascript browsers-->
									<noscript>
										<img src="http://placehold.it/480x280" alt="">
									</noscript>

								</figure>

							</article>

							<article class="entry style-grid type-post col-md-6 col-lg-3 colheight-sm-1">

								<header class="entry-header">
									<p class="small"><a href="blog.html">Event Report</a></p>
									<h3 class="entry-title"><a href="single.html">The rumor was not a joke, lorem ispsum dolor sit amet constactetiour.</a> </h3>
									<div class="entry-meta">
										<span class="entry-date"><a href="blog.html"><time datetime="2013-07-04T23:26:34+00:00">20 hours ago</time></a></span>
										<span class="entry-author"> by <a href="blog.html">John Doe</a></span>
									</div>
								</header>
								
								<figure class="entry-thumbnail">

									<a href="single.html" class="overlay overlay-primary"></a>

									<!-- to disable lazy loading, remove data-src and data-src-retina -->
									<img src="/t7/img/placeholder.gif" data-src="http://placehold.it/680x452" data-src-retina="http://placehold.it/1024x680" width="680" height="452" alt="">

									<!--fallback for no javascript browsers-->
									<noscript>
										<img src="http://placehold.it/680x452" alt="">
									</noscript>

								</figure>

							</article>

						</div><!--/.row.entries-->

					</div><!--/.item-->
				</div><!--/.carousel-inner-->

				<a class="left carousel-control" href="#coverageCarousel" data-slide="prev">
					<span class="icon icon-angle-left"></span>
				</a>
				<a class="right carousel-control" href="#coverageCarousel" data-slide="next">
					<span class="icon icon-angle-right"></span>
				</a>

			</div>

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

			<div class="footer-top container">
	
				<div class="row">

					<div class="widget col-xs-12 col-sm-4">

						<h4 class="widget-title">Categories</h4>

						<ul class="entries links links-2-cols">
							<li><a href="blog.html">Entertainment</a></li>
							<li><a href="blog.html">Event</a></li>
							<li><a href="blog.html">Technology</a></li>
							<li><a href="blog.html">Social Media</a></li>
							<li><a href="blog.html">Tactical</a></li>
							<li><a href="reviews.html">Notebook</a></li>
							<li><a href="reviews.html">Smartphone</a></li>
							<li><a href="reviews.html">Tablet</a></li>
						</ul>

					</div><!--/.col-3-->

					<div class="clearfix visible-xs"></div>

					<div class="widget col-xs-6 col-sm-2">

						<h4 class="widget-title">Information</h4>

						<ul class="entries links links">
							<li><a href="#">About</a></li>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Advertise </a></li>
							<li><a href="#">Terms &amp; Conditions</a></li>
							<li><a href="#">Privacy</a></li>
						</ul>

					</div><!--/.col-3-->

					<div class="widget col-xs-6 col-sm-2">

						<h4 class="widget-title">Follow Us</h4>

						<ul class="entries links">
							<li><a href="blog.html"><i class="icon-facebook-sign icon-2x"></i> Facebook</a></li>
							<li><a href="blog.html"><i class="icon-twitter-sign icon-2x"></i> Twitter</a></li>
							<li><a href="blog.html"><i class="icon-google-plus-sign icon-2x"></i> Google Plus</a></li>
							<li><a href="blog.html"><i class="icon-linkedin-sign icon-2x"></i> Linkedin</a></li>
						</ul>

					</div><!--/.col-3-->

					<div class="clearfix visible-xs"></div>

					<div class="widget col-xs-12 col-sm-4">

						<h4 class="widget-title">Subscribe</h4>

						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="subscribeEmail" class="col-lg-2 control-label">EMAIL</label>
								<div class="col-lg-10">
									<input type="text" class="form-control" id="subscribeEmail" placeholder="Your Email">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">RSS</label>
								<div class="col-lg-10">
									<p class="form-control-static">
										<a href=""><i class="icon-rss-sign"></i> Posts</a> &nbsp; &nbsp;
										<a href=""><i class="icon-rss-sign"></i> Comments</a>
									</p>
								</div>
							</div>
						</form>

					</div><!--/.col-3-->

				</div><!--row.-->

			</div>

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

	</body>
</html>