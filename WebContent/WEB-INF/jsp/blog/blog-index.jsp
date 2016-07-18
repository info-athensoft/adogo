<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="title" value="My Profile"/>

<!DOCTYPE HTML>
<html>

<head>
	<!-- page: Index coupon layout 1 -->
    <title>Adogo - Online Branding and Marketing</title>
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
                <div class="col-md-9">
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
                                <li><i class="fa fa-user"></i><a href="#">Dylan Taylor</a>
                                </li>
                                <li><i class="fa fa-tags"></i><a href="#">Typography</a>, <a href="#">Digital</a>
                                </li>
                                <li><i class="fa fa-comments"></i><a href="#">2 Comments</a>
                                </li>
                            </ul>
                            <p class="post-desciption">Cubilia faucibus montes varius iaculis semper eget eget aliquet vehicula sociis varius lorem cursus laoreet euismod metus leo orci vulputate molestie erat mollis etiam gravida nascetur pretium suscipit fames sociosqu facilisi varius enim ante sociis est molestie penatibus lectus aliquet vulputate parturient praesent viverra vivamus maecenas purus felis fermentum conubia</p><a class="btn btn-small btn-primary" href="/blog/post">Read More</a>
                        </div>
                    </article>
                    <!-- BLOG POST -->
                    <article class="post">
                        <header class="post-header">
                            <blockquote>Vitae inceptos nisl posuere praesent ornare ac proin elit porta arcu eget pellentesque quis nisl curae montes montes vivamus volutpat</blockquote>
                        </header>
                        <div class="post-inner">
                            <h4 class="post-title"><a href="post-sidebar-right.html">Quoute Post Type</a></h4>
                            <ul class="post-meta">
                                <li><i class="fa fa-calendar"></i><a href="#">13 August, 2014</a>
                                </li>
                                <li><i class="fa fa-user"></i><a href="#">Sarah Slater</a>
                                </li>
                                <li><i class="fa fa-tags"></i><a href="#">Typography</a>, <a href="#">Lifestyle</a>, <a href="#">Design</a>
                                </li>
                                <li><i class="fa fa-comments"></i><a href="#">3 Comments</a>
                                </li>
                            </ul>
                            <p class="post-desciption">Vulputate euismod aliquam porta non porttitor congue purus maecenas ac ante condimentum dolor ullamcorper dis elit tellus ornare integer convallis auctor urna a eleifend tristique vitae sociosqu metus velit magnis eros lobortis fusce pretium consectetur aliquam nulla himenaeos proin platea ullamcorper pellentesque vitae interdum sem facilisis dapibus pellentesque inceptos metus</p><a class="btn btn-small btn-primary" href="post-sidebar-right.html">Read More</a>
                        </div>
                    </article>
                    <!-- BLOG POST -->
                    <article class="post">
                        <header class="post-header">
                            <div class="fotorama">
                                <img src="img/900x400.png" alt="Image Alternative text" title="4 Strokes of Fun" />
                                <img src="img/900x400.png" alt="Image Alternative text" title="4 Strokes of Fun" />
                                <img src="img/900x400.png" alt="Image Alternative text" title="4 Strokes of Fun" />
                            </div>
                        </header>
                        <div class="post-inner">
                            <h4 class="post-title"><a href="post-sidebar-right.html">Slider Post Type</a></h4>
                            <ul class="post-meta">
                                <li><i class="fa fa-calendar"></i><a href="#">04 August, 2014</a>
                                </li>
                                <li><i class="fa fa-user"></i><a href="#">Frank Mills</a>
                                </li>
                                <li><i class="fa fa-tags"></i><a href="#">Web</a>
                                </li>
                                <li><i class="fa fa-comments"></i><a href="#">19 Comments</a>
                                </li>
                            </ul>
                            <p class="post-desciption">Faucibus morbi sodales ad ac tempor mauris aliquam lectus tempus ultrices aenean velit amet cras egestas inceptos feugiat rhoncus fusce consectetur donec turpis nibh vehicula orci cubilia posuere elementum congue natoque tortor sociis nec sagittis tempor auctor massa tincidunt tempor scelerisque tellus litora nisl hendrerit cubilia nisl eu nisl euismod</p><a class="btn btn-small btn-primary" href="post-sidebar-right.html">Read More</a>
                        </div>
                    </article>
                    <!-- BLOG POST -->
                    <article class="post">
                        <header class="post-header"><a class="post-link" href="#">Google.com</a>
                        </header>
                        <div class="post-inner">
                            <h4 class="post-title"><a href="post-sidebar-right.html">Link Post Type</a></h4>
                            <ul class="post-meta">
                                <li><i class="fa fa-calendar"></i><a href="#">03 July, 2014</a>
                                </li>
                                <li><i class="fa fa-user"></i><a href="#">Brandon Burgess</a>
                                </li>
                                <li><i class="fa fa-tags"></i><a href="#">Travel</a>
                                </li>
                                <li><i class="fa fa-comments"></i><a href="#">10 Comments</a>
                                </li>
                            </ul>
                            <p class="post-desciption">Ipsum sed vulputate duis inceptos aenean lacinia iaculis vivamus non sed arcu enim rhoncus vulputate elit sem duis feugiat in quam dictumst parturient luctus per id faucibus vestibulum parturient aliquam cubilia sociis facilisis suscipit malesuada mollis porttitor arcu egestas aptent ligula iaculis parturient sollicitudin parturient ad odio torquent tincidunt porttitor</p><a class="btn btn-small btn-primary" href="post-sidebar-right.html">Read More</a>
                        </div>
                    </article>
                    <!-- BLOG POST -->
                    <article class="post">
                        <header class="post-header">
                            <iframe src="//www.youtube.com/embed/9bZkp7q19f0" frameborder="0" allowfullscreen></iframe>
                        </header>
                        <div class="post-inner">
                            <h4 class="post-title"><a href="post-sidebar-right.html">Youtube Post Type</a></h4>
                            <ul class="post-meta">
                                <li><i class="fa fa-calendar"></i><a href="#">14 May, 2014</a>
                                </li>
                                <li><i class="fa fa-user"></i><a href="#">Oliver Ross</a>
                                </li>
                                <li><i class="fa fa-tags"></i><a href="#">Travel</a>
                                </li>
                                <li><i class="fa fa-comments"></i><a href="#">18 Comments</a>
                                </li>
                            </ul>
                            <p class="post-desciption">Bibendum rutrum consequat vulputate a netus id penatibus quam facilisi donec eu dictum tempor dis natoque nunc scelerisque leo purus vehicula aliquet mollis mi lorem ante neque cubilia ante sem curae facilisi adipiscing sagittis hendrerit dui elementum vel sapien nostra aliquam ridiculus montes praesent eros dui donec elementum erat purus</p><a class="btn btn-small btn-primary" href="post-sidebar-right.html">Read More</a>
                        </div>
                    </article>
                    <!-- BLOG POST -->
                    <article class="post">
                        <header class="post-header">
                            <iframe src="http://player.vimeo.com/video/94521516" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
                        </header>
                        <div class="post-inner">
                            <h4 class="post-title"><a href="post-sidebar-right.html">Vimeo Post Type</a></h4>
                            <ul class="post-meta">
                                <li><i class="fa fa-calendar"></i><a href="#">27 January, 2014</a>
                                </li>
                                <li><i class="fa fa-user"></i><a href="#">Blake Abraham</a>
                                </li>
                                <li><i class="fa fa-tags"></i><a href="#">Web</a>, <a href="#">Design</a>
                                </li>
                                <li><i class="fa fa-comments"></i><a href="#">4 Comments</a>
                                </li>
                            </ul>
                            <p class="post-desciption">Placerat urna dapibus mauris conubia dictumst sagittis quam ac quisque venenatis eget urna imperdiet aenean lacus vivamus et sociosqu faucibus quis cubilia primis habitant habitant duis morbi massa habitasse donec orci eros taciti fusce sollicitudin natoque luctus fermentum mattis ullamcorper eu imperdiet luctus erat tempor elit class arcu habitant consectetur</p><a class="btn btn-small btn-primary" href="post-sidebar-right.html">Read More</a>
                        </div>
                    </article>
                    <!-- BLOG POST -->
                    <article class="post">
                        <header class="post-header">
                            <iframe width="100%" height="150" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/150793348&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=false"></iframe>
                        </header>
                        <div class="post-inner">
                            <h4 class="post-title"><a href="post-sidebar-right.html">Audio Post Type</a></h4>
                            <ul class="post-meta">
                                <li><i class="fa fa-calendar"></i><a href="#">01 July, 2013</a>
                                </li>
                                <li><i class="fa fa-user"></i><a href="#">Oliver Ross</a>
                                </li>
                                <li><i class="fa fa-tags"></i><a href="#">Travel</a>, <a href="#">Design</a>, <a href="#">Digital</a>
                                </li>
                                <li><i class="fa fa-comments"></i><a href="#">16 Comments</a>
                                </li>
                            </ul>
                            <p class="post-desciption">Ut dapibus dui diam ultricies lacinia parturient dui fusce fames a pharetra metus et hac ridiculus fermentum fames faucibus eget bibendum taciti venenatis eros orci ultricies tortor netus habitant vehicula dui lacus ante turpis massa malesuada bibendum et taciti aenean facilisi accumsan tincidunt praesent adipiscing nibh penatibus scelerisque consequat viverra</p><a class="btn btn-small btn-primary" href="post-sidebar-right.html">Read More</a>
                        </div>
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
                <div class="col-md-3">
                    <aside class="sidebar-right hidden-phone">
                    	
                    	<!-- post button -->
                    	<div>
                            <a href="/blog/post" class="btn btn-primary btn-mega">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I want post&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                            
                        </div>
                        <div><p>&nbsp;&nbsp;&nbsp;</p></div>
                    	
                        <div class="sidebar-box">
                            <h5>Blog Categories</h5>
                            <ul class="icon-list blog-category-list">
                                <li><a href="#"><i class="fa fa-angle-right"></i>Web</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Typography</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Lifestyle</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Digital</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Design</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Travel</a>
                                </li>
                            </ul>
                        </div>


                        <div class="sidebar-box">

                            <h5>Newsletter singup</h5>
                            <form class="sign-up">
                                <input type="text" class="form-control" placeholder="E-mail">
                                <small class="help-block">*We never send spam</small>
                                <input type="submit" class="btn btn-primary" value="Subscribe">
                            </form>
                        </div>


                        <div class="sidebar-box">
                            <h5>Recent Posts</h5>
                            <ul class="thumb-list">
                                <li>
                                    <a href="#">
                                        <img src="img/70x70.png" alt="Image Alternative text" title="Urbex Esch/Lux with Laney and Laaaaag" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <p class="thumb-list-item-meta">Jul 18, 2014</p>
                                        <h5 class="thumb-list-item-title"><a href="#">Nibh fames</a></h5>
                                        <p class="thumb-list-item-desciption">Pretium convallis sodales mauris ante</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="img/70x70.png" alt="Image Alternative text" title="AMaze" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <p class="thumb-list-item-meta">Jul 18, 2014</p>
                                        <h5 class="thumb-list-item-title"><a href="#">Enim ridiculus</a></h5>
                                        <p class="thumb-list-item-desciption">Nisi montes aliquet pretium adipiscing</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="img/70x70.png" alt="Image Alternative text" title="The Hidden Power of the Heart" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <p class="thumb-list-item-meta">Jul 18, 2014</p>
                                        <h5 class="thumb-list-item-title"><a href="#">Euismod potenti</a></h5>
                                        <p class="thumb-list-item-desciption">Mollis quis tincidunt a nascetur</p>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="sidebar-box">
                            <h5>Twitter Feed</h5>
                            <!-- START TWITTER -->
                            <div class="twitter" id="twitter"></div>
                            <!-- END TWITTER -->
                        </div>

                        <div class="sidebar-box">
                            <h5>Popular Tags</h5>
                            <ul class="tags-list">
                                <li><a href="#">Lifestyle</a>
                                </li>
                                <li><a href="#">Design</a>
                                </li>
                                <li><a href="#">Business</a>
                                </li>
                                <li><a href="#">Travel</a>
                                </li>
                                <li><a href="#">Discounts</a>
                                </li>
                                <li><a href="#">Shopping</a>
                                </li>
                            </ul>
                        </div>

                        <div class="sidebar-box">
                            <h5>Recent Comments</h5>
                            <ul class="thumb-list thumb-list-right">
                                <li>
                                    <a href="#">
                                        <img src="img/50x50.png" alt="Image Alternative text" title="Gamer Chick" class="rounded" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <p class="thumb-list-item-meta">5 minutes ago</p>
                                        <h5 class="thumb-list-item-title"><a href="#">Keith Churchill</a></h5>
                                        <p class="thumb-list-item-desciption">Praesent himenaeos litora arcu magna...</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="img/50x50.png" alt="Image Alternative text" title="Ana 29" class="rounded" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <p class="thumb-list-item-meta">9 minutes ago</p>
                                        <h5 class="thumb-list-item-title"><a href="#">Cheryl Gustin</a></h5>
                                        <p class="thumb-list-item-desciption">Habitasse rutrum mi tortor...</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="img/50x50.png" alt="Image Alternative text" title="Afro" class="rounded" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <p class="thumb-list-item-meta">8 minutes ago</p>
                                        <h5 class="thumb-list-item-title"><a href="#">Richard Jones</a></h5>
                                        <p class="thumb-list-item-desciption">Eget porta pharetra...</p>
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </aside>


                </div>
            </div>

        </div>

	

        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->



		<!-- Main footer -->
		<jsp:include page="../inc/footer_inc.jsp"></jsp:include>
		<!-- EMDS Main footer -->




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
        
        <script type="text/javascript">
		function activateAccount(acctId){
			
			//alert("activateAccount()");
			
			$.ajax({
				type:"post",
				url:"activate",
				dataType:"json",
				data: {	acctId:acctId},
				timeout : 5000,
				success:function(data){	
					var msg = data.info_msg;
					var userAccount = data.userAccount;
					$("#sec_activate").html(msg);
					$("#ua1").text(userAccount.acctId);
					$("#ua2").text(userAccount.acctName);
					$("#ua3").text(userAccount.password);
					$("#ua4").text(userAccount.acctStatus);
				}		
			});
		}
		
		function sendActivateLink(acctId,email){
			//var userAccount = accountObj;
			//var email = userAccount.primaryEmail;
			//var acctId = userAccount.acctId;
			
			
			var acctId = acctId;
			var email = email;
			
			//alert("sendActivateLink "+acctId+":"+email);
			
			$.ajax({
				type:"post",
				url:"activaterequest",
				dataType:"json",
				data: {	acctId:acctId, email:email },
				timeout : 5000,
				success:function(data){
					//var activateLink = data.activateLink;
					//location = "goactivateemail?activateLink="+activateLink+"&acctId="+acctId;
					location="index";
				}
			});
			
		}
	</script>
    </div>
</body>

</html>
