<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<!-- LOGIN REGISTER LINKS CONTENT -->
        <jsp:include page="login_inc.jsp"></jsp:include>
        <!-- END LOGIN REGISTER LINKS CONTENT -->

<header class="main main-white">
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <a href="/" class="logo">
                    <img src="/img/logo-small-dark.png" alt="Adogo logo" title="athensoft.com" width="32" height="32"/>
                </a>
            </div>
            <div class="col-md-6">
                <div class="flexnav-menu-button" id="flexnav-menu-button">Menu</div>
                <nav>
                    <ul class="nav nav-pills flexnav" id="flexnav" data-breakpoint="800">
                        <li><a href="/">Home</a>
                        	<ul>
                                <li><a href="/about/ch">About (CHS)</a></li>
                            </ul>
                        </li>
                        <li class="active"><a href="/publictest/goapplybooth">Public Test</a>
                        	<ul>
                                <li><a href="/publictest/goapplybooth">Apply for a booth</a></li>
                            </ul>
                        </li>
                        <!--                    
                        <li><a href="#">Find</a>
                        </li>
                        <li><a href="#">Good deals</a>
                        </li>
                        <li><a href="#">Events</a>
                        </li>
                        <li><a href="#">Join us</a>
                            <ul>
                                <li><a href="#">As an advertiser</a>
                                </li>
                            </ul>
                        </li>
                        -->
                        <li><a href="#">Support</a>
                            <ul>
                            	<li><a href="/support/applybooth">How to apply a booth(CHS)</a></li>
                                <li><a href="/support/faq">FAQ (CHS)</a></li>
                            </ul>
                        </li>
                         
                    </ul>
                </nav>
            </div>
            <div class="col-md-4">
                <ul class="login-register">
                	<!-- 
                    <li class="shopping-cart shopping-cart-white"><a href="#"><i class="fa fa-shopping-cart"></i>My Cart</a>
                        <div class="shopping-cart-box">
                            <ul class="shopping-cart-items">
                                <li>
                                    <a href="#">
                                        <img src="/img/70x70.png" alt="Test" title="Test" />
                                        <h5>Service A101</h5><span class="shopping-cart-item-price">$99.99</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/img/70x70.png" alt="Test" title="Test" />
                                        <h5>Service B101</h5><span class="shopping-cart-item-price">$49.99</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="list-inline text-center">
                                <li><a href="page-cart.html"><i class="fa fa-shopping-cart"></i> View Cart</a>
                                </li>
                                <li><a href="page-checkout.html"><i class="fa fa-check-square"></i> Checkout</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                     -->
                     <!-- 
                    <li><a class="popup-text" href="#login-dialog" data-effect="mfp-move-from-top"><i class="fa fa-sign-in"></i>Sign in</a>
                    </li>                     
                    <li><a class="popup-text" href="#register-dialog" data-effect="mfp-move-from-top"><i class="fa fa-edit"></i>Sign up</a>
                    </li>
                    -->
                    <c:if test="${empty userAccount}">
	            		 <li><a class="popup-text" href="#login-dialog" data-effect="mfp-move-from-top"><i class="fa fa-sign-in"></i>Sign in</a>
                    	</li>
                   		<li><a class="popup-text" href="#register-dialog" data-effect="mfp-move-from-top"><i class="fa fa-edit"></i>Sign up</a>
                    	</li>
	            	</c:if>
	            	<c:if test="${not empty userAccount}">
	            		<li><i class="fa fa-user" id="user_signin" data-toggle="tooltip" data-placement="bottom" title="${userAccount.acctName}"></i>&nbsp;&nbsp;&nbsp;&nbsp;</li>
	            		 <li><a class="" href="/signout"><i class="fa fa-sign-in"></i>Sign out</a>
                    	</li>
	            	</c:if>
	            	
	            	  
                    <li><a class="popup-text" href="#public-test-dialog" data-effect="mfp-move-from-top"><i class="fa fa-edit"></i><span id="contact-us">Contact us</span></a>
                    </li>
                     
                    
                </ul>
            </div>
        </div>
    </div>
</header>

<script src="/js/jquery.js"></script>
<script src="/js/boostrap.min.js"></script>
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
		</script>
