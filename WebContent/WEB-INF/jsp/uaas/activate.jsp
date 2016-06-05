<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    

<c:set var="base_path" value="/prototype_uaas"/>


<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap styles -->
    <link rel="stylesheet" href="${base_path}/css/boostrap.css">
    <!-- Font Awesome styles (icons) -->
    <link rel="stylesheet" href="${base_path}/css/font_awesome.css">
    <!-- Main Template styles -->
    <link rel="stylesheet" href="${base_path}/css/styles.css">
    
</head>
<body class="boxed bg-cover">

	<div class="global-wrap">
	
	<header class="main main-white">
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-6">
                <div class="flexnav-menu-button" id="flexnav-menu-button">Menu</div>
                <nav>
                    <ul class="nav nav-pills flexnav" id="flexnav" data-breakpoint="800">
                        <li class="active"><a href="/index.jsp">Home</a>
                        	<ul>
                                <li><a href="#">Get started</a></li>
                                <li><a href="#">New features</a></li>
                                <li><a href="#">Explore</a></li>
                            </ul>
                        </li>
                        
                    </ul>
                </nav>
            </div>
            <div class="col-md-4">
            	<ul class="login-register">
	            	<c:if test="${empty userAccount}">
	            		 <li><a class="popup-text" href="#login-dialog" data-effect="mfp-move-from-top"><i class="fa fa-sign-in"></i>Sign in</a>
                    	</li>
                   		<li><a class="popup-text" href="#register-dialog" data-effect="mfp-move-from-top"><i class="fa fa-edit"></i>Sign up</a>
                    	</li>
	            	</c:if>
	            	<c:if test="${!empty userAccount}">
	            		<li><c:out value="${userAccount.acctName}"/>&nbsp;&nbsp;&nbsp;&nbsp;</li>
	            		 <li><a class="" href="signout"><i class="fa fa-sign-in"></i>Sign out</a>
                    	</li>
	            	</c:if>  
                </ul>
            </div>
        </div>
    </div>
</header>
	
	
	<div class="container">
		 <div class="row">
            <div class="col-md-12">
            	<c:out value="${error_msg}"/>
            </div>
            <div class="col-md-12">
            	<div id="info-msg"></div>
            </div>
           </div>
	</div>
	
	<div class="container">
		 <div class="row" id="sec_activate">
            <div class="col-md-12">
            	
            	<a href="javascript:void(0);" class="btn btn-primary" onclick="sendActivateLink('${userAccount.acctId}','${userAccount.primaryEmail}');">Send Activate Link</a>
            	 
            	<a href="test" class="btn">Go back</a>
            </div>
          </div>
          
           <div class="row" id="user_account">
            <div class="col-md-12">
            	<label id="ua1"><c:out value="${userAccount.acctId}"/></label>
            	<label id="ua2"><c:out value="${userAccount.acctName}"/></label>
            	<label id="ua3"><c:out value="${userAccount.password}"/></label>
            	<label id="ua4"><c:out value="${userAccount.acctStatus}"/></label>
            </div>
           </div>
           
          
	</div>
	
	
	
	
	<div id="login-dialog" class="mfp-with-anim mfp-hide mfp-dialog clearfix">
    <i class="fa fa-sign-in dialog-icon"></i>
    <h3>Member Login</h3>
    <h5>Welcome back, friend. Login to get started</h5>
    <form class="dialog-form" action="signin" method="post">
        <div class="form-group">
            <label>E-mail</label>
            <input type="text" placeholder="email@domain.com" class="form-control" name="acctName">
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" placeholder="My secret password" class="form-control" name="password">
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox">Remember me
            </label>
        </div>
        <input type="submit" value="Sign in" class="btn btn-primary">
    </form>
    <ul class="dialog-alt-links">
        <li><a class="popup-text" href="#register-dialog" data-effect="mfp-zoom-out">Not member yet</a>
        </li>
        <li><a class="popup-text" href="#password-recover-dialog" data-effect="mfp-zoom-out">Forgot password</a>
        </li>
    </ul>
</div>


<div id="register-dialog" class="mfp-with-anim mfp-hide mfp-dialog clearfix">
    <i class="fa fa-edit dialog-icon"></i>
    <h3>Member Register</h3>
    <h5>Ready to get best offers? Let's get started!</h5>
    <form class="dialog-form" action="signup" method="post">
        <div class="form-group">
            <label>E-mail</label>
            <input type="text" placeholder="email@domain.com" class="form-control" name="acctName">
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" placeholder="My secret password" class="form-control" name="password">
        </div>
        <div class="form-group">
            <label>Repeat Password</label>
            <input type="password" placeholder="Type your password again" class="form-control" name="password2">
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label>Country</label>
                    <input type="text" placeholder="Canada" class="form-control" value="Canada" name="countryCode">
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>Province</label>
                    <input type="text" placeholder="Quebec" class="form-control" value="Quebec" name="provinceCode">
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>City</label>
                    <input type="text" placeholder="Montreal" class="form-control" value="Montreal" name="cityCode">
                </div>
            </div>
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox">Get hot offers via e-mail
            </label>
        </div>
        <input type="submit" value="Sign up" class="btn btn-primary">
    </form>
    <ul class="dialog-alt-links">
        <li><a class="popup-text" href="#login-dialog" data-effect="mfp-zoom-out">Already member</a>
        </li>
    </ul>
</div>


<div id="password-recover-dialog" class="mfp-with-anim mfp-hide mfp-dialog clearfix">
    <i class="icon-retweet dialog-icon"></i>
    <h3>Password Recovery</h3>
    <h5>Fortgot your password? Don't worry we can deal with it</h5>
    <form class="dialog-form">
        <label>E-mail</label>
        <input type="text" placeholder="email@domain.com" class="span12">
        <input type="submit" value="Request new password" class="btn btn-primary">
    </form>
</div>

<div id="login-error-dialog" class="mfp-with-anim mfp-hide mfp-dialog clearfix">
    <i class="icon-retweet dialog-icon"></i>
    <h3>Wrong user name or password</h3>
    <h5>Fortgot your password? Don't worry we can deal with it</h5>
    <form class="dialog-form">
        <label>E-mail</label>
        <input type="text" placeholder="email@domain.com" class="span12">
        <input type="submit" value="Request new password" class="btn btn-primary">
    </form>
</div>


</div> <!-- global wrap -->
<!-- Scripts queries -->
        <script src="${base_path}/js/jquery.js"></script>
        <script src="${base_path}/js/boostrap.min.js"></script>
        <script src="${base_path}/js/countdown.min.js"></script>
        <script src="${base_path}/js/flexnav.min.js"></script>
        <script src="${base_path}/js/magnific.js"></script>
        <script src="${base_path}/js/tweet.min.js"></script>
        <script src="${base_path}/js/fitvids.min.js"></script>
        <script src="${base_path}/js/mail.min.js"></script>
        <script src="${base_path}/js/ionrangeslider.js"></script>
        <script src="${base_path}/js/icheck.js"></script>
        <script src="${base_path}/js/fotorama.js"></script>
        <script src="${base_path}/js/card-payment.js"></script>
        <script src="${base_path}/js/owl-carousel.js"></script>
        <script src="${base_path}/js/masonry.js"></script>
        <script src="${base_path}/js/nicescroll.js"></script>
	<!-- Custom scripts -->
        <script src="${base_path}/js/custom.js"></script>
        
        
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
</body>
</html>  