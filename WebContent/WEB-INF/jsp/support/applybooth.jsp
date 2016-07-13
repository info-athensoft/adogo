<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="title_faq" value="ADOGO品牌与广告推广平台 - 广告主入驻，获取免费展位"/>
<c:set var="sec1" value="1. 入驻提交材料和要求"/>

<c:set var="quest1_1" value="1.1 Logo或封面图片一枚"/>
<c:set var="answer1_1" value="这是作为您展位的图形标识，不满足以下要求可能导致入驻失败，因为这会影响顾客和消费者对您的展位和整个平台质量的评价。Logo必须是良好设计或者高清，没有Logo可以用封面图片替代。尺寸推荐800X600，最低不得小于360X270，最佳比例4:3。"/>

<c:set var="quest1_2" value="1.2 正式的生意名字"/>
<c:set var="answer1_2" value="这是作为您展位的文字标识，需真实有效，尽量与注册公司或现用招牌上的名称一致，是证明您生意身份的重要手段。一切虚假、隐瞒、盗用他人生意名称的行为将直接导致入驻失败，并永久失去获取平台任何服务的资格。英文或法文是必须的，其它语言的正式生意名称可以一并提交。对于个人的生意名称，不能经常改变，通常3个月可以申请修改一次，每次手续费为$20.00加币。"/>

<c:set var="quest1_3" value="1.3 生意简介"/>
<c:set var="answer1_3" value="这是用简洁明了的语言介绍您的生意，可以包括您的广告标语、经营范围、主要产品或服务、背景简介等等。应使用英语或法语，也可以一并提交其它语言的版本。同样地，内容需真实有效，否则会导致入驻失败，或展位回收。"/>

<c:set var="quest1_4" value="1.4 网站或主页地址"/>
<c:set var="answer1_4" value="这是您生意网站或者主页的URL地址，没有网站可以使用包括Facebook、博客等。网友点击展位下方HOME键，可以打开您的网站或者主页，有助提高您网站或主页的访问量和搜索排名效果；平台其他广告主带来的顾客也会点击您的网站，相互引流，一举多得！"/>

<c:set var="quest1_5" value="1.5 常用的电子邮件地址"/>
<c:set var="answer1_5" value="您需要提供一个经常使用的邮箱地址，正规的企业用邮箱和个人主要邮箱都是推荐使用的。平台会把您的邮件地址作为永久通行证的ID，并向您发送重要信息，因此一定要有效并妥善保管您的邮箱注册和安全信息。"/>

<c:set var="quest1_6" value="1.6 其它联系方式"/>
<c:set var="answer1_6" value="微信号码，QQ号码以及电话号码，都是欢迎提交的，方便用各种方式和我们保持联系。可以发送邮件到support@adogo.ca告诉我们，或直接在应用中添加联系人。"/>

<c:set var="quest1_7" value="1.7 人工咨询"/>
<c:set var="answer1_7" value="您可以用过加我们的微信账号，获得即时在线人工咨询。"/>

<c:set var="sec2" value="2. 入驻并获取展位流程"/>
<c:set var="quest2_1" value="2.1 标准入驻流程"/>
<c:set var="answer2_1" value="通过各种渠道联系我们，加客服微信好友，加入ADOGO微信群推广圈A，或者加入ADOGO微信群推广圈B（针对无法进行实名认证的网友），联系我们并发送以上提交材料到support@adogo.ca，等待1-3个工作日即可。如果您的材料和规格相去甚远，我们需要额外的时间来进行图片和文字上的加工，直到处理完毕。"/>

<c:set var="quest2_2" value="2.2 简易入驻流程"/>
<c:set var="answer2_2" value="直接阅读网站关于ADOGO介绍，联系我们并发送以上提交材料到support@adogo.ca，等待1-3个工作日即可。提交材料后随即加入ADOGO微信群推广圈。"/>

<c:set var="quest2_3" value="2.3 入驻成功并获得展位"/>
<c:set var="answer2_3" value="您提交的信息和材料经过审核和处理后，会被录入进平台的云服务器，一切就绪后，您会得到一个形象展位，可以通过分类搜索查看；符合条件的广告主展位将同时显示在首页。"/>

<c:set var="quest2_4" value="2.4 入驻成功后可获得额外的免费推广服务"/>
<c:set var="answer2_4" value="为了感谢您的支持，入驻成功后我们会给您进行一次免费的微信公众号的内容推送以及一次朋友圈推送。"/>

<c:set var="quest2_5" value="2.5 入驻失败的处理"/>
<c:set var="answer2_5" value="入驻失败的处理流程取决于是何种原因。情形一：如果因为入驻材料的提交不完整导致不足以制作和发布展位，我们将会等待您整理提交剩余资料和信息，直到入驻测试活动结束。情形二：如果是由于审核发现被提供的信息和资料和真实情况不符或者有虚假、误导、欺诈倾向，我们会向您正式发送电子邮件，敦促您进行重新检查，您只有一次机会主动提供真实资料进行补救。情形三：如果您提交的内容属于平台禁止的范围的，我们将不做任何说明地直接拒绝入驻申请。"/>

<c:set var="quest2_6" value="2.6 禁止入驻的行业或生意"/>
<c:set var="answer2_6" value="以下行业或生意将会被拒绝接受广告入驻：1.武器、爆炸物、管制刀具、军火类，2.各类毒品，3.淫秽音像制品和书籍，4.盗版书籍、盗版出版物、盗版音像制品、游戏软件和应用， 5.个人或商业隐私数据， 6.各类伪造证件、证书、成绩单服务， 7.成人性服务和其它形式的性服务，8.贩卖人口， 9.贩卖野生动植物、贩卖受保护的动植物、贩卖非法的动植物制品， 10.私自贩卖或转让化学品、处方药品或试剂、非法药品或试剂，来不不明的药品或试剂 ， 11.经营其它各种非法或威胁他人财产或生命安全的产品或服务"/>

<!DOCTYPE HTML>
<html>
<head>
    <title>FAQ | Adogo Online Brands and Advertising Marketing</title>
    <!-- meta info -->
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta name="keywords" content="Adogo Montreal Canada Online Brand and Ad Marketing" />
    <meta name="description" content="Adogo - The creative online brand and ad marketing platform">
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
	<link rel="stylesheet" type="text/css" href="/css/ie.css" />
<![endif]-->

    <!-- Your custom styles (blank file) -->
    <link rel="stylesheet" href="/css/mystyles.css">
</head>

<body class="boxed bg-cover" style="background-image: url(/img/backgrounds/s7.jpg)">

    <div class="global-wrap">

    <!-- //////////////////////////////////
	//////////////MAIN HEADER///////////// 
	////////////////////////////////////-->
        <!-- Main header -->
		<jsp:include page="../inc/nav_inc.jsp"></jsp:include>
		<!-- EMDS Main header -->
        
        <!-- LOGIN REGISTER LINKS CONTENT -->
        <jsp:include page="../inc/login_inc.jsp"></jsp:include>
        <!-- END LOGIN REGISTER LINKS CONTENT -->

        <!-- SEARCH AREA -->
        <!-- 
        <jsp:include page="inc/search_inc.jsp"></jsp:include>
         -->
        <!-- END SEARCH AREA -->

        <div class="gap"></div>


        <!-- //////////////////////////////////
	//////////////END MAIN HEADER////////// 
	////////////////////////////////////-->


        <!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->

	<div class="container">
            <div class="row row-wrap">
                <div class="col-md-9">
                	<div><h3><c:out value="${title_faq}"/></h3></div>
                	<br/> 
                	              	
                	<div><h5 class="panel-title"><c:out value="${sec1}"/></h5><br/></div>
                	
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-1"><c:out value="${quest1_1}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-1">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_1}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-2"><c:out value="${quest1_2}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-2">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_2}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-3"><c:out value="${quest1_3}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-3">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_3}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-4"><c:out value="${quest1_4}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-4">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_4}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-5"><c:out value="${quest1_5}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-5">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_5}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-6"><c:out value="${quest1_6}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-6">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_6}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1-7"><c:out value="${quest1_7}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-1-7">
                                <div class="panel-body">
                                    <p><c:out value="${answer1_7}"/></p>
                                </div>
                            </div>
                        </div>
                        </div>
                        
                        <!--  -->
                        <div><h5 class="panel-title"><c:out value="${sec2}"/></h5><br/></div>
                	
                    	<div class="panel-group" id="accordion2">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion2" href="#collapse-2-1"><c:out value="${quest2_1}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse in" id="collapse-2-1">
                                <div class="panel-body">
                                    <p><c:out value="${answer2_1}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion2" href="#collapse-2-2"><c:out value="${quest2_2}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-2-2">
                                <div class="panel-body">
                                    <p><c:out value="${answer2_2}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion2" href="#collapse-2-3"><c:out value="${quest2_3}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-2-3">
                                <div class="panel-body">
                                    <p><c:out value="${answer2_3}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion2" href="#collapse-2-4"><c:out value="${quest2_4}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-2-4">
                                <div class="panel-body">
                                    <p><c:out value="${answer2_4}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion2" href="#collapse-2-5"><c:out value="${quest2_5}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-2-5">
                                <div class="panel-body">
                                    <p><c:out value="${answer2_5}"/></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion2" href="#collapse-2-6"><c:out value="${quest2_6}"/></a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-2-6">
                                <div class="panel-body">
                                    <p><c:out value="${answer2_6}"/></p>
                                </div>
                            </div>
                        </div>
                	</div>
                </div>
                
                <div class="col-md-3">
                    <aside class="sidebar-right">
                        <h4>Still Have Questions?</h4>
                        <form class="box">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>E-mail</label>
                                <input type="text" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>Question</label>
                                <textarea class="form-control"></textarea>
                            </div>
                            <input type="submit" class="btn btn-primary" value="Ask - Under construction" />
                        </form>
                    </aside>
                </div>
            </div>
            <div class="gap gap-small"></div>
        </div>

        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->



        <!-- //////////////////////////////////
	//////////////MAIN FOOTER////////////// 
	////////////////////////////////////-->
		<!-- Main footer -->
		<jsp:include page="../inc/footer_inc.jsp"></jsp:include>
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
