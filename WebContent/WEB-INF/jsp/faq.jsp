<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="title_faq" value="ADOGO广告推广平台-内部测试活动常见问题解答"/>
<c:set var="sec1" value="1. 关于内测"/>

<c:set var="quest1_1" value="1.1 什么是ADOGO平台内测?"/>
<c:set var="answer1_1" value="ADOGO平台内测是面向广告主的进驻测试，简称内测。首轮内测截止到 2016年6月30日。"/>

<c:set var="quest1_2" value="1.2 内测的主要目的是什么？"/>
<c:set var="answer1_2" value="内测的目的是集结一批有强烈品牌形象意识、积极向上并认同抱团共赢理念的企业家、生意人、专业个人等，体验广告平台的基本展示与推广功能、评估效果、即时反馈并提出建设性的宝贵意见和建议，使得平台的设计和发展完全符合市场的口味和需要。借此形成开放式成长模式与氛围，人人可以参与建设。"/>

<c:set var="quest1_3" value="1.3 内测的主要内容是什么？"/>
<c:set var="answer1_3" value="平台为广告主建立一个在线形象展位，按行业类别和进驻属性分别放置在首页或分类页。该展位可以作为广告主在平台的形象标识、亦是广告主所有在线展示介质的统一入口。其在线展示介质通常是：网站、登陆页、社交媒体主页、网店、其它个人主页等。"/>

<c:set var="quest1_4" value="1.4 我是否能参加内测？"/>
<c:set var="answer1_4" value="只要您满足是注册公司、长期稳定地提供服务或产品的个人、想长期推广自己品牌任何一项，均有资格申请内测。"/>

<c:set var="quest1_5" value="1.5 如何获取内测资格？"/>
<c:set var="answer1_5" value="有两种方式可获取内测资格。第一、我们直接联系您并发出邀请，您同意后可以直接获取内测资格。第二、在微信群或者朋友圈看见公共邀请广告后，通过微信群，微信好友联系我们我们亦可获得内测资格。"/>

<c:set var="quest1_6" value="1.6 参加内测有哪些好处？"/>
<c:set var="answer1_6" value="有两种方式可获取内测资格。"/>

<c:set var="sec2" value="2. 一般问题"/>
<c:set var="quest2_1" value="2.1 什么是浏览者?"/>
<c:set var="answer2_1" value="浏览者(Visitor)，即是通常意义的用户，是平台的主体之一、可以变换不同的身份，例如消费者、潜在消费者、寻找合作商、上下游、寻找商机的个人和企业代表。通常浏览者在注册登录后可以获得比游客身份更多的权限和功能。"/>

<c:set var="quest2_2" value="2.2 什么是广告主?"/>
<c:set var="answer2_2" value="广告主(Advertiser)，又称作商家、业主，是平台的主体之一；经营着自己的生意，实体或者在线的，提供产品或者服务。广告主拥有一个固定的在线展位，可以作为其所有在线展示的门户。广告主的资格按年接续，拥有后台管理功能，可以更新自己的广告信息。"/>

<c:set var="quest2_3" value="2.3 如何申请广告主?"/>
<c:set var="answer2_3" value="先注册为浏览者，然后联系客服申请广告主，接受协议和服务条款并通过审核后正式成为广告主。"/>

<!DOCTYPE HTML>
<html>
<head>
    <title>Adogo - FAQ for public test</title>
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
                <div class="col-md-9">
                	<div><h3><c:out value="${title_faq}"/></h3></div>
                	<br/> 
                	              	
                	<div><h5 class="panel-title"><c:out value="${sec1}"/></h5><br/></div>
                	
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-1"><c:out value="${quest1_1}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse in" id="collapse-1-1">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_1}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-2"><c:out value="${quest1_2}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-2">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_2}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-3"><c:out value="${quest1_3}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-3">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_3}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-4"><c:out value="${quest1_4}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-4">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_4}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-5"><c:out value="${quest1_5}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-5">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_5}"/></p>
                                </div>
                            </div>
                        </div>
                        </div>
                        
                        <!--  -->
                        <div><h5 class="panel-title"><c:out value="${sec2}"/></h5><br/></div>
                	
                    	<div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-2-1"><c:out value="${quest2_1}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse in" id="collapse-2-1">
                                <div class="panel-body">
                                    <p><c:out value="${answer2_1}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-2-2"><c:out value="${quest2_2}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-2-2">
                                <div class="panel-body">
                                    <p><c:out value="${answer2_2}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-2-3"><c:out value="${quest2_3}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-2-3">
                                <div class="panel-body">
                                    <p><c:out value="${answer2_3}"/></p>
                                </div>
                            </div>
                        </div>
                	</div>
                </div>
                
                <div class="col-md-3">
                    <aside class="sidebar-right">
                        <h4>Still Have Questions?</h4>
                        <form class="box">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>E-mail</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>Question</label>
                                <textarea class="form-control"></textarea>
                            </div>
                            <input type="submit" class="btn btn-primary" value="Ask Question" />
                        </form>
                    </aside>
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
