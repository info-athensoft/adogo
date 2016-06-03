<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="about1" value="Adogo 是一个新概念的广告平台，一个B2C和B2B无疆界的综合市场，一个生活和生意的生态圈。"/>
<c:set var="about2" value="Adogo 为所有浏览者提供了一个一站式获取提供产品和服务的商家信息的搜索引擎。
浏览者可以有目的性地找到想要的商家，取得商家基本信息和动态，快速比较筛选，确定是否联系。浏览者亦可以探索、发现、搜藏、分享
有兴趣的商家以便将来不时之需。 浏览者亦可以成为商家。"/>
<c:set var="about3" value="Adogo 为所有商家提供了一个新的开放式广告投放渠道。支持发布静态信息，让消费者
和潜在伙伴了解基本信息。支持链接官方网站，展现现商业动态、发布活动等。同时向没有网站或者想拥有精美广告网页的商家提供提供制作服务。"/>
<c:set var="about4" value="Adogo 是一个集广告发布、制作、推广、互动和培训为一体的创新型商业信息服务模式；融合商业、广告页、互联网技术、
移动互联网技术、电子商务、人工智能、大数据等多项科技的新一代广告平台。发现客户市场、发现商家、发现伙伴、发现商机、发现更多可能性尽在ADOGO，欢迎您的加盟！"/>
<!DOCTYPE HTML>
<html>

<head>
    <title>Adogo - About</title>
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


</head>

<body class="boxed bg-cover" style="background-image: url(/img/backgrounds/s7.jpg)">

    <div class="global-wrap">

    <!-- //////////////////////////////////
	//////////////MAIN HEADER///////////// 
	////////////////////////////////////-->
        <!-- Main header -->
		<jsp:include page="../../nav_inc.jsp"></jsp:include>
		<!-- EMDS Main header -->
        
        <!-- LOGIN REGISTER LINKS CONTENT -->
        <jsp:include page="../../login_inc.jsp"></jsp:include>
        <!-- END LOGIN REGISTER LINKS CONTENT -->

        <!-- SEARCH AREA -->
        <!-- 
        <jsp:include page="search_inc.jsp"></jsp:include>
         -->
        <!-- END SEARCH AREA -->

        <div class="gap"></div>


        <!-- //////////////////////////////////
	//////////////END MAIN HEADER////////// 
	////////////////////////////////////-->


        <!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->

	<div class="container">
            <div class="row row-wrap">
                <div class="col-md-8">
                    <!-- START BOOTSTRAP CAROUSEL -->
                    <div id="my-carousel" class="carousel slide">
                        <div class="carousel-inner">
                            <div class="active item">
                                <img src="/img/960x540.png" alt="Image Alternative text" title="cascada" />
                            </div>
                            <div class="item">
                                <img src="/img/960x540.png" alt="Image Alternative text" title="waipio valley" />
                            </div>
                            <div class="item">
                                <img src="/img/960x540.png" alt="Image Alternative text" title="the best mode of transport here in maldives" />
                            </div>
                        </div>
                        <a class="carousel-control left" href="#my-carousel" data-slide="prev"></a>
                        <a class="carousel-control right" href="#my-carousel" data-slide="next"></a>
                    </div>
                    <!-- END BOOTSTRAP CAROUSEL -->
                </div>
                <div class="col-md-4">
                    <h3>关于 Adogo</h3>
                    <p><c:out value="${about1}"/></p>
                    <p><c:out value="${about2}"/></p>
                    <p><c:out value="${about3}"/></p>
                    <p><c:out value="${about4}"/></p>
                </div>
            </div>
            <div class="gap gap-small"></div>
            <div class="row row-wrap">
                <div class="col-md-4">
                    <h3>Story</h3>
                    <p>Cras rhoncus vitae cras natoque nec pharetra praesent vitae rhoncus tincidunt euismod faucibus ut fusce dis ante dapibus eleifend eu cursus at fames torquent consectetur praesent quisque taciti tempus pretium feugiat montes ultricies dapibus duis</p>
                </div>
                <div class="col-md-4">
                    <h3>Mission</h3>
                    <p>Risus duis parturient curae turpis eget eros habitasse risus ultricies nisl mollis proin ridiculus quisque ultricies nostra purus feugiat egestas rhoncus faucibus integer per aliquet laoreet nec vestibulum rhoncus netus vehicula gravida sapien pulvinar commodo</p>
                </div>
                <div class="col-md-4">
                    <h3>Vision</h3>
                    <p>Mauris lorem hac cras porttitor orci ipsum orci nostra orci iaculis pretium maecenas fermentum donec venenatis adipiscing adipiscing id litora leo netus taciti sed maecenas hendrerit conubia class gravida dignissim cubilia ultricies quam ipsum himenaeos</p>
                </div>
            </div>
            <div class="gap gap-small"></div>
            <div class="row row-wrap">
                <div class="col-md-3">
                    <h3>Behind the Scenes</h3>
                    <p>Id ultrices tempor rutrum arcu nascetur ultricies sollicitudin arcu ultrices integer montes vitae platea ornare feugiat torquent condimentum mattis dapibus interdum tellus fringilla mollis nulla duis velit ipsum consequat suscipit primis enim a accumsan magna</p>
                </div>
                <div class="col-md-9">
                    <div class="row row-no-gutter " id="popup-gallery">
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="4 Strokes of Fun" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="new york at an angle" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Workspace" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Hot mixer" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Andrea" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Happy Bokeh Day" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Sleeping" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Going out tonight" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="The Hidden Power of the Heart" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Me with the Uke" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="The Big Showoff-Take 2" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <!-- HOVER IMAGE -->
                            <a class="hover-img popup-gallery-image" href="img/800x600.png" data-effect="mfp-zoom-out">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Playstation controller" /><i class="fa fa-resize-full hover-icon"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="gap gap-small"></div>
            <div class="row row-wrap">
                <div class="col-md-3">
                    <h3>Meet The Team</h3>
                    <p>Adipiscing suscipit inceptos netus dolor risus eleifend suspendisse quam hac elementum parturient cubilia porttitor odio sem habitant in cras phasellus sit metus vestibulum condimentum nam platea sociosqu justo ac vulputate</p>
                    <div class="gap gap-small"></div>
                    <h4>Want to Join Our Team?</h4>
                    <p>Vivamus luctus cubilia adipiscing commodo nulla lacinia taciti justo platea</p>
                    <a href="#" class="btn btn-primary">Join Team</a>
                </div>
                <div class="col-md-9">
                    <div class="row row-wrap">
                        <div class="col-md-4">
                            <div class="team-member">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="AMaze" />
                                <h4>Blake Hardacre</h4>
                                <p class="team-member-position">CEO</p>
                                <ul class="team-member-social">
                                    <li>
                                        <a class="fa fa-twitter" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-behance" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-git" href="#"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="team-member">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="AMaze" />
                                <h4>Blake Hardacre</h4>
                                <p class="team-member-position">CEO</p>
                                <ul class="team-member-social">
                                    <li>
                                        <a class="fa fa-twitter" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-behance" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-git" href="#"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="team-member">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Spidy" />
                                <h4>Joseph Watson</h4>
                                <p class="team-member-position">Designer</p>
                                <ul class="team-member-social">
                                    <li>
                                        <a class="fa fa-twitter" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-google-plus" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-behance" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-linkedin" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-dribbble" href="#"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="team-member">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Sevenly Shirts - June 2012" />
                                <h4>Elizabeth Wallace</h4>
                                <p class="team-member-position">Team Lead</p>
                                <ul class="team-member-social">
                                    <li>
                                        <a class="fa fa-pinterest" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-linkedin" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-google-plus" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-twitter" href="#"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="team-member">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Good job" />
                                <h4>Brandon Burgess</h4>
                                <p class="team-member-position">Manager</p>
                                <ul class="team-member-social">
                                    <li>
                                        <a class="fa fa-git" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-pinterest" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-google-plus" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-twitter" href="#"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="team-member">
                                <img src="/img/800x600.png" alt="Image Alternative text" title="Flare lens flare" />
                                <h4>John Mathis</h4>
                                <p class="team-member-position">Team Lead</p>
                                <ul class="team-member-social">
                                    <li>
                                        <a class="fa fa-instagram" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-twitter" href="#"></a>
                                    </li>
                                    <li>
                                        <a class="fa fa-facebook" href="#"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
            <div class="gap gap-small"></div>
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
