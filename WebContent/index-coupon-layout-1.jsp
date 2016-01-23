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
                        <h3 class="mb20">I am Looking For</h3>
                        <ul class="nav nav-tabs nav-stacked nav-coupon-category nav-coupon-category-left">
                            <li><a href="#"><i class="fa fa-cutlery"></i>Food & Drink<span>50</span></a>
                            </li>
                            <li><a href="#"><i class="fa fa-calendar"></i>Events<span>49</span></a>
                            </li>
                            <li><a href="#"><i class="fa fa-female"></i>Beauty<span>37</span></a>
                            </li>
                            <li><a href="#"><i class="fa fa-bolt"></i>Fitness<span>36</span></a>
                            </li>
                            <li><a href="#"><i class="fa fa-headphones"></i>Electronics<span>48</span></a>
                            </li>
                            <li><a href="#"><i class="fa fa-image"></i>Furniture<span>31</span></a>
                            </li>
                            <li><a href="#"><i class="fa fa-umbrella"></i>Fashion<span>40</span></a>
                            </li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i>Shopping<span>33</span></a>
                            </li>
                            <li><a href="#"><i class="fa fa-home"></i>Home & Graden<span>44</span></a>
                            </li>
                            <li><a href="#"><i class="fa fa-plane"></i>Travel<span>38</span></a>
                            </li>
                        </ul>
                    </aside>
                </div>
                <div class="col-md-9">
                    <h1 class="mb20">Weekly Featured <small><a href="#">View All</a></small></h1>
                    <div class="row row-wrap">
                        <a class="col-md-4" href="#">
                            <div class="product-thumb">
                                <header class="product-header">
                                    <img src="img/800x600.png" alt="Image Alternative text" title="the best mode of transport here in maldives" />
                                </header>
                                <div class="product-inner">
                                    <h5 class="product-title">Finshing in Maldives</h5>
                                    <p class="product-desciption">Habitant class blandit arcu parturient at litora per</p>
                                    <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 4 days 32 h remaining</span>
                                        <ul class="product-price-list">
                                            <li><span class="product-price">$48</span>
                                            </li>
                                            <li><span class="product-old-price">$150</span>
                                            </li>
                                            <li><span class="product-save">Save 32%</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                                </div>
                            </div>
                        </a>
                        <a class="col-md-4" href="#">
                            <div class="product-thumb">
                                <header class="product-header">
                                    <img src="img/800x600.png" alt="Image Alternative text" title="Green Furniture" />
                                </header>
                                <div class="product-inner">
                                    <h5 class="product-title">Green Furniture Pack</h5>
                                    <p class="product-desciption">Habitant class blandit arcu parturient at litora per</p>
                                    <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 6 days 8 h remaining</span>
                                        <ul class="product-price-list">
                                            <li><span class="product-price">$128</span>
                                            </li>
                                            <li><span class="product-old-price">$279</span>
                                            </li>
                                            <li><span class="product-save">Save 46%</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                                </div>
                            </div>
                        </a>
                        <a class="col-md-4" href="#">
                            <div class="product-thumb">
                                <header class="product-header">
                                    <img src="img/800x600.png" alt="Image Alternative text" title="Our Coffee miss u" />
                                </header>
                                <div class="product-inner">
                                    <h5 class="product-title">Coffe Shop Discount</h5>
                                    <p class="product-desciption">Habitant class blandit arcu parturient at litora per</p>
                                    <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i>  33 h remaining</span>
                                        <ul class="product-price-list">
                                            <li><span class="product-price">$83</span>
                                            </li>
                                            <li><span class="product-old-price">$130</span>
                                            </li>
                                            <li><span class="product-save">Save 64%</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="gap gap-small"></div>
            <h1 class="mb20">New Deals <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <a class="col-md-4" href="#">
                    <div class="product-thumb">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="AMaze" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">New Glass Collection</h5>
                            <p class="product-desciption">Nulla egestas nam posuere habitant hac lacinia cubilia</p>
                            <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 10 days 23 h remaining</span>
                                <ul class="product-price-list">
                                    <li><span class="product-price">$62</span>
                                    </li>
                                    <li><span class="product-old-price">$140</span>
                                    </li>
                                    <li><span class="product-save">Save 44%</span>
                                    </li>
                                </ul>
                            </div>
                            <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                        </div>
                    </div>
                </a>
                <a class="col-md-4" href="#">
                    <div class="product-thumb">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="Gamer Chick" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Playstation Accessories</h5>
                            <p class="product-desciption">Nulla egestas nam posuere habitant hac lacinia cubilia</p>
                            <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 6 days 27 h remaining</span>
                                <ul class="product-price-list">
                                    <li><span class="product-price">$61</span>
                                    </li>
                                    <li><span class="product-old-price">$127</span>
                                    </li>
                                    <li><span class="product-save">Save 48%</span>
                                    </li>
                                </ul>
                            </div>
                            <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                        </div>
                    </div>
                </a>
                <a class="col-md-4" href="#">
                    <div class="product-thumb">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="The Violin" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Violin Lessons</h5>
                            <p class="product-desciption">Nulla egestas nam posuere habitant hac lacinia cubilia</p>
                            <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 2 days 36 h remaining</span>
                                <ul class="product-price-list">
                                    <li><span class="product-price">$182</span>
                                    </li>
                                    <li><span class="product-old-price">$264</span>
                                    </li>
                                    <li><span class="product-save">Save 69%</span>
                                    </li>
                                </ul>
                            </div>
                            <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="row row-wrap">
                <a class="col-md-3" href="#">
                    <div class="product-thumb">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="Food is Pride" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Best Pasta</h5>
                            <p class="product-desciption">Montes parturient eget sodales elit justo senectus massa</p>
                            <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 1 day 50 h remaining</span>
                                <ul class="product-price-list">
                                    <li><span class="product-price">$108</span>
                                    </li>
                                    <li><span class="product-old-price">$235</span>
                                    </li>
                                    <li><span class="product-save">Save 46%</span>
                                    </li>
                                </ul>
                            </div>
                            <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                        </div>
                    </div>
                </a>
                <a class="col-md-3" href="#">
                    <div class="product-thumb">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="The Hidden Power of the Heart" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Beach Holidays</h5>
                            <p class="product-desciption">Montes parturient eget sodales elit justo senectus massa</p>
                            <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 1 day 26 h remaining</span>
                                <ul class="product-price-list">
                                    <li><span class="product-price">$163</span>
                                    </li>
                                    <li><span class="product-old-price">$251</span>
                                    </li>
                                    <li><span class="product-save">Save 65%</span>
                                    </li>
                                </ul>
                            </div>
                            <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                        </div>
                    </div>
                </a>
                <a class="col-md-3" href="#">
                    <div class="product-thumb">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="iPhone 5 iPad mini iPad 3" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Electronics Big Deal</h5>
                            <p class="product-desciption">Montes parturient eget sodales elit justo senectus massa</p>
                            <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 2 days 27 h remaining</span>
                                <ul class="product-price-list">
                                    <li><span class="product-price">$115</span>
                                    </li>
                                    <li><span class="product-old-price">$201</span>
                                    </li>
                                    <li><span class="product-save">Save 57%</span>
                                    </li>
                                </ul>
                            </div>
                            <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                        </div>
                    </div>
                </a>
                <a class="col-md-3" href="#">
                    <div class="product-thumb">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="Old No7" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Jack Daniels Huge Pack</h5>
                            <p class="product-desciption">Montes parturient eget sodales elit justo senectus massa</p>
                            <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i>  54 h remaining</span>
                                <ul class="product-price-list">
                                    <li><span class="product-price">$96</span>
                                    </li>
                                    <li><span class="product-old-price">$139</span>
                                    </li>
                                    <li><span class="product-save">Save 69%</span>
                                    </li>
                                </ul>
                            </div>
                            <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="gap gap-small"></div>
            <h1 class="mb20">Popular <small><a href="#">View All</a></small></h1>
            <div class="row row-wrap">
                <a class="col-md-4" href="#">
                    <div class="product-thumb">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="Hot mixer" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Modern DJ Set</h5>
                            <p class="product-desciption">Ad himenaeos mus sed inceptos duis mauris magna</p>
                            <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 9 days 6 h remaining</span>
                                <ul class="product-price-list">
                                    <li><span class="product-price">$62</span>
                                    </li>
                                    <li><span class="product-old-price">$156</span>
                                    </li>
                                    <li><span class="product-save">Save 40%</span>
                                    </li>
                                </ul>
                            </div>
                            <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                        </div>
                    </div>
                </a>
                <a class="col-md-4" href="#">
                    <div class="product-thumb">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="My Ice Cream and Your Ice Cream Spoons" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Lovely Ice Cream Spoons</h5>
                            <p class="product-desciption">Ad himenaeos mus sed inceptos duis mauris magna</p>
                            <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 1 day 48 h remaining</span>
                                <ul class="product-price-list">
                                    <li><span class="product-price">$91</span>
                                    </li>
                                    <li><span class="product-old-price">$221</span>
                                    </li>
                                    <li><span class="product-save">Save 41%</span>
                                    </li>
                                </ul>
                            </div>
                            <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                        </div>
                    </div>
                </a>
                <a class="col-md-4" href="#">
                    <div class="product-thumb">
                        <header class="product-header">
                            <img src="img/800x600.png" alt="Image Alternative text" title="waipio valley" />
                        </header>
                        <div class="product-inner">
                            <h5 class="product-title">Awesome Vacation</h5>
                            <p class="product-desciption">Ad himenaeos mus sed inceptos duis mauris magna</p>
                            <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 4 days 33 h remaining</span>
                                <ul class="product-price-list">
                                    <li><span class="product-price">$73</span>
                                    </li>
                                    <li><span class="product-old-price">$235</span>
                                    </li>
                                    <li><span class="product-save">Save 31%</span>
                                    </li>
                                </ul>
                            </div>
                            <p class="product-location"><i class="fa fa-map-marker"></i> Montreal</p>
                        </div>
                    </div>
                </a>
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
