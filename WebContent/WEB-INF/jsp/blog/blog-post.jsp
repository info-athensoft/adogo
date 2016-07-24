<%@ page contentType="text/html; charset=utf-8" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="title" value="My Profile"/>

<!DOCTYPE HTML>
<html>

<head>
	<!-- page: Index coupon layout 1 -->
    <title>Adogo - Online Branding and Marketing</title>
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
	<link rel="stylesheet" type="text/css" href="css/ie.css" />
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
        <jsp:include page="../inc/search_inc.jsp"></jsp:include>
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
                <!--  
                    <article class="post">
                        <header class="post-header">
                            <div class="fotorama">
                                <img src="img/900x400.png" alt="Image Alternative text" title="4 Strokes of Fun" />
                                <img src="img/900x400.png" alt="Image Alternative text" title="4 Strokes of Fun" />
                                <img src="img/900x400.png" alt="Image Alternative text" title="4 Strokes of Fun" />
                            </div>
                        </header>
                        <div class="post-inner">
                            <h3 class="post-title">Fusce integer ornare egestas montes</h3>
                            <ul class="post-meta">
                                <li><i class="fa fa-calendar"></i><a href="#">03 August, 2013</a>
                                </li>
                                <li><i class="fa fa-user"></i>by <a href="#">Oliver Ross</a>
                                </li>
                                <li><i class="fa fa-tags"></i><a href="#">Design</a>, <a href="#">Digital</a>
                                </li>
                                <li><i class="fa fa-comments"></i><a href="#">14 Comments</a>
                                </li>
                            </ul>
                            <div class="gap gap-mini"></div>
                            <p>Tortor libero placerat turpis arcu etiam maecenas mi consectetur vestibulum nibh a ridiculus tellus luctus ipsum erat senectus consectetur hendrerit euismod dapibus vestibulum vel bibendum quisque ac quis hac ut porttitor tempus fringilla molestie ad ultrices proin turpis lacinia venenatis rhoncus tortor tortor nisl cursus sodales torquent varius convallis nibh imperdiet nascetur inceptos maecenas suscipit natoque diam iaculis enim morbi dictumst nibh aptent nisi ornare volutpat eget fames etiam turpis elit ridiculus facilisis dis auctor netus lacinia dignissim dictum sodales tempus proin mollis cras id diam non nascetur cubilia hac hendrerit praesent tincidunt nullam etiam placerat sociis senectus faucibus at</p>
                            <h3>Porta euismod</h3>
                            <p>Varius vel porttitor tellus conubia varius nascetur turpis gravida consequat massa enim nam blandit elementum elit elementum ut viverra pretium hac erat litora aliquet id cum torquent aenean et dolor vulputate aliquet mattis mattis viverra ultrices aptent per neque ac id ridiculus a cum ligula interdum vitae placerat purus phasellus porttitor ligula egestas diam ullamcorper senectus habitasse volutpat sociis non congue potenti cursus dapibus vel lectus cras gravida suspendisse ridiculus lobortis luctus facilisi scelerisque iaculis ipsum eget congue nec malesuada convallis scelerisque facilisi natoque venenatis lobortis elit vivamus donec dolor orci nascetur semper nisi dui pharetra et quam dapibus cubilia mollis enim eleifend feugiat bibendum dis nullam arcu tempor dictum arcu platea imperdiet facilisi quisque arcu neque convallis leo mattis urna sagittis feugiat tortor integer suspendisse convallis morbi lobortis laoreet augue fermentum class congue tempor montes purus vitae quam augue inceptos nunc justo erat mauris cursus condimentum ultrices auctor diam metus lacinia molestie quis torquent nisl taciti magnis urna sed mollis magna suscipit tellus metus fusce imperdiet cubilia eu conubia quam lorem sapien libero parturient dis metus interdum fermentum curae laoreet nibh lorem posuere ac class feugiat placerat dis massa nisi lacus luctus ultricies mattis sapien sit varius risus consectetur</p>
                            <h3>Porta parturient nullam elementum</h3>
                            <p>At parturient quisque mattis interdum aliquam ipsum ridiculus phasellus imperdiet facilisis hendrerit hac sed odio cubilia interdum torquent cum laoreet facilisis primis aliquet class a ultrices amet litora viverra mus himenaeos id duis egestas purus dolor cursus aenean id quis sapien morbi ac integer neque tortor sit vestibulum magnis parturient nascetur sem vulputate ullamcorper leo rhoncus aptent etiam dictumst dictumst cum sociis vulputate tristique elementum diam nisl est sapien inceptos eget consequat sagittis class neque sem placerat hac tincidunt diam libero sagittis suspendisse nascetur nascetur lorem pretium semper viverra ac dis etiam dictumst maecenas magnis sapien cras magnis fusce posuere facilisis cubilia vehicula suspendisse parturient accumsan aliquam nibh pellentesque dis senectus quis euismod facilisis aliquam platea ac integer tempus elit sagittis congue blandit quam commodo massa tellus at turpis dis vehicula metus placerat eros mollis vestibulum in fames hac quam mattis ipsum odio potenti vulputate dictumst augue dis feugiat potenti ullamcorper amet lobortis netus suscipit nisi tincidunt turpis consequat posuere mus est lacus potenti varius quis ac ligula accumsan vestibulum nam euismod eleifend a fermentum amet neque leo a auctor metus in semper duis adipiscing leo magna senectus morbi placerat elementum pretium augue praesent sagittis etiam auctor nullam habitant fermentum malesuada accumsan orci dis sociosqu venenatis tempus quam amet bibendum sapien feugiat nibh libero nisi rhoncus libero pharetra ac justo blandit sociosqu elementum consequat lorem mollis adipiscing duis augue tellus nascetur mus tellus lacus nibh luctus faucibus fames fermentum sociis iaculis class lobortis vel molestie tincidunt enim platea quis etiam inceptos imperdiet malesuada hendrerit consectetur tincidunt quam pulvinar convallis molestie venenatis magna pellentesque dapibus congue duis justo cubilia penatibus ad nunc euismod netus luctus accumsan velit habitasse platea rutrum volutpat ut erat pellentesque proin sagittis est taciti aliquam tortor faucibus consectetur egestas praesent maecenas nullam curae egestas imperdiet consequat diam</p>
                            <p>Tincidunt congue semper consequat pharetra elementum laoreet fusce ante tempor dictumst penatibus viverra non scelerisque ligula vel montes magna morbi ultrices eros vitae euismod habitant suspendisse lobortis mauris duis urna porta neque volutpat natoque tempus feugiat nunc iaculis primis blandit nulla lacus lobortis praesent ullamcorper gravida semper mus volutpat dignissim volutpat lectus semper neque posuere primis suscipit nisl dictumst erat bibendum sollicitudin curabitur hendrerit venenatis interdum semper turpis lobortis tincidunt tortor duis arcu hendrerit nullam cubilia praesent leo porttitor aenean tristique duis hac potenti netus etiam felis montes elementum pretium risus himenaeos senectus cras luctus mi semper nullam nullam suspendisse diam ridiculus vehicula praesent id pharetra parturient varius inceptos ultricies lobortis tellus platea nulla non habitasse eleifend habitasse scelerisque proin magnis duis elit suscipit lectus sed phasellus arcu mollis dui felis dignissim quisque aliquam taciti nisi nec habitasse nam consectetur vel risus congue class habitasse inceptos proin iaculis quis scelerisque</p>
                        </div>
                    </article>
                   -->
                    <h2>Post a thread</h2>
                    <form action="/blog/post" method="post">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Author</label>
                                    <input type="text" name="author" placeholder="Type Author Name" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Category</label>
                                    <select class="form-control" name="categoryNo">
                                    	<option value="0">Choose a category</option>
                                    	<option value="1" >电子商务</option>
                                    	<option value="2">留学移民</option>
                                    	<option value="3">医疗健康</option>
                                    	<option value="4">教育培训</option>
                                    	<option value="5">会计税务</option>
                                    	<option value="6">法律事务</option>
                                    	<option value="7">投资理财</option>
                                    	<option value="8">创业合作</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                            	<div class="form-group">
                                    <label>Title</label>
                                    <input type="text" name="title" placeholder="Title" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Content</label>
                                    <textarea name="content" class="form-control" placeholder="Content of thread" rows="12"></textarea>
                                </div>
                            </div>
                        </div>
                        <input type="submit" name="post" value="Post now" class="btn btn-primary">
                    </form>
                    <div class="gap"></div>
                    
                </div>
                <div class="col-md-3">
                    <aside class="sidebar-right hidden-phone">
                        <div class="sidebar-box">
                            <h5>Blog Categories</h5>
                            <ul class="icon-list blog-category-list">
                                <li><a href="#"><i class="fa fa-angle-right"></i>Web</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Travel</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Design</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Lifestyle</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Digital</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Typography</a>
                                </li>
                            </ul>
                        </div>


                        

                        <div class="sidebar-box">
                            <h5>Popular Tags</h5>
                            <ul class="tags-list">
                                <li><a href="#">Lifestyle</a>
                                </li>
                                <li><a href="#">Design</a>
                                </li>
                                <li><a href="#">Business</a>
                                </li>
                                <li><a href="#">Travel</a>
                                </li>
                                <li><a href="#">Discounts</a>
                                </li>
                                <li><a href="#">Shopping</a>
                                </li>
                            </ul>
                        </div>
                    </aside>
                </div>
            </div>
        </div>

        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->

		<!-- Main footer -->
		<jsp:include page="../inc/footer_inc.jsp"></jsp:include>
		<!-- EMDS Main footer -->

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
        
        <script type="text/javascript">
		function activateAccount(acctId){
			
			//alert("activateAccount()");
			
			$.ajax({
				type:"post",
				url:"activate",
				dataType:"json",
				data: {	acctId:acctId},
				timeout : 5000,
				success:function(data){	
					var msg = data.info_msg;
					var userAccount = data.userAccount;
					$("#sec_activate").html(msg);
					$("#ua1").text(userAccount.acctId);
					$("#ua2").text(userAccount.acctName);
					$("#ua3").text(userAccount.password);
					$("#ua4").text(userAccount.acctStatus);
				}		
			});
		}
		
		function sendActivateLink(acctId,email){
			//var userAccount = accountObj;
			//var email = userAccount.primaryEmail;
			//var acctId = userAccount.acctId;
			
			
			var acctId = acctId;
			var email = email;
			
			//alert("sendActivateLink "+acctId+":"+email);
			
			$.ajax({
				type:"post",
				url:"activaterequest",
				dataType:"json",
				data: {	acctId:acctId, email:email },
				timeout : 5000,
				success:function(data){
					//var activateLink = data.activateLink;
					//location = "goactivateemail?activateLink="+activateLink+"&acctId="+acctId;
					location="index";
				}
			});
			
		}
	</script>
    </div>
</body>

</html>
