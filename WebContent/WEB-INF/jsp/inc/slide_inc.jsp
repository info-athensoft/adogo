<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="imagePathBase" value="/images/slide"/>
<c:set var="countdownDateTime" value="Jul 1, 2017 00:00:00"/>

<!-- slide images -->
<c:set var="imageTitle" value="adogo - online brands and advertising marketing"/>
<c:set var="slideImage_1" value="slide-1.jpg"/>
<c:set var="slideImage_2" value="slide-2.jpg"/>
<c:set var="slideImage_3" value="slide-3.jpg"/>
<c:set var="slideImage_4" value="slide-4.jpg"/>
<c:set var="slideImage_5" value="slide-5.jpg"/>



<div class="top-area">
    <div class="owl-carousel owl-slider" id="owl-carousel-slider" data-inner-pagination="true" data-white-pagination="true" data-nav="false">
        <div>
            <div class="bg-holder">
                <img src="${imagePathBase}/${slideImage_1}" alt="${imageTitle}" title="${imageTitle}" />
                <div class="bg-mask"></div>
                <div class="bg-front vert-center text-white text-center">
                    <h2 class="text-hero">The 2nd Round of Public Test Kicks Off</h2>
                    <div class="countdown countdown-big" data-countdown="${countdownDateTime}"></div><a class="btn btn-lg btn-ghost btn-white" href="#">Contact us via support@adogo.ca </a>
                </div>
            </div>
        </div>
        <div>
            <div class="bg-holder">
                <img src="${imagePathBase}/${slideImage_2}" alt="${imageTitle}" title="${imageTitle}" />
                <div class="bg-mask"></div>
                <div class="bg-front vert-center text-white text-center">
                    <h2 class="text-hero">New concept advertising</h2>
                    <div class="countdown countdown-big" data-countdown="${countdownDateTime}"></div><a class="btn btn-lg btn-ghost btn-white" href="#">Contact us via support@adogo.ca</a>
                </div>
            </div>
        </div>
        <div>
            <div class="bg-holder">
                <img src="${imagePathBase}/${slideImage_3}" alt="${imageTitle}" title="${imageTitle}" />
                <div class="bg-mask"></div>
                <div class="bg-front vert-center text-white text-center">
                    <h2 class="text-hero">New search style</h2>
                    <div class="countdown countdown-big" data-countdown="${countdownDateTime}"></div><a class="btn btn-lg btn-ghost btn-white" href="#">Contact us via support@adogo.ca</a>
                </div>
            </div>
        </div>
        <div>
            <div class="bg-holder">
                <img src="${imagePathBase}/${slideImage_4}" alt="${imageTitle}" title="${imageTitle}" />
                <div class="bg-mask"></div>
                <div class="bg-front vert-center text-white text-center">
                    <h2 class="text-hero">Your feedback is most valuable!</h2>
                    <div class="countdown countdown-big" data-countdown="${countdownDateTime}"></div><a class="btn btn-lg btn-ghost btn-white" href="#">Contact us via support@adogo.ca</a>
                </div>
            </div>
        </div>
        <div>
            <div class="bg-holder">
                <img src="${imagePathBase}/${slideImage_5}" alt="${imageTitle}" title="${imageTitle}" />
                <div class="bg-mask"></div>
                <div class="bg-front vert-center text-white text-center">
                    <h2 class="text-hero">More to Explore ...</h2>
                    <div class="countdown countdown-big" data-countdown="${countdownDateTime}"></div><a class="btn btn-lg btn-ghost btn-white" href="#">Contact us via support@adogo.ca</a>
                </div>
            </div>
        </div>
    </div>
</div>

