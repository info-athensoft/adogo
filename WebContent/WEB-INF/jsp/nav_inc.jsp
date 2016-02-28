<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<header class="main main-white">
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <a href="/" class="logo">
                    <img src="/img/logo-small-dark.png" alt="Adogo logo" title="athensoft.com" />
                </a>
            </div>
            <div class="col-md-6">
                <div class="flexnav-menu-button" id="flexnav-menu-button">Menu</div>
                <nav>
                    <ul class="nav nav-pills flexnav" id="flexnav" data-breakpoint="800">
                        <li class="active"><a href="index.jsp">Home</a>
                        </li>
                        <li><a href="shop-category.jsp">Find</a>
                            <ul>
                                <li><a href="shop-category.jsp">Find a shop</a></li>
                                <li><a href="#">Find a product</a></li>
                                <li><a href="#">Find a service</a></li>
                                <li><a href="#">Find a business</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Good deals</a>
                            <ul>
                                <li><a href="#">On sale</a>
                                </li>
                                <li><a href="#">Coupon</a>
                                </li>
                                <li><a href="#">Flyer</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Events</a>
                            <ul>
                                <li><a href="#">Selling activities</a>
                                </li>
                                <li><a href="#">Charitable activities</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-4">
                <ul class="login-register">
                    <li class="shopping-cart shopping-cart-white"><a href="#"><i class="fa fa-shopping-cart"></i>My Cart</a>
                        <div class="shopping-cart-box">
                            <ul class="shopping-cart-items">
                                <li>
                                    <a href="#">
                                        <img src="/img/70x70.png" alt="Image Alternative text" title="AMaze" />
                                        <h5>New Glass Collection</h5><span class="shopping-cart-item-price">$150</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="/img/70x70.png" alt="Image Alternative text" title="Gamer Chick" />
                                        <h5>Playstation Accessories</h5><span class="shopping-cart-item-price">$170</span>
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
                    <li><a class="popup-text" href="#login-dialog" data-effect="mfp-move-from-top"><i class="fa fa-sign-in"></i>Sign in</a>
                    </li>
                    <li><a class="popup-text" href="#register-dialog" data-effect="mfp-move-from-top"><i class="fa fa-edit"></i>Sign up</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>