<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE HTML>
<html>

<head>
    <title>Adogo - Life Services</title>
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
	<link rel="stylesheet" type="text/css" href="css/ie.css" />
<![endif]-->

    <!-- Your custom styles (blank file) -->
    <link rel="stylesheet" href="/css/mystyles.css">


</head>

<body class="boxed bg-cover" style="background-image: url(/img/backgrounds/flowers.jpg)">

    <div class="global-wrap">

    <!-- //////////////////////////////////
	//////////////MAIN HEADER///////////// 
	////////////////////////////////////-->
        <!-- Main header -->
		<jsp:include page="../../nav_inc.jsp"></jsp:include>
		<!-- EMDS Main header -->
        
        <!-- LOGIN REGISTER LINKS CONTENT -->
        <jsp:include page="login_inc.jsp"></jsp:include>
        <!-- END LOGIN REGISTER LINKS CONTENT -->

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
                        <ul class="nav nav-tabs nav-stacked nav-coupon-category">
                            <li class="active"><a href="#"><i class="fa fa-ticket"></i>Life Services</a></li>
                            <li><a href="#"><i class="fa fa-calendar"></i>Beauty &amp; Personal Care</a></li>
                            <li><a href="#"><i class="fa fa-cutlery"></i>Hair salon</a></li>
                            <li><a href="#"><i class="fa fa-female"></i>Health Care</a></li>                            
                            <li><a href="#"><i class="fa fa-umbrella"></i>House &amp; Garden</a></li>
                            <li><a href="#"><i class="fa fa-umbrella"></i>Home utilities</a></li>
                            <li><a href="#"><i class="fa fa-umbrella"></i>Car, Motor &amp; Bike</a></li>
                            <li><a href="#"><i class="fa fa-bolt"></i>Wedding</a></li>
                            <li><a href="#"><i class="fa fa-plane"></i>Mommy &amp; Baby</a></li>
                            <li><a href="#"><i class="fa fa-plane"></i>Kid &amp; Family</a></li>
                            <li><a href="#"><i class="fa fa-plane"></i>Pet</a></li>
                            <li><a href="#"><i class="fa fa-headphones"></i>Funeral</a></li>
                            
                            
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
                            </div>
                        </div>
                    </div>
                    
                   
                    
                    
                    <div class="row row-wrap">
                    	 <c:forEach var="biz" items="${bizList}">
                    		<div class="col-md-4">
                            <div class="product-thumb">
                                <header class="product-header">
                                    <img src="/img/800x600.png" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
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
                                    <h5 class="product-title">${biz.bizName}</h5>
                                    <p class="product-desciption">${biz.bizDesc}</p>
                                    <div class="product-meta">                                        
                                    	<p class="product-location">
                                            	<i class="fa fa-map-marker"></i> ${biz.locationName}&nbsp;&nbsp;
                                            	<span class="product-price"> FR</span>
                                            	<span class="product-price"> EN</span>
                                            	<span class="product-price"> CN</span>
                                        </p>
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
                    	</c:forEach>
                    
                    
                        <div class="col-md-4">
                            <div class="product-thumb">
                                <header class="product-header">
                                    <img src="/img/800x600.png" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
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
                                    <h5 class="product-title">Your business title</h5>
                                    <p class="product-desciption">Erat nunc adipiscing enim inceptos posuere pellentesque egestas</p>
                                    <div class="product-meta">                                        
                                        <ul class="product-actions-list">
                                            <li><a class="btn btn-sm" href="#"><i class="fa fa-home"></i> Home</a>
                                            </li>
                                            <li><a class="btn btn-sm"><i class="fa fa-bars"></i> Profile</a>
                                            </li>
                                        </ul>
                                        <p class="product-location">
                                            	<i class="fa fa-map-marker"></i> Your location&nbsp;&nbsp;
                                            	<span class="product-price"> FR</span>
                                            	<span class="product-price"> EN</span>
                                            	<span class="product-price"> CN</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-thumb">
                                <header class="product-header">
                                    <img src="/img/800x600.png" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
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
                                    <h5 class="product-title">Your business title</h5>
                                    <p class="product-desciption">word word word word word word word word word word word word</p>
                                    <div class="product-meta">                                        
                                        <p class="product-location">
                                            	<i class="fa fa-map-marker"></i> Your location&nbsp;&nbsp;
                                            	<span class="product-price"> FR</span>
                                            	<span class="product-price"> EN</span>
                                            	<span class="product-price"> CN</span>
                                        </p>
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
                                    <img src="/img/800x600.png" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
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
                                    <h5 class="product-title">Informatique Athensoft</h5>
                                    <p class="product-desciption">Professional e-commerce and Internet service provider</p>
                                    <div class="product-meta">                                        
                                        <p class="product-location">
                                            	<i class="fa fa-map-marker"></i> Montreal QC&nbsp;&nbsp;
                                            	<span class="product-price"> FR</span>
                                            	<span class="product-price"> EN</span>
                                        </p>
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
                        
                        
                    </div>
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
		<jsp:include page="../../footer_inc.jsp"></jsp:include>
		<!-- EMDS Main footer -->
        <!-- //////////////////////////////////
	//////////////END MAIN  FOOTER///////// 
	////////////////////////////////////-->



        <!-- Scripts queries -->
        <script src="/js/jquery.js"></script>
        <script src="/js/boostrap.min.js"></script>
        <script src="/js/countdown.min.js"></script>
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
    </div>
</body>

</html>
