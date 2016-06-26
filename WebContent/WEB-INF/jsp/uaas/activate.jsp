<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="title" value="Account activation"/>

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
		 <div class="row row-wrap">
            <div class="col-md-9">
	            <h3><c:out value="${title}"/></h3>
	            
	            <div id="info-msg"></div>
	            <div style="text-align: center">
	            	 <a href="javascript:void(0);" class="btn btn-primary" onclick="sendActivateLink('${userAccount.acctId}','${userAccount.primaryEmail}');">Send Activate Link</a>
            		<a href="/index" class="btn">Activate later</a>
	            </div>
	           	
	           	<div>
	           		<c:out value="${error_msg}"/>
	           	</div>
	           
            	<div id="user_account">
	            	<label id="ua1"><c:out value="${userAccount.acctId}"/></label>
	            	<label id="ua2"><c:out value="${userAccount.acctName}"/></label>
	            	<label id="ua3"><c:out value="${userAccount.password}"/></label>
	            	<label id="ua4"><c:out value="${userAccount.acctStatus}"/></label>
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
					var activateLink = data.activateLink;
					location = "goactivateemail?activateLink="+activateLink+"&acctId="+acctId;
				}		
			});
			
		}
	</script>
    </div>
</body>

</html>
