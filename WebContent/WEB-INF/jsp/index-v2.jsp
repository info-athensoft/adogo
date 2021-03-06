<%@ page contentType="text/html; charset=utf-8"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE HTML>
<html>

<head>
<!-- page: Index coupon layout 1 -->
<title>Adogo | Online Brands and Advertising Marketing</title>
<!-- meta info -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta name="keywords"
	content="Adogo Montreal Canada Online Brand and Ad Marketing" />
<meta name="description"
	content="Adogo - The creative online brand and ad marketing platform">
<meta name="author" content="athensoft.com">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Pinterest -->
<meta name="p:domain_verify" content="b5eded4718d158c6ff3ccb3e1dd7f1b2" />


<!-- Google fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300'
	rel='stylesheet' type='text/css'>
<!-- Bootstrap styles -->
<link rel="stylesheet" href="/css/boostrap.css">
<!-- Font Awesome styles (icons) -->
<link rel="stylesheet" href="/css/font_awesome.css">
<!-- Main Template styles -->
<link rel="stylesheet" href="/css/styles.css">
<!-- IE 8 Fallback -->
<!--[if lt IE 9]>
	<link rel="stylesheet" type="text/css" href="css/ie.css" />
<![endif]-->

<!-- Your custom styles (blank file) -->
<link rel="stylesheet" href="/css/mystyles.css">


</head>

<body class="boxed bg-cover"
	style="background-image: url(/img/backgrounds/s4.jpg)">


	<div class="global-wrap">
		<!-- //////////////////////////////////
	//////////////MAIN HEADER///////////// 
	////////////////////////////////////-->

		<!-- Main header -->
		<jsp:include page="inc/nav_inc.jsp"></jsp:include>
		<!-- EMDS Main header -->

		<!-- LOGIN REGISTER LINKS CONTENT -->
		<jsp:include page="inc/login_inc.jsp"></jsp:include>
		<!-- END LOGIN REGISTER LINKS CONTENT -->

		<!-- TOP AREA -->
		<jsp:include page="inc/slide_inc.jsp"></jsp:include>
		<!-- END TOP AREA -->

		<!-- SEARCH AREA -->
		<!--<jsp:include page="inc/search_inc.jsp"></jsp:include>-->
		<!-- END SEARCH AREA -->

		<div class="gap"></div>


		<!-- //////////////////////////////////
	//////////////END MAIN HEADER////////// 
	////////////////////////////////////-->


		<!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<aside class="sidebar-left">
						<!-- <h3 class="mb20">I am Looking For</h3> -->
						<ul
							class="nav nav-tabs nav-stacked nav-coupon-category nav-coupon-category-left">
							<li class="active"><a href="#"><i
									class="fa fa-shopping-cart"></i>I want shopping</a></li>
							<li><a href="/category/1"><i class="fa fa-shopping-cart"></i>Shopwise<span>33</span></a></li>

							<li class="active"><a href="#"><i
									class="fa fa-shopping-cart"></i>I need services</a></li>
							<li><a href="/category/2"><i class="fa fa-cutlery"></i>Food
									& drink<span>50</span></a></li>

							<li><a href="/category/3"><i class="fa fa-calendar"></i>Life
									Service<span>49</span></a></li>
							<li><a href="/category/4"><i class="fa fa-calendar"></i>Pro.
									Service<span>49</span></a></li>
							<li><a href="/category/5"><i class="fa fa-headphones"></i>Education<span>48</span></a></li>
							<li><a href="/category/6"><i class="fa fa-plane"></i>Tourism&amp;Hotel<span>38</span></a></li>
							<li><a href="/category/7"><i class="fa fa-plane"></i>Trans.&amp;Logistic<span>38</span></a></li>
							<li><a href="/category/8"><i class="fa fa-home"></i>Sport,Recreation<span>44</span></a></li>
							<li><a href="/category/9"><i class="fa fa-home"></i>Non-profit<span>44</span></a></li>

							<li class="active"><a href="#"><i
									class="fa fa-shopping-cart"></i>I want to do business</a></li>
							<li><a href="#"><i class="fa fa-cutlery"></i>Connecting
									to Business<span>50</span></a></li>
							<li><a href="#"><i class="fa fa-cutlery"></i>Buying a
									Business<span>50</span></a></li>

							<!--
                            <li><a href="#"><i class="fa fa-cutlery"></i>Housing<span>50</span></a></li>
                            <li><a href="#"><i class="fa fa-cutlery"></i>Auto, Motor &amp; Bike<span>50</span></a></li> 
                            <li><a href="#"><i class="fa fa-umbrella"></i>Clothing<span>40</span></a></li>
                            <li><a href="#"><i class="fa fa-bolt"></i>Sport,Fitness<span>36</span></a></li>
                            
                            <li><a href="#"><i class="fa fa-cutlery"></i>Selling a Business<span>50</span></a></li>
                             -->


						</ul>
					</aside>
				</div>
				<div class="col-md-9">
					<h1 class="mb20">
						New brands <small><a href="#">View All</a></small>
					</h1>
					<div class="row row-wrap">

						<c:forEach var="booth" items="${boothNewBrandsList}">
							<div class="col-md-4">
								<div class="product-thumb">
									<header class="product-header">
										<img src="${booth.logoCoverUrl}" alt="Image Alternative text"
											title="My Ice Cream and Your Ice Cream Spoons" />
									</header>
									<div class="product-inner">
										<ul class="icon-group icon-list-rating" title="5/5 rating">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<c:if test="${booth.bizName.length()<=30}">
											<h5 class="product-title">${booth.bizName}<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</h5>
										</c:if>
										<c:if test="${booth.bizName.length()>30}">
											<h5 class="product-title">${booth.bizName}</h5>
										</c:if>

										<!-- <p class="product-desciption">${booth.bizDesc}</p>  -->
										<div class="product-meta">
											<p class="product-location">
												<i class="fa fa-map-marker"></i>
												${booth.locCity}&nbsp;&nbsp;
												<c:set var="arrayvalue" value="${booth.supportLang}" />
												<c:set var="delim" value="," />
												<c:set var="array" value="${fn:split(arrayvalue, delim)}" />

												<c:forEach var="lang" items="${array}">
													<span class="product-price">${lang}</span>
												</c:forEach>
											</p>
											<ul class="product-actions-list">
												<li><a class="btn btn-sm"
													href="http://${booth.homepageUrl}" target="_blank"><i
														class="fa fa-home"></i> Home</a></li>
												<li><a class="btn btn-sm" href="/profile.jsp"><i
														class="fa fa-bars"></i> Profile</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>


					</div>
				</div>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">
				Weekly Featured <small><a href="#">View All</a></small>
			</h3>
			<div class="row row-wrap">

				<c:forEach var="booth" items="${boothWeeklyFeaturedList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<img src="${booth.logoCoverUrl}" alt="Image Alternative text"
									title="My Ice Cream and Your Ice Cream Spoons" />
							</header>
							<div class="product-inner">
								<!-- 
								<ul class="icon-group icon-list-rating" title="5/5 rating">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul>  -->
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

								<!-- <p class="product-desciption">${booth.bizDesc}</p>  -->
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i> ${booth.locCity}&nbsp;&nbsp;
										<c:set var="arrayvalue" value="${booth.supportLang}" />
										<c:set var="delim" value="," />
										<c:set var="array" value="${fn:split(arrayvalue, delim)}" />
										<c:forEach var="lang" items="${array}">
											<span class="product-price">${lang}</span>
										</c:forEach>
									</p>
									<ul class="product-actions-list">
										<li><a class="btn btn-sm"
											href="/event/act?bizNo=${booth.bizNo}" target="_blank"><i
												class="fa fa-home"></i> ${booth.counter}</a></li>
										<li><a class="btn btn-sm" href="/profile.jsp"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>


			</div>
			<div class="gap gap-small"></div>
			
			
			

			<h3 class="mb20">
				Monthly Stars <small><a href="#">View All</a></small>
			</h3>
			<div class="row row-wrap">

				<c:forEach var="booth" items="${boothMonthlyStarsList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<a href="/test/profile"><img src="${booth.logoCoverUrl}" alt="Image Alternative text"
									title="My Ice Cream and Your Ice Cream Spoons" />
								</a>
							</header>
							<div class="product-inner">
							<!-- 
								<ul class="icon-group icon-list-rating" title="5/5 rating">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul> -->
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

								<!-- <p class="product-desciption">${booth.bizDesc}</p> -->
								<p class="product-desciption">
										<i class="fa fa-eye"></i> 19 Views &nbsp;&nbsp;&nbsp;&nbsp;
										<i class="fa fa-star-o"></i> 7.8 Scores
								</p>
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i> ${booth.locCity},${booth.locProv}
									</p>
									<!-- 
									<ul class="product-actions-list">
										<li><a class="btn btn-sm"
											href="http://${booth.homepageUrl}" target="_blank"><i
												class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/profile.jsp"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul> -->
								</div>
							</div>
						</div>
					</div>
				</c:forEach>


			</div>
			<div class="gap gap-small"></div>
			
			<!-- ad list of this advertiser,booth -->
            <h3 class="mb20">Ad Post</h3>
			<div class="row row-wrap">
			
			<div class="col-md-6">    
                    <a class="product-thumb product-thumb-horizontal" href="#">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="The Violin" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Violin Lessons</h5>
                            <div class="product-desciption">A tortor ut egestas gravida tristique porta nisl scasdfasdfasdf <br/><br/><p class="product-desciption"><i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; <i class="fa fa-clock-o"></i> 6 days 10 h </p></div>
                        </div>
                    </a>
                    <a class="product-thumb product-thumb-horizontal" href="#">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="The Violin" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Violin Lessons</h5>
                            <div class="product-desciption">A tortor ut egestas gravida tristique porta nisl scasdfasdfasdf <br/><br/><p class="product-desciption"><i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; <i class="fa fa-clock-o"></i> 6 days 10 h </p></div>
                            <div class="product-meta">test text</div>
                        </div>
                    </a>
              </div> 
             
             <div class="col-md-6">    
                    <a class="product-thumb product-thumb-horizontal" href="#">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="The Violin" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Violin Lessons</h5>
                            <div class="product-desciption">A tortor ut egestas gravida tristique porta nisl scas asdfasdfasdfasdf asdfa sdfa asdf asf asdf a asd fasdf asdfjk<br/><br/><i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; <i class="fa fa-clock-o"></i> 6 days 10 h </div>
                        </div>
                    </a>
                    <a class="product-thumb product-thumb-horizontal" href="#">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="The Violin" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Violin Lessons</h5>
                            <div class="product-desciption">A tortor ut egestas gravida tristique porta nisl scasdfasdfasdf <br/><br/><p class="product-desciption"><i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; <i class="fa fa-clock-o"></i> 6 days 10 h </p></div>
                        </div>
                    </a>
              </div> 
                
             
            </div>


			<h3 class="mb20">
				Popular in Shopwise <small><a href="#">View All</a></small>
			</h3>
			<div class="row row-wrap">
				<c:forEach var="booth" items="${boothPopularShopwiseList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<img src="${booth.logoCoverUrl}" alt="" title="" />
							</header>
							<div class="product-inner">
								<ul class="icon-group icon-list-rating" title="5/5 rating">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul>
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

								<!-- <p class="product-desciption">${booth.bizDesc}</p> -->
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i> ${booth.locCity}&nbsp;&nbsp;
										<c:set var="arrayvalue" value="${booth.supportLang}" />
										<c:set var="delim" value="," />
										<c:set var="array" value="${fn:split(arrayvalue, delim)}" />
										<c:forEach var="lang" items="${array}">
											<span class="product-price">${lang}</span>
										</c:forEach>
									</p>
									<ul class="product-actions-list">
										<li><a class="btn btn-sm"
											href="http://${booth.homepageUrl}" target="_blank"><i
												class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/profile.jsp"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">
				Popular in Food and drink <small><a href="#">View All</a></small>
			</h3>
			<div class="row row-wrap">
				<c:forEach var="booth" items="${boothPopularFooddrinkList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<img src="${booth.logoCoverUrl}" alt="" title="" />
							</header>
							<div class="product-inner">
								<ul class="icon-group icon-list-rating" title="5/5 rating">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul>
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

								<!-- <p class="product-desciption">${booth.bizDesc}</p> -->
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i> ${booth.locCity}&nbsp;&nbsp;
										<c:set var="arrayvalue" value="${booth.supportLang}" />
										<c:set var="delim" value="," />
										<c:set var="array" value="${fn:split(arrayvalue, delim)}" />
										<c:forEach var="lang" items="${array}">
											<span class="product-price">${lang}</span>
										</c:forEach>
									</p>
									<ul class="product-actions-list">
										<li><a class="btn btn-sm"
											href="http://${booth.homepageUrl}" target="_blank"><i
												class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/profile.jsp"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">
				Popular in Life Service <small><a href="#">View All</a></small>
			</h3>
			<div class="row row-wrap">

				<c:forEach var="booth" items="${boothPopularLifeServiceList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<img src="${booth.logoCoverUrl}" alt="" title="" />
							</header>
							<div class="product-inner">
								<ul class="icon-group icon-list-rating" title="5/5 rating">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul>
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

								<!-- <p class="product-desciption">${booth.bizDesc}</p> -->
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i> ${booth.locCity}&nbsp;&nbsp;
										<c:set var="arrayvalue" value="${booth.supportLang}" />
										<c:set var="delim" value="," />
										<c:set var="array" value="${fn:split(arrayvalue, delim)}" />
										<c:forEach var="lang" items="${array}">
											<span class="product-price">${lang}</span>
										</c:forEach>
									</p>
									<ul class="product-actions-list">
										<li><a class="btn btn-sm"
											href="http://${booth.homepageUrl}" target="_blank"><i
												class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/profile.jsp"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>


			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">
				Popular in Professional Service <small><a href="#">View
						All</a></small>
			</h3>
			<div class="row row-wrap">

				<c:forEach var="booth" items="${boothPopularProServiceList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<img src="${booth.logoCoverUrl}" alt="" title="" />
							</header>
							<div class="product-inner">
								<ul class="icon-group icon-list-rating" title="5/5 rating">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul>
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

								<!-- <p class="product-desciption">${booth.bizDesc}</p> -->
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i> ${booth.locCity}&nbsp;&nbsp;
										<c:set var="arrayvalue" value="${booth.supportLang}" />
										<c:set var="delim" value="," />
										<c:set var="array" value="${fn:split(arrayvalue, delim)}" />
										<c:forEach var="lang" items="${array}">
											<span class="product-price">${lang}</span>
										</c:forEach>
									</p>
									<ul class="product-actions-list">
										<li><a class="btn btn-sm"
											href="http://${booth.homepageUrl}" target="_blank"><i
												class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/profile.jsp"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>


			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">
				Popular in Educational Service <small><a href="#">View
						All</a></small>
			</h3>
			<div class="row row-wrap">
				<c:forEach var="booth" items="${boothPopularEduList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<img src="${booth.logoCoverUrl}" alt="" title="" />
							</header>
							<div class="product-inner">
								<ul class="icon-group icon-list-rating" title="5/5 rating">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul>
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

								<!-- <p class="product-desciption">${booth.bizDesc}</p> -->
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i> ${booth.locCity}&nbsp;&nbsp;
										<c:set var="arrayvalue" value="${booth.supportLang}" />
										<c:set var="delim" value="," />
										<c:set var="array" value="${fn:split(arrayvalue, delim)}" />
										<c:forEach var="lang" items="${array}">
											<span class="product-price">${lang}</span>
										</c:forEach>
									</p>
									<ul class="product-actions-list">
										<li><a class="btn btn-sm"
											href="http://${booth.homepageUrl}" target="_blank"><i
												class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/profile.jsp"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">
				Popular in Tourism and Hotel Service <small><a href="#">View
						All</a></small>
			</h3>
			<div class="row row-wrap">
				<c:forEach var="booth" items="${boothPopularTourList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<img src="${booth.logoCoverUrl}" alt="" title="" />
							</header>
							<div class="product-inner">
								<ul class="icon-group icon-list-rating" title="5/5 rating">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul>
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

								<!-- <p class="product-desciption">${booth.bizDesc}</p> -->
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i> ${booth.locCity}&nbsp;&nbsp;
										<c:set var="arrayvalue" value="${booth.supportLang}" />
										<c:set var="delim" value="," />
										<c:set var="array" value="${fn:split(arrayvalue, delim)}" />
										<c:forEach var="lang" items="${array}">
											<span class="product-price">${lang}</span>
										</c:forEach>
									</p>
									<ul class="product-actions-list">
										<li><a class="btn btn-sm"
											href="http://${booth.homepageUrl}" target="_blank"><i
												class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/profile.jsp"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">
				Popular in Transport and Logistics Service <small><a
					href="#">View All</a></small>
			</h3>
			<div class="row row-wrap">
				<c:forEach var="booth" items="${boothPopularTransportList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<img src="${booth.logoCoverUrl}" alt="" title="" />
							</header>
							<div class="product-inner">
								<ul class="icon-group icon-list-rating" title="5/5 rating">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul>
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

								<!-- <p class="product-desciption">${booth.bizDesc}</p> -->
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i> ${booth.locCity}&nbsp;&nbsp;
										<c:set var="arrayvalue" value="${booth.supportLang}" />
										<c:set var="delim" value="," />
										<c:set var="array" value="${fn:split(arrayvalue, delim)}" />
										<c:forEach var="lang" items="${array}">
											<span class="product-price">${lang}</span>
										</c:forEach>
									</p>
									<ul class="product-actions-list">
										<li><a class="btn btn-sm"
											href="http://${booth.homepageUrl}" target="_blank"><i
												class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/profile.jsp"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">
				Popular in Sport, Recreation and Entertainment <small><a
					href="#">View All</a></small>
			</h3>
			<div class="row row-wrap">
				<c:forEach var="booth" items="${boothPopularSportList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<img src="${booth.logoCoverUrl}" alt="" title="" />
							</header>
							<div class="product-inner">
								<ul class="icon-group icon-list-rating" title="5/5 rating">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul>
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

								<!-- <p class="product-desciption">${booth.bizDesc}</p> -->
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i> ${booth.locCity}&nbsp;&nbsp;
										<c:set var="arrayvalue" value="${booth.supportLang}" />
										<c:set var="delim" value="," />
										<c:set var="array" value="${fn:split(arrayvalue, delim)}" />
										<c:forEach var="lang" items="${array}">
											<span class="product-price">${lang}</span>
										</c:forEach>
									</p>
									<ul class="product-actions-list">
										<li><a class="btn btn-sm"
											href="http://${booth.homepageUrl}" target="_blank"><i
												class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/profile.jsp"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">
				Popular in Non-profit Organization, Community <small><a
					href="#">View All</a></small>
			</h3>
			<div class="row row-wrap">
				<c:forEach var="booth" items="${boothPopularNonprofitList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<img src="${booth.logoCoverUrl}" alt="" title="" />
							</header>
							<div class="product-inner">
								<ul class="icon-group icon-list-rating" title="5/5 rating">
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
									<li><i class="fa fa-star"></i></li>
								</ul>
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

								<!-- <p class="product-desciption">${booth.bizDesc}</p> -->
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i> ${booth.locCity}&nbsp;&nbsp;
										<c:set var="arrayvalue" value="${booth.supportLang}" />
										<c:set var="delim" value="," />
										<c:set var="array" value="${fn:split(arrayvalue, delim)}" />
										<c:forEach var="lang" items="${array}">
											<span class="product-price">${lang}</span>
										</c:forEach>
									</p>
									<ul class="product-actions-list">
										<li><a class="btn btn-sm" href="${booth.homepageUrl}"
											target="_blank"><i class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/profile.jsp"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap"></div>
		</div>


		<!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->


		<!-- Main footer -->
		<jsp:include page="inc/footer_inc.jsp"></jsp:include>
		<!-- EMDS Main footer -->


		<!-- Scripts queries -->
		<script src="/js/jquery.js"></script>
		<script src="/js/boostrap.min.js"></script>
		<script src="/js/countdown.min.js"></script>
		<script src="/js/flexnav.min.js"></script>
		<script src="/js/magnific.js"></script>
		<script src="/js/tweet.min.js"></script>

		<script src="/js/fitvids.min.js"></script>
		<script src="/js/mail.min.js"></script>
		<script src="/js/ionrangeslider.js"></script>
		<script src="/js/icheck.js"></script>
		<script src="/js/fotorama.js"></script>
		<script src="/js/card-payment.js"></script>
		<script src="/js/owl-carousel.js"></script>
		<script src="/js/masonry.js"></script>
		<script src="/js/nicescroll.js"></script>

		<!-- Unused Scripts queries -->
		<!--
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script src="/js/jquery.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
         -->

		<!-- Custom scripts -->
		<script src="/js/custom.js"></script>
		<!--  
        	<script src="/js/countryObject.js"></script>
         -->



		<!-- Datalayer -->
		<script type="text/javascript">
			var data_layer = {
				"page_name" : "homepage"
			};
		</script>


		<!-- TMS -->
		<script src="/js/adogo/tracking/tracker.js"></script>


	</div>

</body>

</html>
