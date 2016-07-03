<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="title_faq" value="ADOGO品牌与广告推广平台-广告主入驻，获取免费展位"/>
<c:set var="sec1" value="1. 入驻提交材料和要求"/>

<c:set var="quest1_1" value="1.1 Logo或封面图片一枚"/>
<c:set var="answer1_1" value="这是作为您展位的图形标识，不满足以下要求可能导致入驻失败，因为这会影响顾客和消费者对您的展位和整个平台质量的评价。Logo必须是良好设计或者高清，没有Logo可以用封面图片替代。尺寸推荐800X600，最低不得小于360X270，最佳比例4:3。"/>

<c:set var="quest1_2" value="1.2 正式的生意名字"/>
<c:set var="answer1_2" value="这是作为您展位的文字标识，需真实有效，尽量与注册公司或现用招牌上的名称一致，是证明您生意身份的重要手段。一切虚假、隐瞒、盗用他人生意名称的行为将直接导致入驻失败，并永久失去获取平台任何服务的资格。英文或法文是必须的，其它语言的正式生意名称可以一并提交。对于个人的生意名称，不能经常改变，通常3个月可以申请修改一次，每次手续费为$20.00加币。"/>

<c:set var="quest1_3" value="1.3 生意简介"/>
<c:set var="answer1_3" value="这是用简洁明了的语言介绍您的生意，可以包括您的广告标语、经营范围、主要产品或服务、背景简介等等。应使用英语或法语，也可以一并提交其它语言的版本。同样地，内容需真实有效，否则会导致入驻失败，或展位回收。"/>

<c:set var="quest1_4" value="1.4 网站或主页地址"/>
<c:set var="answer1_4" value="这是您生意网站或者主页的URL地址，没有网站可以使用包括Facebook、博客等。"/>

<c:set var="quest1_5" value="1.5 如何获取内测资格？"/>
<c:set var="answer1_5" value="有两种方式可获取内测资格。第一、我们直接联系您并发出邀请，您同意后可以直接获取内测资格。第二、在微信群或者朋友圈看见公共邀请广告后，通过微信群，微信好友联系我们我们亦可获得内测资格。"/>

<c:set var="quest1_6" value="1.6 参加内测有哪些好处？"/>
<c:set var="answer1_6" value="可以率先拥有广告展位，提早曝光积聚人气，免费在线推广评估与咨询，获取一定的网络推广策划帮助。"/>

<c:set var="quest1_7" value="1.7 广告展位收费吗？"/>
<c:set var="answer1_7" value="内测期间发放的广告展位，是免费的，并且可以永久保留。"/>

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
    <title>FAQ | Adogo Online Brands and Advertising Marketing</title>
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
		<jsp:include page="inc/nav_inc.jsp"></jsp:include>
		<!-- EMDS Main header -->
        
        <!-- LOGIN REGISTER LINKS CONTENT -->
        <jsp:include page="inc/login_inc.jsp"></jsp:include>
        <!-- END LOGIN REGISTER LINKS CONTENT -->

        <!-- SEARCH AREA -->
        <!-- 
        <jsp:include page="inc/search_inc.jsp"></jsp:include>
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
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-6"><c:out value="${quest1_6}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-6">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_6}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-7"><c:out value="${quest1_7}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-7">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_7}"/></p>
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
		<jsp:include page="inc/footer_inc.jsp"></jsp:include>
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
