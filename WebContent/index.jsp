<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<!-- page: Index coupon layout 1 -->
    <title>Adogo - Online Brands and Ad Marketing</title>
    <!-- meta info -->
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta name="keywords" content="Adogo Montreal Canada Online Brand and Ad Marketing" />
    <meta name="description" content="Adogo - The creative online brand and ad marketing platform">
    <meta name="author" content="athensoft.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300' rel='stylesheet' type='text/css'>
    <!-- Bootstrap styles -->
    <link rel="stylesheet" href="css/boostrap.css">
    <!-- Font Awesome styles (icons) -->
    <link rel="stylesheet" href="css/font_awesome.css">
    <!-- Main Template styles -->
    <link rel="stylesheet" href="css/styles.css">
    <!-- IE 8 Fallback -->
    <!--[if lt IE 9]>
	<link rel="stylesheet" type="text/css" href="css/ie.css" />
<![endif]-->

    <!-- Your custom styles (blank file) -->
    <link rel="stylesheet" href="css/mystyles.css">
	

</head>

<body class="boxed bg-cover" style="background-image: url(img/backgrounds/wood.jpg)">


    <div class="global-wrap">
	<!-- //////////////////////////////////
	//////////////MAIN HEADER///////////// 
	////////////////////////////////////-->

		<!-- Main header -->
		<jsp:include page="nav_inc.jsp"></jsp:include>
		<!-- EMDS Main header -->
        
        <!-- LOGIN REGISTER LINKS CONTENT -->
        <jsp:include page="login_inc.jsp"></jsp:include>
        <!-- END LOGIN REGISTER LINKS CONTENT -->
		
        <!-- TOP AREA -->
        <jsp:include page="slide_inc.jsp"></jsp:include>
        <!-- END TOP AREA -->

        <!-- SEARCH AREA -->
        <jsp:include page="search_inc.jsp"></jsp:include>
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
                        <ul class="nav nav-tabs nav-stacked nav-coupon-category nav-coupon-category-left">
                        	<li class="active"><a href="#"><i class="fa fa-shopping-cart"></i>I want shopping</a></li>
                        	<li><a href="/category/shopwise"><i class="fa fa-shopping-cart"></i>Shopwise<span>33</span></a></li>
                        	
                        	<li class="active"><a href="#"><i class="fa fa-shopping-cart"></i>I need services</a></li>
                            <li><a href="/category/fooddrink"><i class="fa fa-cutlery"></i>Food & drink<span>50</span></a></li>                            
                            
                            <li><a href="/category/lifeservice"><i class="fa fa-calendar"></i>Life Service<span>49</span></a></li>
                            <li><a href="/category/proservice"><i class="fa fa-calendar"></i>Pro. Service<span>49</span></a></li>
                            <li><a href="/category/education"><i class="fa fa-headphones"></i>Education<span>48</span></a></li>
                            <li><a href="/category/tourism"><i class="fa fa-plane"></i>Tourism<span>38</span></a></li>
                            <li><a href="/category/nonprofit"><i class="fa fa-home"></i>Non-profit<span>44</span></a></li>
                            
                            <li class="active"><a href="#"><i class="fa fa-shopping-cart"></i>Business</a></li>
                            <li><a href="#"><i class="fa fa-cutlery"></i>Buying a Business<span>50</span></a></li>
                            
                            
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
                    <h1 class="mb20">New brands <small><a href="#">View All</a></small></h1>
                    <div class="row row-wrap">
                		<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/newbrand/01.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                    	<!--
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/newbrand/02.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                    	<!--
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                         
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/newbrand/03.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                    	<!--
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                         
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="http://www.athensoft.com" target="_blank"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
                </div>
            </div>
            
            <div class="gap gap-small"></div>
            
            <h1 class="mb20">Weekly Featured <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/weekfeature/01.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/weekfeature/02.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">RA</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/weekfeature/03.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">SP</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="http://www.athensoft.com" target="_blank"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            
            <div class="gap gap-small"></div>
            
            <h1 class="mb20">Monthly Stars <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/monthstar/01.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/monthstar/02.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">RA</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/monthstar/03.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">SP</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="http://www.athensoft.com" target="_blank"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            <div class="gap"></div>
            
            
            <div class="gap gap-small"></div>
            
            <h1 class="mb20">Popular in Shopwise <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/shopwise/01.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/shopwise/02.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">RA</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/shopwise/03.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">SP</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="http://www.athensoft.com" target="_blank"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            
            
            <div class="gap gap-small"></div>
            
            <h1 class="mb20">Popular in Food and drink <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/fooddrink/01.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/fooddrink/02.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">RA</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/fooddrink/03.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">SP</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="http://www.athensoft.com" target="_blank"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            
           <div class="gap gap-small"></div>
            
            <h1 class="mb20">Popular in Life Service <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/lifeservice/01.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/lifeservice/02.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">RA</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/lifeservice/03.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">SP</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="http://www.athensoft.com" target="_blank"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            
            <div class="gap gap-small"></div>
            
            <h1 class="mb20">Popular in Professional Service <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/proservice/01.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/proservice/02.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">RA</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/proservice/03.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">SP</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="http://www.athensoft.com" target="_blank"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            
            <div class="gap gap-small"></div>
            
            <h1 class="mb20">Popular in Educational Service <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/edu/01.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/edu/02.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">RA</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/edu/03.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">SP</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="http://www.athensoft.com" target="_blank"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            
            <div class="gap gap-small"></div>
            
            <h1 class="mb20">Popular in Tourism Service <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/transport/01.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/transport/02.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">RA</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/transport/03.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">SP</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="http://www.athensoft.com" target="_blank"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            
            <div class="gap gap-small"></div>
            
            <h1 class="mb20">Popular in Sport, Recreation and Entertainment <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/sport/01.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/sport/02.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">RA</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/sport/03.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">SP</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="http://www.athensoft.com" target="_blank"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            
            <div class="gap gap-small"></div>
            
            <h1 class="mb20">Popular in Non-profit Organization, Community <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/nonprofit/01.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">CH</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/nonprofit/02.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">RA</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-4">
                        <div class="product-thumb">
                            <header class="product-header">
                                <img src="images/nonprofit/03.jpg" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                            </header>
                            <div class="product-inner">
                                <ul class="icon-group icon-list-rating" title="5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                </ul>
                                <h5 class="product-title">Your Business Name</h5>
                                <p class="product-desciption">One sentence with less than 15 words to describe your business</p>
                                <div class="product-meta">
                                    <ul class="product-price-list">
                                    	<i class="fa fa-map-marker"></i> Montreal &nbsp;&nbsp;
                                        <li><span class="product-price">FR</span></li>
                                        <li><span class="product-price">EN</span></li>
                                        <li><span class="product-price">SP</span></li>
                                        <!-- 
                                        <li><span class="product-old-price">$195</span></li>
                                        <li><span class="product-save">Save 42%</span></li>
                                         -->
                                    </ul>
                                    <ul class="product-actions-list">
                                        <li><a class="btn btn-sm" href="http://www.athensoft.com" target="_blank"><i class="fa fa-home"></i> Home</a>
                                        </li>
                                        <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            
            <div class="gap"></div>
        </div>


        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->



		<!-- Main footer -->
		<jsp:include page="footer_inc.jsp"></jsp:include>
		<!-- EMDS Main footer -->




        <!-- Scripts queries -->
        <script src="js/jquery.js"></script>
        <script src="js/boostrap.min.js"></script>
        <script src="js/countdown.min.js"></script>
        <script src="js/flexnav.min.js"></script>
        <script src="js/magnific.js"></script>
        <script src="js/tweet.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
        <script src="js/fitvids.min.js"></script>
        <script src="js/mail.min.js"></script>
        <script src="js/ionrangeslider.js"></script>
        <script src="js/icheck.js"></script>
        <script src="js/fotorama.js"></script>
        <script src="js/card-payment.js"></script>
        <script src="js/owl-carousel.js"></script>
        <script src="js/masonry.js"></script>
        <script src="js/nicescroll.js"></script>

        <!-- Custom scripts -->
        <script src="js/custom.js"></script>
    </div>
</body>

</html>
