<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
                        <li class="active"><a href="faq">Public test</a>
                        	<ul>
                                <li><a class="popup-text" href="/applybooth" data-effect="mfp-move-from-top">Apply a booth(CHS)</a></li>
                                <li><a href="/faq">FAQ (CHS)</a></li>
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
                                <li><a href="/faq">FAQ (CHS)</a>
                                </li>
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
	            	<c:if test="${!empty userAccount}">
	            		<li><c:out value="${userAccount.acctName}"/>&nbsp;&nbsp;&nbsp;&nbsp;</li>
	            		 <li><a class="" href="signout"><i class="fa fa-sign-in"></i>Sign out</a>
                    	</li>
	            	</c:if>
	            	
	            	  
                    <li><a class="popup-text" href="#public-test-dialog" data-effect="mfp-move-from-top"><i class="fa fa-edit"></i>Contact us</a>
                    </li>
                     
                    
                </ul>
            </div>
        </div>
    </div>
</header>