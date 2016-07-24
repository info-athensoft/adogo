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
            	<br/>
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
            <div class="col-md-6">
                <div class="form-group">
                    <label>Country</label>
                    <!-- <input type="text" placeholder="Canada" class="form-control" value="Canada" name="countryCode">  -->
                    <!-- <select name="countryCode" id="c_countryCode" class="form-control" >
						<option value="CA" selected="selected">Canada</option>
						<option value="US">United States</option>
						<option value="CN">China</option>
					 </select>   -->
					 <select name="countryCode" id="c_countryCode" size="1" class="form-control">
				        <option value="" selected="selected">Select Country</option>
				    </select>                   
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Province</label>
                    <!-- <input type="text" placeholder="Quebec" class="form-control" value="Quebec" name="provinceCode">  -->
                    <select name="provinceCode" id="c_provinceCode" size="1" class="form-control">
				        <option value="" selected="selected">Select Prov.</option>
				    </select>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <label>City</label>
                    <!-- <input type="text" placeholder="Montreal" class="form-control" value="Montreal" name="cityCode">  -->
                    <select name="cityCode" id="c_cityCode" size="1" class="form-control">
				        <option value="" selected="selected">Select City</option>
				    </select>
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
        
<script>
var countryObject = {
    "Canada": {
        "Alberta": ["Salinas", "Gonzales"],
        "British Columbia": ["Oakland", "Berkeley"],
        "Quebec": ["Montreal", "OtherCity"]
    },
    "The United States": {
        "Douglas": ["Roseburg", "Winston"],
        "Jackson": ["Medford", "Jacksonville"]
    },
    "China": {
        "FuJian": ["XiaMen", "Winston"],
        "GuangDong": ["ShengZheng", "Jacksonville"]
    }
}

$(document).ready(function(){
	 var c_countryCode = document.getElementById("c_countryCode"),
     c_provinceCode = document.getElementById("c_provinceCode"),
     c_cityCode = document.getElementById("c_cityCode");
	 for (var state in countryObject) {
	     c_countryCode.options[c_countryCode.options.length] = new Option(state, state);
	 }
	 c_countryCode.onchange = function () {
	     c_provinceCode.length = 1; // remove all options bar first
	     c_cityCode.length = 1; // remove all options bar first
	     if (this.selectedIndex < 1) return; // done   
	     for (var county in countryObject[this.value]) {
	         c_provinceCode.options[c_provinceCode.options.length] = new Option(county, county);
	     }
	 }
     $('#c_countryCode').val("Canada");
	 c_countryCode.onchange(); // reset in case page is reloaded
	 c_provinceCode.onchange = function () {
	     c_cityCode.length = 1; // remove all options bar first
	     if (this.selectedIndex < 1) return; // done   
	     var cities = countryObject[c_countryCode.value][this.value];
	     for (var i = 0; i < cities.length; i++) {
	         c_cityCode.options[c_cityCode.options.length] = new Option(cities[i], cities[i]);
	     }
	 }
	
});

/*
window.onload = function () {
    var c_countryCode = document.getElementById("c_countryCode"),
        c_provinceCode = document.getElementById("c_provinceCode"),
        c_cityCode = document.getElementById("c_cityCode");
    for (var state in countryObject) {
        c_countryCode.options[c_countryCode.options.length] = new Option(state, state);
    }
    c_countryCode.onchange = function () {
        c_provinceCode.length = 1; // remove all options bar first
        c_cityCode.length = 1; // remove all options bar first
        if (this.selectedIndex < 1) return; // done   
        for (var county in countryObject[this.value]) {
            c_provinceCode.options[c_provinceCode.options.length] = new Option(county, county);
        }
    }
    c_countryCode.onchange(); // reset in case page is reloaded
    c_provinceCode.onchange = function () {
        c_cityCode.length = 1; // remove all options bar first
        if (this.selectedIndex < 1) return; // done   
        var cities = countryObject[c_countryCode.value][this.value];
        for (var i = 0; i < cities.length; i++) {
            c_cityCode.options[c_cityCode.options.length] = new Option(cities[i], cities[i]);
        }
    }
}*/
</script>
</body>
</html>  