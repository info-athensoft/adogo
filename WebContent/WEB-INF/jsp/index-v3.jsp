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

<style>
	.adogo-title-small{
		font-size: 12px;
		margin: 0;
		padding: 0;
		border:0;
		
	}
	
	.adogo-div-head{
		z-index: 1;
		display: block;
		text-align: center;
		-webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.2);
  		box-shadow: 0 1px 1px rgba(0,0,0,0.2);
  		-webkit-border-radius: 5px 5px 0 0;
  		border-radius: 5px 5px 0 0;
	}
	
	.product-thumb .adogo-div-head >img {
	  display: block;
	  -webkit-border-radius: 5px 5px 0 0;
	  border-radius: 5px 5px 0 0;
	}
	
	.adogo-div-body{
		border:none;
		text-align: center;
		margin-top: 0px;
		margin-bottom: 0px;
		padding-top: 2px;
		padding-bottom: 0px;
		height: 34px;
		overflow: hidden;
		background-color: #fff;
		line-height: 1em;
		
		display         : flex;
		justify-content : center;
		align-items     : center;
	}
	
	.adogo-div-body-location{
		color: #a3a3a3;
	  	font-size: 12px;
		text-align: center;
		margin-top: 0px;
		margin-bottom: 2px;
		padding-top: 1px;
		padding-bottom: 8px;
		height: 24px;
		overflow: hidden;
		background-color: #fff;
		-webkit-border-radius: 0 0 5px 5px;
  		border-radius: 0 0 5px 5px;
	}
	
	.adogo-border-0{
		border: none;
	}
	
	.adogo-gap{
		margin-bottom: 0;
		padding-bottom: 0;
	}


</style>


</head>

<body class="boxed bg-cover sticky-search"
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
		<jsp:include page="inc/search_inc.jsp"></jsp:include>
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
			 <!-- 
				<div class="col-md-3">
					<aside class="sidebar-left">
						 <h4 class="mb20">I am Looking For</h4> 
						<ul
							class="nav nav-tabs nav-stacked nav-coupon-category nav-coupon-category-left">
							
							<li><a href="/category/1"><i class="fa fa-shopping-cart"></i>Shopwise<span>33</span></a></li>
							<li><a href="/category/2"><i class="fa fa-cutlery"></i>Food
									&amp; drink<span>50</span></a></li>
							<li><a href="/category/3"><i class="fa fa-calendar"></i>Life
									Service<span>49</span></a></li>
							<li><a href="/category/4"><i class="fa fa-calendar"></i>Pro.
									Service<span>49</span></a></li>
							<li><a href="/category/5"><i class="fa fa-headphones"></i>Education<span>48</span></a></li>
							<li><a href="/category/6"><i class="fa fa-plane"></i>Tourism
									&amp; Hotel<span>38</span></a></li>
							<li><a href="/category/7"><i class="fa fa-plane"></i>Trans.
									&amp; Logistic<span>38</span></a></li>
							<li><a href="/category/8"><i class="fa fa-home"></i>Sport,Recreation<span>44</span></a></li>
							
						</ul>
					</aside>
				</div>
			 -->
				<div class="col-md-12">
					<h3 class="mb20">New brands <small><a href="#">View All</a></small></h3>
					<div class="row row-wrap">
						<!--  
						<c:forEach var="booth" items="${boothNewBrandsList}">
							<div class="col-md-4">
								<div class="product-thumb">
									<header class="product-header">
										<a href="/test/profile"><img src="${booth.logoCoverUrl}" alt="Image Alternative text"
											title="" /> </a>
									</header>
									<div class="product-inner">
										<c:if test="${booth.bizName.length()<=30}">
											<h5 class="product-title">${booth.bizName}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h5>
										</c:if>
										<c:if test="${booth.bizName.length()>30}">
											<h5 class="product-title">${booth.bizName}</h5>
										</c:if>
		
										<p class="product-desciption">
											<i class="fa fa-eye"></i> 19 Views &nbsp;&nbsp;&nbsp;&nbsp; 
											<i class="fa fa-star-o"></i> 7.8 Scores
										</p>
										<div class="product-meta">
											<p class="product-location">
												<i class="fa fa-map-marker"></i>
												${booth.locCity}&nbsp;&nbsp;${booth.locProv}
											</p>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						-->
						
					<!-- new sponsor slide  -->
                   	<div class="owl-carousel" id="owl-carousel" data-items="4">
                     		<c:forEach var="booth" items="${boothAllList}">
                           <div>
                               <div class="product-thumb">
                                   <header class="product-header">
                                       <img src="${booth.logoCoverUrl}" alt="${booth.bizName}" title="${booth.bizName}" />
                                   </header>
                                   <div class="product-inner">
                                       <h5 class="product-title">${booth.bizName}</h5>
                                       <p class="product-desciption">
                                       	<i class="fa fa-eye"></i> 19 Views &nbsp;&nbsp;&nbsp;&nbsp; 
										<i class="fa fa-star-o"></i> 7.8 Scores
									</p>
                                       <ul class="product-actions-list">
                                           <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                           </li>
                                           <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                           </li>
                                       </ul>
                                   </div>
                               </div>
                           </div>
                         </c:forEach>
					</div>
				</div>
			</div>
			<!-- <div class="gap gap-small"></div> -->

			<!-- ad list of this advertiser,booth -->
			<h4 class="mt10 mb10">The Latest Ads <small><a href="/ad/adpost/list">View All</a></small></h4>
			<div class="row row-wrap">
				<div class="col-md-6">
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_1.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_1.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_1.post_datetime}
								</p>
							</div>
						</div>
					</a>

					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_2.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_2.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_2.post_datetime}
								</p>
							</div>
						</div>
					</a>
					
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_3.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_3.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_3.post_datetime}
								</p>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-6">
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_4.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_4.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_4.post_datetime}
								</p>
							</div>
						</div>
					</a> 
					
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_5.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_5.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_5.post_datetime}
								</p>
							</div>
						</div>
					</a>
					
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_6.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_6.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_6.post_datetime}
								</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="gap gap-small"></div>
			
			<!-- 
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
								
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title">${booth.bizName}<br />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title">${booth.bizName}</h5>
								</c:if>

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
										<li><a class="btn btn-sm" href="/test/profile"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>
			 -->

			<!-- monthly stars -->
			<h4 class="mt10 mb10">Monthly Stars <small><a href="#">View All</a></small></h4>
			<div class="row row-wrap">
				<c:forEach var="booth" items="${boothMonthlyStarsList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="product-header">
								<a href="/test/profile"><img src="${booth.logoCoverUrl}" alt="Image Alternative text" title="" /></a>
							</header>
							<div class="product-inner mb0">
								<c:if test="${booth.bizName.length()<=30}">
									<h5 class="product-title mt0 mb0">${booth.bizName}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h5>
								</c:if>
								<c:if test="${booth.bizName.length()>30}">
									<h5 class="product-title mt0 mb0">${booth.bizName}</h5>
								</c:if>

								<span class="product-desciption">
									<i class="fa fa-eye"></i> 19 Views &nbsp;&nbsp;&nbsp;&nbsp; 
									<i class="fa fa-star-o"></i> 7.8 Scores
								</span>
								<div class="product-meta">
									<p class="product-location">
										<i class="fa fa-map-marker"></i>${booth.locCity}&nbsp;&nbsp;${booth.locProv}
									</p>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>
			
			<!-- sponsored booth -->
			<h4 class="mt10 mb10">Sponsors <small><a href="/booth">View All</a></small></h4>
			<div class="row row-wrap">
				<c:forEach var="booth" items="${boothAllList}">
					<div class="col-md-3">
						<div class="product-thumb">
							<header class="adogo-div-header">
							<a href="/test/profile"><img src="${booth.logoCoverUrl}" alt="Image Alternative text" title="" /></a></header>
							<div class="adogo-div-body">
								<span class="adogo-title-small"><strong>${booth.bizName}</strong></span>
							</div>
							<div class="adogo-div-body-location">
								<span class="product-location adogo-title-small"><i class="fa fa-map-marker"></i>&nbsp;${booth.locCity}&nbsp;&nbsp;${booth.locProv}</span>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>
			
			<h3 class="mb20">Shopwise <small><a href="#">View All</a></small></h3>
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
										<li><a class="btn btn-sm" href="http://${booth.homepageUrl}" target="_blank">
											<i class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/test/profile">
											<i class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>
			
			<h4 class="mt10 mb10">The Latest Ads of Shopwise <small><a href="/ad/adpost/list">View All</a></small></h4>
			<div class="row row-wrap">
				<div class="col-md-6">
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_1.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_1.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_1.post_datetime}
								</p>
							</div>
						</div>
					</a>

					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_2.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_2.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_2.post_datetime}
								</p>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-6">
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_4.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_4.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; <i
										class="fa fa-clock-o"></i> ${AdPostLatest_4.post_datetime}
								</p>
							</div>
						</div>
					</a> 
					
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_5.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_5.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; <i
										class="fa fa-clock-o"></i> ${AdPostLatest_5.post_datetime}
								</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">Food and drink <small><a href="#">View All</a></small></h3>
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
										<li><a class="btn btn-sm" href="http://${booth.homepageUrl}" target="_blank">
											<i class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/test/profile">
											<i class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h4 class="mt10 mb10">The Latest Ads of Shopwise <small><a href="/ad/adpost/list">View All</a></small></h4>
			<div class="row row-wrap">
				<div class="col-md-6">
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_1.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_1.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_1.post_datetime}
								</p>
							</div>
						</div>
					</a>

					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_2.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_2.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_2.post_datetime}
								</p>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-6">
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_4.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_4.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; <i
										class="fa fa-clock-o"></i> ${AdPostLatest_4.post_datetime}
								</p>
							</div>
						</div>
					</a> 
					
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_5.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_5.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; <i
										class="fa fa-clock-o"></i> ${AdPostLatest_5.post_datetime}
								</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">Life Service <small><a href="#">View All</a></small></h3>
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
										<li><a class="btn btn-sm" href="http://${booth.homepageUrl}" target="_blank">
											<i class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/test/profile">
											<i class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
			<div class="gap gap-small"></div>

			<h4 class="mt10 mb10">The Latest Ads of Shopwise <small><a href="/ad/adpost/list">View All</a></small></h4>
			<div class="row row-wrap">
				<div class="col-md-6">
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_1.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_1.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_1.post_datetime}
								</p>
							</div>
						</div>
					</a>

					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_2.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_2.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_2.post_datetime}
								</p>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-6">
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_4.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_4.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_4.post_datetime}
								</p>
							</div>
						</div>
					</a> 
					
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_5.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_5.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_5.post_datetime}
								</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">Professional Service <small><a href="#">View All</a></small></h3>
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
										<li><a class="btn btn-sm" href="http://${booth.homepageUrl}" target="_blank">
											<i class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/test/profile">
											<i class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h4 class="mt10 mb10"> The Latest Ads of Shopwise <small><a href="/ad/adpost/list">View All</a></small></h4>
			<div class="row row-wrap">
				<div class="col-md-6">
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_1.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_1.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_1.post_datetime}
								</p>
							</div>
						</div>
					</a>

					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_2.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_2.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_2.post_datetime}
								</p>
							</div>
						</div>
					</a>
				</div>

				<div class="col-md-6">
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_4.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_4.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; <i
										class="fa fa-clock-o"></i> ${AdPostLatest_4.post_datetime}
								</p>
							</div>
						</div>
					</a> 
					
					<a class="product-thumb product-thumb-horizontal" href="/test/profile#section_adpost"> 
						<header class="product-header">
							<img src="/images/newbrand/zhenimport-big.png" alt="Image Alternative text" title="" />
						</header>
						<div class="product-inner">
							<h5 class="product-title">${AdPostLatest_5.post_title}</h5>
							<div class="product-desciption">
								${AdPostLatest_5.short_desc}
								<br />
								<br />
								<p class="product-desciption">
									<i class="fa fa-map-marker"></i> Boston &nbsp;&nbsp; 
									<i class="fa fa-clock-o"></i> ${AdPostLatest_5.post_datetime}
								</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">Educational Service <small><a href="#">View All</a></small></h3>
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
										<li><a class="btn btn-sm" href="http://${booth.homepageUrl}" target="_blank">
											<i class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/test/profile">
											<i class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">Tourism and Hotel Service <small><a href="#">View All</a></small></h3>
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
										<li><a class="btn btn-sm" href="/test/profile"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">Transport and Logistics Service <small><a href="#">View All</a></small></h3>
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
										<li><a class="btn btn-sm" href="http://${booth.homepageUrl}" target="_blank">
											<i class="fa fa-home"></i> Home</a></li>
										<li><a class="btn btn-sm" href="/test/profile">
											<i class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">Sport, Recreation and Entertainment <small><a href="#">View All</a></small></h3>
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
										<li><a class="btn btn-sm" href="/test/profile"><i
												class="fa fa-bars"></i> Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="gap gap-small"></div>

			<h3 class="mb20">Non-profit Organization, Community <small><a href="#">View All</a></small></h3>
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
										<li><a class="btn btn-sm" href="/test/profile"><i
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
