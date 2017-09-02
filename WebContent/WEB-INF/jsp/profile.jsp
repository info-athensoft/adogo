<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE HTML>
<html>

<head>
    <title>Adogo - Profile ${customerId}</title>
    <!-- meta info -->
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta name="keywords" content="Koupon HTML5 Template" />
    <meta name="description" content="Koupon - Premiun HTML5 Template for Coupons Website">
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

<body class="boxed bg-cover"
	style="background-image: url(/img/backgrounds/s4.jpg)">
	
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
        <jsp:include page="inc/search_inc.jsp"></jsp:include>
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
                <div class="col-md-9">
                	<div class="row row-wrap">
                		<div class="col-md-12">
	                    <div class="fotorama">
	                        <img src="/customer/31001/1.jpg" alt="Image Alternative text" title="title" />
	                        <img src="/customer/31001/1.jpg" alt="Image Alternative text" title="title" />
	                        <img src="/customer/31001/1.jpg" alt="Image Alternative text" title="title" />
	                    </div>
	                    </div>
                    </div>
                    <div class="gap gap-small"></div>
                    <div class="tabbable">
                        <ul class="nav nav-tabs" id="myTab">
                            <li class="active"><a href="#tab-1" data-toggle="tab"><i class="fa fa-tag"></i>Home</a>
                            </li>
                            <li><a href="#google-map-tab" data-toggle="tab"><i class="fa fa-map-marker"></i>Location</a>
                            </li>
                            <li><a href="#tab-3" data-toggle="tab"><i class="fa fa-clock-o"></i>Opening hour</a>
                            </li>
                            <li><a href="#tab-4" data-toggle="tab"><i class="fa fa-info"></i>About</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="tab-1">
                                <div class="row text-smaller">
                                    <div class="col-md-4">
                                        <!-- logo -->
                                        <p>
                                        	<img src="../../customer/31001/logo.png" title="mara coiffuire"/>
                                        </p>
                                        <br/>
                                        <h4>Who we are</h4>
										   <h5>Roni  Hairdresser</h5>
										</p>                                        
										   <h5>Salon de Coiffure Mara</h5>
										</p>
                                        
                                    </div>
                                    <div class="col-md-4">
                                    	<h4>What we provide</h4>
                                        <p>
											Services including haircut, perm, hair color, doing hairstyle etc.
										</p>
										
										<br/>
                                        <h4>Competences</h4>
                                        <p>
                                        	
											Roni hairdresser has professional experience of a variety of haircut more than 30 thousand people.
										</p>
                                        
                                    </div>
                                    <div class="col-md-4">
                                    	<h4>Reach us</h4>
                                        <ul class="list">
                                            <li>2403 Spring Land</li>
                                            <li>Montreal QC &nbsp; H4E 2G2</li>
                                            <li>&nbsp;</li>
                                            <li>Near Monk metro station, opposite Jean-Coutu shop parking place</li>
                                        </ul>
                                        <br/>                                        
                                        <ul class="list">
                                            <li>Tel.: (438)875-1768</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- 
                            <div class="tab-pane fade" id="google-map-tab">
                                <div class="row">
                                    <div class="col-md-9">
                                        <div id="map-canvas" style="width:100%; height:300px;"></div>
                                    </div>
                                    <div class="col-md-3">
                                    	<h4>Address</h4>
                                        <ul class="list">
                                            <li>2403 Spring Land</li>
                                            <li>Montreal QC &nbsp; H4E 2G2</li>
                                            <li>&nbsp;</li>
                                            <li>Near Monk metro station, opposite Jean-Coutu shop parking place</li>
                                        </ul>
                                        <br/>
                                        
                                        <h4>Call</h4>
                                        <ul class="list">
                                            <li>(438)875-1768</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            -->
                           <div class="tab-pane fade" id="google-map-tab">
                                <div class="row">
                                    <div class="col-md-9">
                                        <div id="map-canvas" style="width:100%; height:300px;"></div>
                                    </div>
                                    <div class="col-md-3">
                                        <h4>Address</h4>
                                        <ul class="list">
                                            <li>2403 Spring Land</li>
                                            <li>Montreal QC &nbsp; H4E 2G2</li>
                                            <li>&nbsp;</li>
                                            <li>Near Monk metro station, opposite Jean-Coutu shop parking place</li>
                                        </ul>
                                        <br/>
                                        
                                        <h4>Call</h4>
                                        <ul class="list">
                                            <li>(438)875-1768</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab-3">
                            	<div class="row">
                                    <div class="col-md-6">
                                    	<h4>Opening hour</h4>
                                		<p>
											<table>
											<tr><td>MON.</td><td>closed</td><td></td><td></td></tr>
											<tr><td>TUE.</td><td>10:00 am</td><td>-</td><td>6:00 pm</td></tr>
											<tr><td>WED.</td><td>10:00 am</td><td>-</td><td>6:00 pm</td></tr>
											<tr><td>THU.</td><td>10:00 am</td><td>-</td><td>6:00 pm</td></tr>
											<tr><td>FRI.</td><td>10:00 am</td><td>-</td><td>6:00 pm</td></tr>
											<tr><td>SAT.</td><td>10:00 am</td><td>-</td><td>6:00 pm</td></tr>
											<tr><td>SUN.</td><td>10:00 am</td><td>-</td><td>6:00 pm</td></tr>
											</table>
                                		</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab-4">
                                <h3>Mara Coiffeur</h3>
                                <p>put your brief introduction here</p>
                                <p>put your brief introduction here</p><a class="btn btn-primary" href="#">Check out our Website <i class="fa fa-external-link"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="gap gap-small"></div>
                    <h3 class="mb20">Top Deals For You <small><a href="#">see all</a></small></h3>
                    <div class="row row-wrap">
                        <a class="col-md-4" href="#">
                            <div class="product-thumb">
                                <header class="product-header">
                                    <img src="../../img/800x600.png" alt="Image Alternative text" title="Ana 29" />
                                </header>
                                <div class="product-inner">
                                    <ul class="icon-group icon-list-rating icon-list-non-rated" title="not rated yet">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                    </ul>
                                    <h5 class="product-title">Hot Summer Collection</h5>
                                    <p class="product-desciption">Quam suscipit viverra phasellus laoreet conubia cubilia tellus</p>
                                    <div class="product-meta">
                                        <ul class="product-price-list">
                                            <li><span class="product-price">$53</span>
                                            </li>
                                            <li><span class="product-old-price">$101</span>
                                            </li>
                                            <li><span class="product-save">Save 52%</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <p class="product-location"><i class="fa fa-map-marker"></i> Boston</p>
                                </div>
                            </div>
                        </a>
                        <a class="col-md-4" href="#">
                            <div class="product-thumb">
                                <header class="product-header">
                                    <img src="../../img/800x600.png" alt="Image Alternative text" title="iPhone 5 iPad mini iPad 3" />
                                </header>
                                <div class="product-inner">
                                    <ul class="icon-group icon-list-rating" title="4/5 rating">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star-o"></i>
                                        </li>
                                    </ul>
                                    <h5 class="product-title">Electronics Big Deal</h5>
                                    <p class="product-desciption">Quam suscipit viverra phasellus laoreet conubia cubilia tellus</p>
                                    <div class="product-meta">
                                        <ul class="product-price-list">
                                            <li><span class="product-price">$132</span>
                                            </li>
                                            <li><span class="product-old-price">$276</span>
                                            </li>
                                            <li><span class="product-save">Save 48%</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <p class="product-location"><i class="fa fa-map-marker"></i> Boston</p>
                                </div>
                            </div>
                        </a>
                        <a class="col-md-4" href="#">
                            <div class="product-thumb">
                                <header class="product-header">
                                    <img src="../../img/800x600.png" alt="Image Alternative text" title="The Violin" />
                                </header>
                                <div class="product-inner">
                                    <ul class="icon-group icon-list-rating" title="4.2/5 rating">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star-half-empty"></i>
                                        </li>
                                    </ul>
                                    <h5 class="product-title">Violin Lessons</h5>
                                    <p class="product-desciption">Quam suscipit viverra phasellus laoreet conubia cubilia tellus</p>
                                    <div class="product-meta">
                                        <ul class="product-price-list">
                                            <li><span class="product-price">$85</span>
                                            </li>
                                            <li><span class="product-old-price">$202</span>
                                            </li>
                                            <li><span class="product-save">Save 42%</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <p class="product-location"><i class="fa fa-map-marker"></i> Boston</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="gap gap-small"></div>
                    
                    <!-- ad list of this advertiser,booth -->
                    <h3 class="mb20">Ad Post</h3>
                    <div class="row row-wrap">
                    	<div class="col-md-12">
	                    	<a class="product-thumb product-thumb-horizontal" href="#">
	                        <header class="product-header">
	                        	<c:choose>
								    <c:when test="${adPost.media_cover_url!=NULL}">
								        <img src="${adPost.media_cover_url}" alt="Image Alternative text" title="The Violin" /> 
								    </c:when>    
								    <c:otherwise>
								        <img src="/images/blank/800x600.png" alt="Image Alternative text" title="The Violin" /> 
								    </c:otherwise>
								</c:choose>
	                        </header>
	                        <div class="product-inner">
	                            <h5 class="product-title">AD Post Title - Bla Bla Bla ${adPost.post_title}</h5>
	                            <div class="product-desciption"> WARN org.springframework.web.servlet.PageNotFound - No mapping found for HTTP request with URI [/category/img/ame 'adogo' ${adPost.short_desc}</div>
	                            
	                            <div class="product-meta">
	                                <c:choose>
									    <c:when test="${adPost.create_datetime!=NULL}">
									        <div> ${adPost.create_datetime} </div>
									    </c:when>    
									    <c:otherwise>
									        <div id="pageTimer${adPost.global_id}">create date time is null</div>
									    </c:otherwise>
									</c:choose>
								
	                            </div>
	                            <p class="product-location">
	                            	<i class="fa fa-map-marker"></i> Admin ${adPost.post_author} &nbsp;&nbsp;
									<i class="fa fa-map-marker"></i>
									Tags:&nbsp;&nbsp;
									<c:set var="tags" value="${adPost.tags}" />
									<c:set var="delim" value="," />
									<c:set var="TagsArray" value="${fn:split(tags, delim)}" />
	
									<c:forEach var="tag" items="${TagsArray}">
										<span class="product-price">${tag}</span>
									</c:forEach>
								</p>
	                        </div>
	                    	</a>
	                    	
	                    	
	                    	<a class="product-thumb product-thumb-horizontal" href="#">
	                        <header class="product-header">
	                        	<c:choose>
								    <c:when test="${adPost.media_cover_url!=NULL}">
								        <img src="${adPost.media_cover_url}" alt="Image Alternative text" title="The Violin" /> 
								    </c:when>    
								    <c:otherwise>
								        <img src="/images/blank/800x600.png" alt="Image Alternative text" title="The Violin" /> 
								    </c:otherwise>
								</c:choose>
	                        </header>
	                        <div class="product-inner">
	                            <h5 class="product-title">AD Post Title - Bla Bla Bla ${adPost.post_title}</h5>
	                            <div class="product-desciption"> WARN org.springframework.web.servlet.PageNotFound - No mapping found for HTTP request with URI [/category/img/ame 'adogo' ${adPost.short_desc}</div>
	                            
	                            <div class="product-meta">
	                                <c:choose>
									    <c:when test="${adPost.create_datetime!=NULL}">
									        <div> ${adPost.create_datetime} </div>
									    </c:when>    
									    <c:otherwise>
									        <div id="pageTimer${adPost.global_id}">create date time is null</div>
									    </c:otherwise>
									</c:choose>
								
	                            </div>
	                            <p class="product-location">
	                            	<i class="fa fa-map-marker"></i> Admin ${adPost.post_author} &nbsp;&nbsp;
									<i class="fa fa-map-marker"></i>
									Tags:&nbsp;&nbsp;
									<c:set var="tags" value="${adPost.tags}" />
									<c:set var="delim" value="," />
									<c:set var="TagsArray" value="${fn:split(tags, delim)}" />
	
									<c:forEach var="tag" items="${TagsArray}">
										<span class="product-price">${tag}</span>
									</c:forEach>
								</p>
	                        </div>
	                    	</a>
	                    	
	                    	
	                    	<a class="product-thumb product-thumb-horizontal" href="#">
	                        <header class="product-header">
	                        	<c:choose>
								    <c:when test="${adPost.media_cover_url!=NULL}">
								        <img src="${adPost.media_cover_url}" alt="Image Alternative text" title="The Violin" /> 
								    </c:when>    
								    <c:otherwise>
								        <img src="/images/blank/800x600.png" alt="Image Alternative text" title="The Violin" /> 
								    </c:otherwise>
								</c:choose>
	                        </header>
	                        <div class="product-inner">
	                            <h5 class="product-title">AD Post Title - Bla Bla Bla ${adPost.post_title}</h5>
	                            <div class="product-desciption"> WARN org.springframework.web.servlet.PageNotFound - No mapping found for HTTP request with URI [/category/img/ame 'adogo' ${adPost.short_desc}</div>
	                            
	                            <div class="product-meta">
	                                <c:choose>
									    <c:when test="${adPost.create_datetime!=NULL}">
									        <div> ${adPost.create_datetime} </div>
									    </c:when>    
									    <c:otherwise>
									        <div id="pageTimer${adPost.global_id}">create date time is null</div>
									    </c:otherwise>
									</c:choose>
								
	                            </div>
	                            <p class="product-location">
	                            	<i class="fa fa-map-marker"></i> Admin ${adPost.post_author} &nbsp;&nbsp;
									<i class="fa fa-map-marker"></i>
									Tags:&nbsp;&nbsp;
									<c:set var="tags" value="${adPost.tags}" />
									<c:set var="delim" value="," />
									<c:set var="TagsArray" value="${fn:split(tags, delim)}" />
	
									<c:forEach var="tag" items="${TagsArray}">
										<span class="product-price">${tag}</span>
									</c:forEach>
								</p>
	                        </div>
	                    	</a>
                    	</div>
                    </div>
                    
                    
                    <!-- comments -->
                    <div class="gap gap-small"></div>
                    <div class="tabbable">
                        <ul class="nav nav-tabs" id="myTab">
                            <li class="active"><a href="#tab-3" data-toggle="tab"><i class="fa fa-comments"></i>Reviews</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="tab-3">
                                <!-- START COMMENTS -->
                                <ul class="comments-list">
                                    <li>
                                        <!-- COMMENT -->
                                        <article class="comment">
                                            <div class="comment-author">
                                                <img src="../../img/50x50.png" alt="Image Alternative text" title="Gamer Chick" />
                                            </div>
                                            <div class="comment-inner"><span class="comment-author-name">Joseph Hudson</span>
                                                <p class="comment-content">Mi volutpat mattis cum facilisis nunc platea tincidunt vehicula laoreet montes parturient urna</p><span class="comment-time">15 seconds ago</span><a class="comment-reply" href="#"><i class="fa fa-reply"></i> Reply</a><a class="comment-like" href="#"><i class="fa fa-heart"></i> 32</a>
                                            </div>
                                        </article>
                                    </li>
                                    <li>
                                        <!-- COMMENT -->
                                        <article class="comment">
                                            <div class="comment-author">
                                                <img src="../../img/50x50.png" alt="Image Alternative text" title="Ana 29" />
                                            </div>
                                            <div class="comment-inner"><span class="comment-author-name">Blake Abraham</span>
                                                <p class="comment-content">Vehicula potenti risus iaculis lacus laoreet porttitor aliquam massa mauris netus duis eu diam et</p><span class="comment-time">15 seconds ago</span><a class="comment-reply" href="#"><i class="fa fa-reply"></i> Reply</a><a class="comment-like" href="#"><i class="fa fa-heart"></i> 14</a>
                                            </div>
                                        </article>
                                    </li>
                                    <li>
                                        <!-- COMMENT -->
                                        <article class="comment">
                                            <div class="comment-author">
                                                <img src="../../img/50x50.png" alt="Image Alternative text" title="Afro" />
                                            </div>
                                            <div class="comment-inner"><span class="comment-author-name">Keith Churchill</span>
                                                <p class="comment-content">Ac placerat lacinia ultrices morbi ipsum non facilisis sed etiam arcu justo quam tellus magna nullam suscipit</p><span class="comment-time">15 seconds ago</span><a class="comment-reply" href="#"><i class="fa fa-reply"></i> Reply</a><a class="comment-like" href="#"><i class="fa fa-heart"></i> 6</a>
                                            </div>
                                        </article>
                                        <ul>
                                            <li>
                                                <!-- COMMENT -->
                                                <article class="comment">
                                                    <div class="comment-author">
                                                        <img src="../../img/50x50.png" alt="Image Alternative text" title="Bubbles" />
                                                    </div>
                                                    <div class="comment-inner"><span class="comment-author-name">Blake Hardacre</span>
                                                        <p class="comment-content">Turpis natoque molestie libero elementum placerat litora molestie primis lorem ipsum velit</p><span class="comment-time">15 seconds ago</span><a class="comment-reply" href="#"><i class="fa fa-reply"></i> Reply</a><a class="comment-like" href="#"><i class="fa fa-heart"></i> 38</a>
                                                    </div>
                                                </article>
                                            </li>
                                        </ul>
                                </ul>
                                <!-- END COMMENTS -->
                                <div class="text-center"><a class="btn btn-primary"><i class="fa fa-pencil"></i> Leave a Comment</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gap gap-small"></div>
                </div>
                <div class="col-md-3">
                    <div class="product-page-meta box">
                        <h4><strong>Mara Coiffeur</strong></h4>
                        <p>Mr. Roni is providing services for you which includes haircut, perm, hair color, doing hairstyle etc.<br/></p>
                        <a class="btn btn-primary btn-lg btn-block" href="#"  target="_blank">View Ad. Page</a>
                        <ul class="list product-page-meta-info">
                            <li>
                                <ul class="list product-page-meta-price-list">
                                    <li><span class="product-page-meta-title">List Price</span><span class="product-page-meta-price">$1000</span>
                                    </li>
                                    <li><span class="product-page-meta-title">Discount</span><span class="product-page-meta-price">77.5%</span>
                                    </li>
                                    <li><span class="product-page-meta-title">Savings</span><span class="product-page-meta-price">$775</span>
                                    </li>
                                </ul>
                            </li>
                            <li><span class="product-page-meta-title">Time Left to Buy</span>
                                <!-- COUNTDOWN -->
                                <div data-countdown="Aug 25, 2013 10:45:00" class="countdown countdown-inline"></div>
                            </li>
                            <li><span class="product-page-meta-title">5000+ bought</span>
                            </li>
                        </ul>
                    </div>
                    
                    <div><br/></div>
                    
                    <div class="sidebar-box">
                            <h5>Earned Certificates</h5>
                            <ul class="thumb-list">
                                <li>
                                    <a href="#">
                                        <img src="../../img/70x70.png" alt="Image Alternative text" title="Urbex Esch/Lux with Laney and Laaaaag" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Excellent Copywriting Certificate</a></h5>
                                        <p class="thumb-list-item-price">Level III</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="../../img/70x70.png" alt="Image Alternative text" title="AMaze" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Professional Photoghraphy Certificate</a></h5>
                                        <p class="thumb-list-item-price">Level IV</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="../../img/70x70.png" alt="Image Alternative text" title="waipio valley" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Awesome Good and Service Provider</a></h5>
                                        <p class="thumb-list-item-price">Level V</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="../../img/70x70.png" alt="Image Alternative text" title="waipio valley" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Good Customer Serivce Provider</a></h5>
                                        <ul class="icon-group icon-list-rating" title="5/5 rating">
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star-o"></i>
                                            </li>
                                            <li><i class="fa fa-star-o"></i>
                                            </li>
                                            <li><i class="fa fa-star-o"></i>
                                            </li>
                                            <li><i class="fa fa-star-o"></i>
                                        	</li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        
                     <div><br/></div>
                    
                    <div class="sidebar-box">
                            <h5>Adopted Marketing Means</h5>
                            <ul class="thumb-list">
                                <li>
                                    <a href="#">
                                        <img src="../../img/70x70.png" alt="Image Alternative text" title="Urbex Esch/Lux with Laney and Laaaaag" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Email Marketing</a></h5>
                                        <ul class="icon-group icon-list-rating" title="5/5 rating">
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star-o"></i>
                                            </li>
                                            <li><i class="fa fa-star-o"></i>
                                            </li>
                                            <li><i class="fa fa-star-o"></i>
                                        	</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="../../img/70x70.png" alt="Image Alternative text" title="AMaze" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Social Marketing</a></h5>
                                        <ul class="icon-group icon-list-rating" title="5/5 rating">
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star-o"></i>
                                            </li>
                                            <li><i class="fa fa-star-o"></i>
                                        	</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="../../img/70x70.png" alt="Image Alternative text" title="waipio valley" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="#">Search Engine Marketing</a></h5>
                                        <ul class="icon-group icon-list-rating" title="5/5 rating">
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star"></i>
                                            </li>
                                            <li><i class="fa fa-star-half-empty"></i>
                                        	</li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                </div>
            </div>

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
