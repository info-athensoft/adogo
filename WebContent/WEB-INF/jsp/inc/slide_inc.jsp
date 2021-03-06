<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="imagePathBase" value="/images/slide"/>
<c:set var="countdownDateTime" value="Oct 1, 2017 00:00:00"/>

<!-- slide images -->
<c:set var="imageTitle" value="adogo - online brands and advertising marketing"/>
<c:set var="slideImage_1" value="slide-1.jpg"/>
<c:set var="slideImage_2" value="slide-2.jpg"/>
<c:set var="slideImage_3" value="slide-3.jpg"/>
<c:set var="slideImage_4" value="slide-4.jpg"/>
<c:set var="slideImage_5" value="slide-5.jpg"/>

<c:set var="slideImage_6" value="slide-6.jpg"/>
<c:set var="slideImage_7" value="slide-7.jpg"/>
<c:set var="slideImage_8" value="slide-8.jpg"/>
<c:set var="slideImage_9" value="slide-9.jpg"/>
<c:set var="slideImage_10" value="slide-10.jpg"/>

<c:set var="slideImage_11" value="slide-11.jpg"/>
<c:set var="slideImage_12" value="slide-12.jpg"/>


<div class="top-area">
    <div class="owl-carousel owl-slider" id="owl-carousel-slider" data-inner-pagination="true" data-white-pagination="true" data-nav="false">
        <div>
            <div class="bg-holder">
                <img src="${imagePathBase}/${slideImage_6}" alt="${imageTitle}" title="${imageTitle}" />
                <div class="bg-mask"></div>
                <div class="bg-front vert-center text-white text-center">
                    <h2 class="text-hero">Adogo Beta 1 Public Test is Coming</h2>
                    <div class="countdown countdown-big" data-countdown="${countdownDateTime}"></div><a class="btn btn-lg btn-ghost btn-white" href="#">Contact us via support@adogo.ca </a>
                </div>
            </div>
        </div>
        <div>
            <div class="bg-holder">
                <img src="${imagePathBase}/${slideImage_7}" alt="${imageTitle}" title="${imageTitle}" />
                <div class="bg-mask"></div>
                <div class="bg-front vert-center text-white text-center">
                    <h2 class="text-hero">New concept advertising</h2>
                    <div class="countdown countdown-big" data-countdown="${countdownDateTime}"></div><a class="btn btn-lg btn-ghost btn-white" href="#">Contact us via support@adogo.ca</a>
                </div>
            </div>
        </div>
        <div>
            <div class="bg-holder">
                <img src="${imagePathBase}/${slideImage_8}" alt="${imageTitle}" title="${imageTitle}" />
                <div class="bg-mask"></div>
                <div class="bg-front vert-center text-white text-center">
                    <h2 class="text-hero">New search style</h2>
                    <div class="countdown countdown-big" data-countdown="${countdownDateTime}"></div><a class="btn btn-lg btn-ghost btn-white" href="#">Contact us via support@adogo.ca</a>
                </div>
            </div>
        </div>
        <div>
            <div class="bg-holder">
                <img src="${imagePathBase}/${slideImage_9}" alt="${imageTitle}" title="${imageTitle}" />
                <div class="bg-mask"></div>
                <div class="bg-front vert-center text-white text-center">
                    <h2 class="text-hero">Your feedback is most valuable!</h2>
                    <div class="countdown countdown-big" data-countdown="${countdownDateTime}"></div><a class="btn btn-lg btn-ghost btn-white" href="#">Contact us via support@adogo.ca</a>
                </div>
            </div>
        </div>
        <div>
            <div class="bg-holder">
                <img src="${imagePathBase}/${slideImage_10}" alt="${imageTitle}" title="${imageTitle}" />
                <div class="bg-mask"></div>
                <div class="bg-front vert-center text-white text-center">
                    <h2 class="text-hero">More to Explore ...</h2>
                    <div class="countdown countdown-big" data-countdown="${countdownDateTime}"></div><a class="btn btn-lg btn-ghost btn-white" href="#">Contact us via support@adogo.ca</a>
                </div>
            </div>
        </div>
    </div>
</div>
