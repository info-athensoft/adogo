<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	<div id="login-dialog" class="mfp-with-anim mfp-hide mfp-dialog clearfix">
    <i class="fa fa-sign-in dialog-icon"></i>
    <h3>Member Login</h3>
    <h5>Welcome back, friend. Login to get started</h5>
    <form class="dialog-form" action="/signin" method="post">
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
    <form class="dialog-form" action="/signup" method="post">
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


<div id="public-test-dialog" class="mfp-with-anim mfp-hide mfp-dialog clearfix">
    <i class="fa fa-edit dialog-icon"></i>
    <h3>商家申请参加内部测试</h3>
    <h5>内测期间入驻的商家，将免费获得展位</h5>
    <form class="dialog-form">
        <label>选择一：电子邮件申请</label>
        <h5>站内查看入驻要求和相关说明</h5>
        <h5>请致邮到  support@adogo.ca</h5>
        <h5>请注明标题"参加ADOGO内测"</h5>
        <label>选择二：微信申请</label>
        <h5>加微信好友  athens314</h5>
        <div><img src="/img/logos/athens_wechat_qr_code.jpg" width="80"/></div>
    </form>
</div>


