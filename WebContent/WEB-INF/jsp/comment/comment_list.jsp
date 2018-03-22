<%@ page contentType="text/html; charset=utf-8"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE HTML>
<html>

<head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113930092-2"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-113930092-2');
</script>

<!-- page: Index coupon layout 1 -->
<title>Adogo | Online Branding and Advertising Marketing</title>
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

<link rel="stylesheet" href="/css/styles-adogo.css">



</head>

<body class="boxed bg-cover sticky-search"
	style="background-image: url(/img/backgrounds/s4.jpg)">


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

		<!-- TOP AREA -->
		<jsp:include page="../inc/slide_inc.jsp"></jsp:include>
		<!-- END TOP AREA -->

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
			<!-- <div class="gap gap-small"></div> -->
			<div class="gap gap-small"></div>						 
		</div>
		<!-- Comment List Start -->
		<div>
			<table>
				<tr>
					<td>Comment ID</td>
					<td>Account ID</td>
					<td>Language</td>
					
					<td>Content</td>
					<td>Create Date</td>
					<td>Status</td>
				</tr>
				<c:forEach var="comment" items="${comments}">
					<tr>
						<td><a href='/support/faq/detail.html?supportId=${faq.globalId}'>${faq.globalId}</a></td>
						<td>${comment.acctId}</td>
						<td>${comment.langNo}</td>
						
						<td>${comment.content}</td>
						<td>${comment.createDate}</td>
						<td>${comment.status}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!-- Comment List End -->
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
		
		<script type="text/javascript">
		
		
		</script>

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
