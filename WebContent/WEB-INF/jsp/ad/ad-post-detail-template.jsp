<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE HTML>
<html>

<head>
    <title>Adogo - Ad Post Detail</title>
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
    <link rel="stylesheet" href="/css/boostrap.css">
    <!-- Font Awesome styles (icons) -->
    <link rel="stylesheet" href="/css/font_awesome.css">
    <!-- Main Template styles -->
    <link rel="stylesheet" href="/css/styles.css">
    <!-- IE 8 Fallback -->
    <!--[if lt IE 9]>
	<link rel="stylesheet" type="text/css" href="/css/ie.css" />
<![endif]-->

    <!-- Your custom styles (blank file) -->
    <link rel="stylesheet" href="/css/mystyles.css">
    
    <!-- eventNewsCountdownStyles -->
    <link rel="stylesheet" href="/css/eventNewsCountdownStyles.css">


</head>

<body class="boxed bg-cover" style="background-image: url(/img/backgrounds/s7.jpg)">

    <div class="global-wrap">

    <!-- //////////////////////////////////
	//////////////MAIN HEADER///////////// 
	////////////////////////////////////-->
        <!-- Main header -->
		<jsp:include page="../inc/nav_inc.jsp"></jsp:include>
		<!-- EMDS Main header -->
        
        <!-- LOGIN REGISTER LINKS CONTENT -->
        <jsp:include page="../inc/login_inc.jsp"></jsp:include>
        <!-- END LOGIN REGISTER LINKS CONTENT -->

        <!-- SEARCH AREA -->
        <jsp:include page="../inc/search_inc.jsp"></jsp:include>
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
                        <ul class="nav nav-tabs nav-stacked nav-coupon-category">
                            <li class="active"><a href="#"><i class="fa fa-ticket"></i>SHOPWISE</a></li>
                            <li><a href="#"><i class="fa fa-cutlery"></i>Clothing, Shoes</a></li>
                            <li><a href="#"><i class="fa fa-calendar"></i>Watch, Glasses</a></li>
                            <li><a href="#"><i class="fa fa-calendar"></i>Jewelry</a></li>
                            <li><a href="#"><i class="fa fa-female"></i>Beauty</a></li>
                            <li><a href="#"><i class="fa fa-female"></i>Personal care</a></li>
                            <li><a href="#"><i class="fa fa-bolt"></i>Smartphone, Camera</a></li>
                            <li><a href="#"><i class="fa fa-bolt"></i>Digital, Computer</a></li>
                            <li><a href="#"><i class="fa fa-bolt"></i>Office supplies</a></li>
                            <li><a href="#"><i class="fa fa-headphones"></i>Mommy &amp; Toyes</a></li>
                            <li><a href="#"><i class="fa fa-image"></i>Food &amp; drink</a></li>
                            <li><a href="#"><i class="fa fa-umbrella"></i>House &amp; Garden</a></li>
                            <li><a href="#"><i class="fa fa-plane"></i>Pet</a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i>Auto, Motor, Bike</a></li>
                            <li><a href="#"><i class="fa fa-home"></i>Health care</a></li>
                            <li><a href="#"><i class="fa fa-plane"></i>Book, eReader</a></li>
                            <li><a href="#"><i class="fa fa-plane"></i>Movie, Music, Game</a></li>
                            <li><a href="#"><i class="fa fa-plane"></i>Art,  Antique</a></li>
                            <li><a href="#"><i class="fa fa-plane"></i>Sports, Fitness</a></li>
                            <li><a href="#"><i class="fa fa-plane"></i>Outdoor, Recreation</a></li>
                        </ul>
                        <div class="sidebar-box">
                            <h5>Filter By Price</h5>
                            <input type="text" id="price-slider">
                        </div>
                        <div class="sidebar-box">
                            <h5>Product Feature</h5>
                            <ul class="checkbox-list">
                                <li class="checkbox">
                                    <label>
                                        <input type="checkbox" class="i-check">On Sale</label>
                                </li>
                                <li class="checkbox">
                                    <label>
                                        <input type="checkbox" class="i-check">New</label>
                                </li>
                                <li class="checkbox">
                                    <label>
                                        <input type="checkbox" class="i-check">Ending Soon</label>
                                </li>
                                <li class="checkbox">
                                    <label>
                                        <input type="checkbox" class="i-check">High Rating</label>
                                </li>
                                <li class="checkbox">
                                    <label>
                                        <input type="checkbox" class="i-check">Free Shipping</label>
                                </li>
                            </ul>
                        </div>
                        <div class="sidebar-box">
                            <h5>Recent Viewed</h5>
                            <ul class="thumb-list">
                                <li>
                                    <a href="#">
                                        <img src="/img/70x70.png" alt="Image Alternative text" title="Urbex Esch/Lux with Laney and Laaaaag" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Best Camera</a></h5>
                                        <p class="thumb-list-item-price">$227</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/img/70x70.png" alt="Image Alternative text" title="AMaze" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">New Glass Collection</a></h5>
                                        <p class="thumb-list-item-price">$278</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/img/70x70.png" alt="Image Alternative text" title="waipio valley" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Awesome Vacation</a></h5>
                                        <p class="thumb-list-item-price">$475</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="sidebar-box">
                            <h5>Popular</h5>
                            <ul class="thumb-list">
                                <li>
                                    <a href="#">
                                        <img src="/img/70x70.png" alt="Image Alternative text" title="Food is Pride" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Best Pasta</a></h5>
                                        <p class="thumb-list-item-price">$203</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/img/70x70.png" alt="Image Alternative text" title="Old No7" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Jack Daniels Huge Pack</a></h5>
                                        <p class="thumb-list-item-price">$499</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/img/70x70.png" alt="Image Alternative text" title="The Hidden Power of the Heart" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Beach Holidays</a></h5>
                                        <p class="thumb-list-item-price">$460</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </aside>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="product-sort">
                                <span class="product-sort-selected">sort by <b>Price</b></span>
                                <a href="#" class="product-sort-order fa fa-angle-down"></a>
                                <ul>
                                    <li><a href="#">sort by Name</a>
                                    </li>
                                    <li><a href="#">sort by Date</a>
                                    </li>
                                    <li><a href="#">sort by Popularity</a>
                                    </li>
                                    <li><a href="#">sort by Rating</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-2 col-md-offset-7">
                            <div class="product-view pull-right">
                                <a class="fa fa-th-large active" href="#"></a>
                                <a class="fa fa-list" href="category-page-thumbnails-shop-horizontal.html"></a>
                                <a class="fa fa-home" href="#"></a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                    	<!-- BLOG POST -->
	                    <article class="post">
	                        <header class="post-header">
	                            <!-- HOVER IMAGE -->
	                            <a class="hover-img" href="post-sidebar-right.html">
	                                <img src="/img/900x400.png" alt="Image Alternative text" title="4 Strokes of Fun" /><i class="fa fa-link hover-icon"></i>
	                            </a>
	                        </header>
                        <div class="post-inner">
                            <h4 class="post-title"><a href="post-sidebar-right.html">Image Post Type</a></h4>
                            <ul class="post-meta">
                                <li><i class="fa fa-calendar"></i><a href="#">19 August, 2014</a>
                                </li>
                                <li><i class="fa fa-user"></i><a href="#">Olivia Slater</a>
                                </li>
                                <li><i class="fa fa-tags"></i><a href="#">Web</a>, <a href="#">Typography</a>, <a href="#">Design</a>
                                </li>
                                <li><i class="fa fa-comments"></i><a href="#">18 Comments</a>
                                </li>
                            </ul>
                            <p class="post-desciption">Vulputate viverra bibendum laoreet elit nisl felis fermentum sit ridiculus sapien elementum libero sodales volutpat facilisi fusce ornare tempor at donec mollis turpis penatibus etiam hac auctor per est libero senectus dictum inceptos pellentesque cras sagittis imperdiet fermentum luctus nisi libero facilisi semper dignissim faucibus turpis nulla penatibus dictum accumsan</p><a class="btn btn-small btn-primary" href="post-sidebar-right.html">Read More</a>
                        </div>
                    	</article>
                    	
                    	
                    	<!-- <h3>Content Slider</h3>  -->
                        <div class="owl-carousel" id="owl-carousel" data-items="3">
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="Gamer Chick" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Playstation Accessories</h5>
                                        <p class="product-desciption">Metus orci fusce integer ornare egestas montes tortor</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="AMaze" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">New Glass Collection</h5>
                                        <p class="product-desciption">Libero placerat turpis arcu etiam maecenas mi consectetur</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="Urbex Esch/Lux with Laney and Laaaaag" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Best Camera</h5>
                                        <p class="product-desciption">Vestibulum nibh a ridiculus tellus luctus ipsum erat</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="Food is Pride" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Best Pasta</h5>
                                        <p class="product-desciption">Senectus consectetur hendrerit euismod dapibus </p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="waipio valley" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Awesome Vacation</h5>
                                        <p class="product-desciption">Quisque ac quis hac ut porttitor tempus fringilla</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="Green Furniture" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Green Furniture Pack</h5>
                                        <p class="product-desciption">Molestie ad ultrices proin turpis lacinia venenatis rhoncus</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="Old No7" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Jack Daniels Huge Pack</h5>
                                        <p class="product-desciption">Tortor tortor nisl cursus sodales torquent varius convallis</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="Our Coffee miss u" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Coffe Shop Discount</h5>
                                        <p class="product-desciption">Nibh imperdiet nascetur inceptos maecenas suscipit natoque diam</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="Ana 29" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Hot Summer Collection</h5>
                                        <p class="product-desciption">Iaculis enim morbi dictumst nibh aptent nisi ornare</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="iPhone 5 iPad mini iPad 3" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Electronics Big Deal</h5>
                                        <p class="product-desciption">Volutpat eget fames etiam turpis elit ridiculus facilisis</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="The Hidden Power of the Heart" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Beach Holidays</h5>
                                        <p class="product-desciption">Dis auctor netus lacinia dignissim dictum sodales tempus</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="The Violin" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Violin Lessons</h5>
                                        <p class="product-desciption">Proin mollis cras id diam non nascetur cubilia</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="Hot mixer" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Modern DJ Set</h5>
                                        <p class="product-desciption">Hac hendrerit praesent tincidunt nullam etiam placerat sociis</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="cascada" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Adventure in Woods</h5>
                                        <p class="product-desciption">Senectus faucibus at porta euismod varius vel porttitor</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="the best mode of transport here in maldives" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Finshing in Maldives</h5>
                                        <p class="product-desciption">Tellus conubia varius nascetur turpis gravida consequat massa</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Lovely Ice Cream Spoons</h5>
                                        <p class="product-desciption">Enim nam blandit elementum elit elementum ut viverra</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="Aspen Lounge Chair" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Aspen Lounge Chair</h5>
                                        <p class="product-desciption">Pretium hac erat litora aliquet id cum torquent</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="product-thumb">
                                    <header class="product-header">
                                        <img src="/img/800x600.png" alt="Image Alternative text" title="a turn" />
                                    </header>
                                    <div class="product-inner">
                                        <h5 class="product-title">Diving with Sharks</h5>
                                        <p class="product-desciption">Aenean et dolor vulputate aliquet mattis mattis viverra</p>
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                    
                    <div class="gap"></div>
                    
                    <!-- BLOG POST -->
                    <article class="post">
                        <header class="post-header">
                            <iframe src="//www.youtube.com/embed/9bZkp7q19f0" frameborder="0" allowfullscreen></iframe>
                        </header>
                        <!-- 
                        <div class="post-inner">
                            <h4 class="post-title"><a href="post-sidebar-right.html">Youtube Post Type</a></h4>
                            <ul class="post-meta">
                                <li><i class="fa fa-calendar"></i><a href="#">18 May, 2014</a>
                                </li>
                                <li><i class="fa fa-user"></i><a href="#">John Mathis</a>
                                </li>
                                <li><i class="fa fa-tags"></i><a href="#">Travel</a>, <a href="#">Typography</a>, <a href="#">Lifestyle</a>
                                </li>
                                <li><i class="fa fa-comments"></i><a href="#">6 Comments</a>
                                </li>
                            </ul>
                            <p class="post-desciption">Nisl suscipit torquent nunc nec aliquam scelerisque venenatis turpis cursus eleifend viverra semper condimentum cursus facilisi ad dictumst at volutpat proin eros tristique parturient phasellus per cubilia imperdiet bibendum enim quis rutrum ornare hac dui varius non sociis lorem lectus pharetra accumsan adipiscing imperdiet at purus semper himenaeos malesuada iaculis</p><a class="btn btn-small btn-primary" href="post-sidebar-right.html">Read More</a>
                        </div> -->
                    </article>  
                    
                    
                    <!-- BLOG POST -->
                    <article class="post">
                        <header class="post-header">
                            <iframe width="100%" height="150" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/150793348&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=false"></iframe>
                        </header>
                        <!-- 
                        <div class="post-inner">
                            <h4 class="post-title"><a href="post-sidebar-right.html">Audio Post Type</a></h4>
                            <ul class="post-meta">
                                <li><i class="fa fa-calendar"></i><a href="#">20 July, 2013</a>
                                </li>
                                <li><i class="fa fa-user"></i><a href="#">Blake Abraham</a>
                                </li>
                                <li><i class="fa fa-tags"></i><a href="#">Web</a>, <a href="#">Travel</a>, <a href="#">Lifestyle</a>
                                </li>
                                <li><i class="fa fa-comments"></i><a href="#">15 Comments</a>
                                </li>
                            </ul>
                            <p class="post-desciption">Luctus rutrum varius congue luctus cum ultricies pulvinar sem auctor curabitur ipsum dictumst tincidunt commodo dui senectus leo proin pulvinar lectus blandit metus bibendum eros pellentesque lacus sociosqu ac malesuada urna condimentum tempus ligula vulputate litora nulla tellus blandit ad laoreet netus diam hac amet vel proin neque penatibus sem</p><a class="btn btn-small btn-primary" href="post-sidebar-right.html">Read More</a>
                        </div> -->
                    </article>  
                                       
                    <ul class="pagination">
                        <li class="prev disabled">
                            <a href="#"></a>
                        </li>
                        <li class="active"><a href="#">1</a>
                        </li>
                        <li><a href="#">2</a>
                        </li>
                        <li><a href="#">3</a>
                        </li>
                        <li><a href="#">4</a>
                        </li>
                        <li><a href="#">5</a>
                        </li>
                        <li class="next">
                            <a href="#"></a>
                        </li>
                    </ul>
                    <div class="gap"></div>
                </div>
            </div>

        </div>


        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->



        <!-- //////////////////////////////////
	//////////////MAIN FOOTER////////////// 
	////////////////////////////////////-->
		<!-- Main footer -->
		<jsp:include page="../inc/footer_inc.jsp"></jsp:include>
		<!-- EMDS Main footer -->
        <!-- //////////////////////////////////
	//////////////END MAIN  FOOTER///////// 
	////////////////////////////////////-->



        <!-- Scripts queries -->
        <script src="/js/jquery.js"></script>
        <script src="/js/boostrap.min.js"></script>
        <!-- <script src="/js/countdown.min.js"></script>  -->
        <script src="/js/flexnav.min.js"></script>
        <script src="/js/magnific.js"></script>
        <script src="/js/tweet.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
        <script src="/js/fitvids.min.js"></script>
        <script src="/js/mail.min.js"></script>
        <script src="/js/ionrangeslider.js"></script>
        <script src="/js/icheck.js"></script>
        <script src="/js/fotorama.js"></script>
        <script src="/js/card-payment.js"></script>
        <script src="/js/owl-carousel.js"></script>
        <script src="/js/masonry.js"></script>
        <script src="/js/nicescroll.js"></script>

        <!-- Custom scripts -->
        <script src="/js/custom.js"></script>
        <script src="/js/adogo/timer/countdown.js"></script>
        <script src="/js/adogo/timer/test.js"></script>
        
        
    </div>
</body>

</html>
