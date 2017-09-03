<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="title" value="Site Map"/>
<c:set var="sec1" value="1. Home"/>
<c:set var="sec2" value="2. Support"/>
<c:set var="sec3" value="3. Ad"/>
<c:set var="sec4" value="4. Blog"/>
<c:set var="sec5" value="5. Booth"/>
<c:set var="sec6" value="6. Event"/>
<c:set var="sec7" value="7. Public Test Round #2"/>
<c:set var="sec8" value="8. UAAS - User Authentication and Authorization System"/>
<c:set var="sec9" value="9. UPCS - User Personal Center System"/>


<!DOCTYPE HTML>
<html>
<head>
    <title>Sitemap | Adogo Online Brands and Advertising Marketing</title>
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
    
    <style>
    .cell-1{
    	width : 10%;
    }
    .cell-2{
    	width : 25%;
    }
    .cell-3{
    	width : 20%;
    }
    .cell-4{
    	width : 35%;
    }
    .cell-5{
    	width : 10%;
    }
    
    </style>
    
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
        <!-- 
        <jsp:include page="../inc/search_inc.jsp"></jsp:include>
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
                <div class="col-md-12">
                	<div><h3><c:out value="${title}"/></h3></div>
                	<br/> 
                	
                	<!-- section: home -->              	
                	<div><h5 class="panel-title"><c:out value="${sec1}"/></h5></div>
                	
                    <div class="panel-group" id="">
                        <table class="table">
                        <thead>
                            <tr>
                                <th class="cell-1">Package</th>
                                <th class="cell-2">Page Name</th>
                                <th class="cell-3">URL</th>
                                <th class="cell-4">Controller</th>
                                <th class="cell-5">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>home</td>
                                <td><a href="/">index</a></td>
                                <td><a href="/">/</a></td>
                                <td>com.adogo.general.controller.GeneralController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>home</td>
                                <td><a href="/">index</a></td>
                                <td><a href="/">/index</a></td>
                                <td>com.adogo.general.controller.GeneralController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>home</td>
                                <td><a href="/about">about</a></td>
                                <td><a href="/about">/about</a></td>
                                <td>com.adogo.general.controller.GeneralController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>home</td>
                                <td><a href="/about/ch">about CH</a></td>
                                <td><a href="/about/ch">/about/ch</a></td>
                                <td>com.adogo.general.controller.GeneralController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>home</td>
                                <td><a href="/sitemap">sitemap</a></td>
                                <td><a href="/sitemap">/sitemap</a></td>
                                <td>com.adogo.general.controller.GeneralController</td>
                                <td>Active</td>
                        	</tr>
                        </tbody>
                        </table>
                    </div>
                        
                   <!-- section: support -->              	
                	<div><h5 class="panel-title"><c:out value="${sec2}"/></h5></div>
                	
                    <div class="panel-group" id="">
                        <table class="table">
                        <thead>
                            <tr>
                                <th class="cell-1">Package</th>
                                <th class="cell-2">Page Name</th>
                                <th class="cell-3">URL</th>
                                <th class="cell-4">Controller</th>
                                <th class="cell-5">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>support</td>
                                <td><a href="/support/faq">FAQ</a></td>
                                <td><a href="/support/faq">/support/faq</a></td>
                                <td>com.adogo.general.controller.GeneralController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>support</td>
                                <td><a href="/support/applybooth">Apply a booth</a></td>
                                <td><a href="/support/applybooth">/support/applybooth</a></td>
                                <td>com.adogo.general.controller.GeneralController</td>
                                <td>Active</td>
                        	</tr>
                        </tbody>
                        </table>
                    </div>
                    
                    
                    <!-- section: ad -->              	
                	<div><h5 class="panel-title"><c:out value="${sec3}"/></h5></div>
                	
                    <div class="panel-group" id="">
                        <table class="table">
                        <thead>
                            <tr>
                                <th class="cell-1">Package</th>
                                <th class="cell-2">Page Name</th>
                                <th class="cell-3">URL</th>
                                <th class="cell-4">Controller</th>
                                <th class="cell-5">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>ad</td>
                                <td><a href="/ad/adpost/ad">Ad Post Detail Layout</a></td>
                                <td><a href="/ad/adpost/ad">/ad/adpost/ad</a></td>
                                <td>com.adogo.ad.controller.AdController</td>
                                <td>Test</td>
                        	</tr>
                        	<tr>
                                <td>ad</td>
                                <td><a href="/ad/adpost/list">Ad Post List</a></td>
                                <td><a href="/ad/adpost/list">/ad/adpost/list</a></td>
                                <td>com.adogo.ad.controller.AdController</td>
                                <td>Test</td>
                        	</tr>
                        </tbody>
                        </table>
                    </div>
                    
                    
                    <!-- section: blog -->              	
                	<div><h5 class="panel-title"><c:out value="${sec4}"/></h5></div>
                	
                    <div class="panel-group" id="">
                        <table class="table">
                        <thead>
                            <tr>
                                <th class="cell-1">Package</th>
                                <th class="cell-2">Page Name</th>
                                <th class="cell-3">URL</th>
                                <th class="cell-4">Controller</th>
                                <th class="cell-5">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>blog</td>
                                <td><a href="/blog">Blog index</a></td>
                                <td><a href="/blog">/blog</a></td>
                                <td>com.adogo.blog.controller.BlogController</td>
                                <td>Test</td>
                        	</tr>
                        	<tr>
                                <td>blog</td>
                                <td><a href="/blog/1">Topic of Blog<br/> topic=1</a></td>
                                <td><a href="/blog/1">/blog/{topicClass}</a></td>
                                <td>com.adogo.blog.controller.BlogController</td>
                                <td>Test</td>
                        	</tr>
                        	<tr>
                                <td>blog</td>
                                <td><a href="/blog/thread/1">Thread of Blog<br/> threadId=1</a></td>
                                <td><a href="/blog/thread/1">/blog/thread/{threadId}</a></td>
                                <td>com.adogo.blog.controller.BlogController</td>
                                <td>Test</td>
                        	</tr>
                        	<tr>
                                <td>blog</td>
                                <td><a href="/blog/post">Thread of Blog Post<br/>REST API-GET</a></td>
                                <td><a href="/blog/post">/blog/post</a></td>
                                <td>com.adogo.blog.controller.BlogController</td>
                                <td>Test</td>
                        	</tr>
                        	<tr>
                                <td>blog</td>
                                <td><a href="/blog/post">Post of Blog<br/>REST API-POST</a></td>
                                <td><a href="/blog/post">/blog/post</a></td>
                                <td>com.adogo.blog.controller.BlogController</td>
                                <td>Test</td>
                        	</tr>
                        </tbody>
                        </table>
                    </div>
                    
                    
                    <!-- section: booth -->              	
                	<div><h5 class="panel-title"><c:out value="${sec5}"/></h5></div>
                	
                    <div class="panel-group" id="">
                        <table class="table">
                        <thead>
                            <tr>
                                <th class="cell-1">Package</th>
                                <th class="cell-2">Page Name</th>
                                <th class="cell-3">URL</th>
                                <th class="cell-4">Controller</th>
                                <th class="cell-5">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>booth</td>
                                <td><a href="/booth">All Booths</a></td>
                                <td><a href="/booth">/booth</a></td>
                                <td>com.adogo.business.controller.BoothController</td>
                                <td>Test</td>
                        	</tr>
                        	<tr>
                                <td>booth</td>
                                <td><a href="/category/1">Booths by class<br/> classNum=1</a></td>
                                <td><a href="/category/1">/category/{classNum}</a></td>
                                <td>com.adogo.business.controller.BoothController</td>
                                <td>Test</td>
                        	</tr>
                        	<tr>
                                <td>booth</td>
                                <td><a href="/category/1/1">Booths by class level2<br/> classNum=1, classNumLv2=1</a></td>
                                <td><a href="/category/1/1">/category/{classNum}/{classNumLv2}</a></td>
                                <td>com.adogo.business.controller.BoothController</td>
                                <td>Test</td>
                        	</tr>
                        	<tr>
                                <td>booth</td>
                                <td><a href="/biz/31001">Business profile<br/> bizNo=31001</a></td>
                                <td><a href="/biz/31001">/biz/{bizNo}</a></td>
                                <td>com.adogo.business.controller.BusinessController</td>
                                <td>Test</td>
                        	</tr>
                        	<tr>
                                <td>booth</td>
                                <td><a href="/category/name/shopwise">Booths by category name<br/> categoryName="shopwise"</a></td>
                                <td><a href="/category/name/shopwise">/category/name/{categoryName}</a></td>
                                <td>com.adogo.business.controller.CategoryController</td>
                                <td>Draft</td>
                        	</tr>
                    	</tbody>
                    	</table>
                    </div>
                    
                    <!-- section: event -->              	
                	<div><h5 class="panel-title"><c:out value="${sec6}"/></h5></div>
                	
                    <div class="panel-group" id="">
                        <table class="table">
                        <thead>
                            <tr>
                                <th class="cell-1">Package</th>
                                <th class="cell-2">Page Name</th>
                                <th class="cell-3">URL</th>
                                <th class="cell-4">Controller</th>
                                <th class="cell-5">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>event</td>
                                <td><a href="/event/act">Active of event</a></td>
                                <td><a href="/event/act">/event/act</a></td>
                                <td>com.adogo.event.controller.NewsController</td>
                                <td>Draft</td>
                        	</tr>
                        	<tr>
                                <td>event</td>
                                <td><a href="/event/news">News of event</a></td>
                                <td><a href="/event/news">/event/news</a></td>
                                <td>com.adogo.event.controller.NewsController</td>
                                <td>Draft</td>
                        	</tr>
                        </tbody>
                        </table>
                    </div>
                    
                    
                    <!-- section: public test round2 2016 -->              	
                	<div><h5 class="panel-title"><c:out value="${sec7}"/></h5></div>
                	
                    <div class="panel-group" id="">
                        <table class="table">
                        <thead>
                            <tr>
                                <th class="cell-1">Package</th>
                                <th class="cell-2">Page Name</th>
                                <th class="cell-3">URL</th>
                                <th class="cell-4">Controller</th>
                                <th class="cell-5">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>publictest</td>
                                <td><a href="/publictest/goapplybooth">Apply booth page</a></td>
                                <td><a href="/publictest/goapplybooth">/publictest/goapplybooth</a></td>
                                <td>com.adogo.publictest.controller.PublicTestController</td>
                                <td>Active</td>
                        	</tr>
                        </tbody>
                        </table>
                    </div>
                    
                    
                    <!-- section: uaas -->              	
                	<div><h5 class="panel-title"><c:out value="${sec8}"/></h5></div>
                	
                    <div class="panel-group" id="">
                        <table class="table">
                        <thead>
                            <tr>
                                <th class="cell-1">Package</th>
                                <th class="cell-2">Page Name</th>
                                <th class="cell-3">URL</th>
                                <th class="cell-4">Controller</th>
                                <th class="cell-5">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>uaas</td>
                                <td><a href="/gosignup">Sign up page</a></td>
                                <td><a href="/gosignup">/gosignup</a></td>
                                <td>com.adogo.uaas.controller.UaasController</td>
                                <td>Not Exists</td>
                        	</tr>
                        	<tr>
                                <td>uaas</td>
                                <td><a href="/gosignin">Sign in page</a></td>
                                <td><a href="/gosignin">/gosignin</a></td>
                                <td>com.adogo.uaas.controller.UaasController</td>
                                <td>Not Exists</td>
                        	</tr>
                        	<tr>
                                <td>uaas</td>
                                <td><a href="/goactivate">Activating page</a></td>
                                <td><a href="/goactivate">/goactivate</a></td>
                                <td>com.adogo.uaas.controller.UaasController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>uaas</td>
                                <td><a href="/goactivatenotice">Activating notice page</a></td>
                                <td><a href="/goactivatenotice">/goactivatenotice</a></td>
                                <td>com.adogo.uaas.controller.UaasController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>uaas</td>
                                <td><a href="/goactivateresult">Activating result page</a></td>
                                <td><a href="/goactivateresult">/goactivateresult</a></td>
                                <td>com.adogo.uaas.controller.UaasController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>uaas</td>
                                <td><a href="/signup">Sign up execution</a></td>
                                <td><a href="/signup">/signup</a></td>
                                <td>com.adogo.uaas.controller.UserController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>uaas</td>
                                <td><a href="/signin">Sign in execution</a></td>
                                <td><a href="/signin">/signin</a></td>
                                <td>com.adogo.uaas.controller.UserController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>uaas</td>
                                <td><a href="/signout">Sign out execution</a></td>
                                <td><a href="/signout">/signout</a></td>
                                <td>com.adogo.uaas.controller.UserController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>uaas</td>
                                <td><a href="/activaterequest">Activating request</a></td>
                                <td><a href="/activaterequest">/activaterequest</a></td>
                                <td>com.adogo.uaas.controller.UserController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>uaas</td>
                                <td><a href="/activate">Activating execution</a></td>
                                <td><a href="/activate">/activate</a></td>
                                <td>com.adogo.uaas.controller.UserController</td>
                                <td>Active</td>
                        	</tr>
                        	<tr>
                                <td>uaas</td>
                                <td><a href="/activatemail">Activating execution via email</a></td>
                                <td><a href="/activatemail">/activatemail</a></td>
                                <td>com.adogo.uaas.controller.UserController</td>
                                <td>Active</td>
                        	</tr>
                        </tbody>
                        </table>
                    </div>
                    
                    
                    <!-- section: upcs -->              	
                	<div><h5 class="panel-title"><c:out value="${sec9}"/></h5></div>
                	
                    <div class="panel-group" id="">
                        <table class="table">
                        <thead>
                            <tr>
                                <th class="cell-1">Package</th>
                                <th class="cell-2">Page Name</th>
                                <th class="cell-3">URL</th>
                                <th class="cell-4">Controller</th>
                                <th class="cell-5">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<tr>
                                <td>upcs</td>
                                <td><a href="/myacct">All user accounts</a></td>
                                <td><a href="/myacct">/myacct</a></td>
                                <td>com.adogo.upcs.controller.UpcsController</td>
                                <td>Draft</td>
                        	</tr>
                        	<tr>
                                <td>upcs</td>
                                <td><a href="/myacct/1">My account profile<br/>acctId=1</a></td>
                                <td><a href="/myacct/1">/myacct/{acctId}</a></td>
                                <td>com.adogo.upcs.controller.UpcsController</td>
                                <td>Draft</td>
                        	</tr>
                            <tr>
                                <td>upcs</td>
                                <td><a href="/myacct/recharge">My account recharging page</a></td>
                                <td><a href="/myacct/recharge">/myacct/recharge</a></td>
                                <td>com.adogo.upcs.controller.BraintreeController</td>
                                <td>Draft</td>
                        	</tr>
                        	<tr>
                                <td>upcs</td>
                                <td><a href="/myacct/mywallet">My account wallet page</a></td>
                                <td><a href="/myacct/mywallet">/myacct/mywallet</a></td>
                                <td>com.adogo.upcs.controller.BraintreeController</td>
                                <td>Draft</td>
                        	</tr>
                        	<tr>
                                <td>upcs</td>
                                <td><a href="/myacct/recharge/create_transaction">Recharging transaction execution</a></td>
                                <td><a href="/myacct/recharge/create_transaction">/myacct/recharge/create_transaction</a></td>
                                <td>com.adogo.upcs.controller.GetPaidController</td>
                                <td>Draft</td>
                        	</tr>
                        </tbody>
                        </table>
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
		<jsp:include page="../inc/footer_inc.jsp"></jsp:include>
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
