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
                <div class="col-md-3">
                    <aside class="sidebar-left">
                        <ul class="nav nav-pills nav-stacked nav-arrow">
                            <li class="active"><a href="/myacct">Settings</a>
                            </li>
                            <li><a href="/myacct/recharge">Recharge</a></li>
                            <li><a href="page-my-account-addresses.html">Address Book</a>
                            </li>
                            <li><a href="page-my-account-orders.html">Orders History</a>
                            </li>
                            <li><a href="page-my-account-wishlist.html">Wishlist</a>
                            </li>
                        </ul>
                    </aside>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-6">
                            <form action="">
                                <div class="form-group">
                                    <label for="">First Name</label>
                                    <input type="text" value="John" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Last Name</label>
                                    <input type="text" value="Doe" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">E-mail</label>
                                    <input type="text" value="johndoe@gmail.com" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Phone Number</label>
                                    <input type="text" value="+1 202 555 0113" class="form-control">
                                </div>
                                <input type="submit" value="Save Changes" class="btn btn-primary">
                            </form>
                        </div>
                    </div>
                    <div class="gap"></div>
                </div>
            </div>

        </div>
	
	
	
	
	<!-- remove the section below -->
		<c:forEach items="${userAccountList}" var="userAccount">
		<c:out value="${userAccount.acctId}"></c:out>	&nbsp;&nbsp;
		<c:out value="${userAccount.acctName}"></c:out> &nbsp;&nbsp;
		<c:out value="${userAccount.password}"></c:out> &nbsp;&nbsp;
		<c:out value="${userAccount.primaryEmail}"></c:out> &nbsp;&nbsp;
		<c:out value="${userAccount.secureEmail}"></c:out>  &nbsp;&nbsp;
		<c:out value="${userAccount.createDate}"></c:out>  &nbsp;&nbsp;
		
		<fmt:formatDate type="both" 
            dateStyle="medium" timeStyle="medium" 
            value="${userAccount.createDate}" />
            		
		<c:out value="${userAccount.lastModDate}"></c:out>  &nbsp;&nbsp;
		<c:out value="${userAccount.acctStatus}"></c:out>  &nbsp;&nbsp;
		<br/>
	</c:forEach>

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
