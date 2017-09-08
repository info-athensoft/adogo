<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<form class="search-area form-group" action="search-result.jsp">
    <div class="container">
        <div class="row">
            <div class="col-md-8 clearfix">
                <label><i class="fa fa-search"></i><span>I want </span>
                </label>
                <div class="search-area-division search-area-division-input">
                    <input class="form-control" type="text" placeholder="input doing something or something" />
                </div>
            </div>
            <div class="col-md-3 clearfix">
                <label><i class="fa fa-map-marker"></i><span>In</span>
                </label>
                <div class="search-area-division search-area-division-location">
                    <input class="form-control" type="text" placeholder="input your city" />
                </div>
            </div>
            <div class="col-md-1">
                <button class="btn btn-block btn-white search-btn" type="submit">Search</button>
            </div>
        </div>
    </div>
</form>