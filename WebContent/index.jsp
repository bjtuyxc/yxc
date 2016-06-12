<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<script src="js/jquery-1.11.1.min.js"></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<!-- //fonts -->
</head>
  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp"><h1><img src="images/logo.png" alt="" /></h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<div class="top-search">
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
					<input type="submit" value=" ">
				</form>
			</div>
			<div class="header-top-right">
				<div class="file">
					<a href="upload.html">上传</a>
				</div>	
				<div class="signin">
					
				<%
				   String email =(String)request.getSession().getAttribute("username"); 
				   System.out.println("user:"+email);
				   if(email != null){
				%>					
				<a href="" class="play-icon popup-with-zoom-anim"><%=email %></a>
				<a href="" class="play-icon popup-with-zoom-anim" onclick="logout();">注销</a>
					<%} %>
					
				<%					  
			   		if(email == null){
				%>					
					<a href="#small-dialog3" class="play-icon popup-with-zoom-anim">注册</a>
				<%} %>
				
				<script>
					function logout(){
						$.ajax({
					        type: 'post',  
					        url: '/FaceYxc/com.yxc.servlet/LoginServlet',  
					        data: {
					      	'email':null,
					      	'password':null,
					      	'tel':null,
					        },
					        error:function (data){
					        	window.location.reload();
					        }
						});
					}
				</script>
					
					<!-- pop-up-box -->
									<script type="text/javascript" src="js/modernizr.custom.min.js"></script>    
									<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
									<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
									<!--//pop-up-box -->
									<div id="small-dialog2" class="mfp-hide">
										<h3>创建账户</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">使用Facebook注册</a>
											</div>
											<div class="chrome-button">
												<a href="#">使用Google注册</a>
											</div>
											<div class="button-bottom">
												<p>已有账户？ <a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="signup">
											<form>
												<input type="text" class="email" placeholder="手机号" maxlength="11" pattern="[1-9]{1}\d{9}" title="请输入一个有效的手机号码" />
											</form>
											<div class="continue-button">
												<a href="#small-dialog3" class="hvr-shutter-out-horizontal play-icon popup-with-zoom-anim">下一步</a>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>	
									<div id="small-dialog3" class="mfp-hide">
										<h3>创建账户</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">使用Facebook注册</a>
											</div>
											<div class="chrome-button">
												<a href="#">使用Google注册</a>
											</div>
											<div class="button-bottom">
												<p>已有账户？ <a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="signup">
											<form id="registerForm" onsubmit="reg();">
												<input type="text" class="email" id="email" placeholder="邮箱地址" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="请输入有效的邮箱地址"/>
												<input type="password" id="password" placeholder="密码" required="required" pattern=".{6,}" title="需要至少六个字符" autocomplete="off" />
												<input type="text" class="email" id="tel" placeholder="手机号" maxlength="11" pattern="[1-9]{1}\d{10}" title="请输入有效的手机号码" />
												<input type="submit"  value="注册"/>
											</form>
										</div>
										
										<script type="text/javascript">
							
										function reg() {
											var form = document.getElementById('registerForm');
											var email = document.getElementById("email").value;
											var password = document.getElementById("password").value;
											var tel = document.getElementById("tel").value;
											
											$.ajax({
										        type: 'post',  
										        url: '/FaceYxc/com.yxc.servlet/RegisterServlet',  
										        data: {
										      	'email':email,
										      	'password':password,
										      	'tel':tel,
										        }
											});
												
										};

										</script>
										<div class="clearfix"> </div>
									</div>	
									<div id="small-dialog7" class="mfp-hide">
										<h3>创建账户</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">使用Facebook注册</a>
											</div>
											<div class="chrome-button">
												<a href="#">使用Google注册</a>
											</div>
											<div class="button-bottom">
												<p>已有账户？<a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="signup">
											<form action="upload.html">
												<input type="text" class="email" placeholder="Ã©ÂÂ®Ã§Â®Â±Ã¥ÂÂ°Ã¥ÂÂ" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Ã¨Â¯Â·Ã¨Â¾ÂÃ¥ÂÂ¥Ã¦ÂÂÃ¦ÂÂÃ§ÂÂÃ©ÂÂ®Ã§Â®Â±Ã¥ÂÂ°Ã¥ÂÂ"/>
												<input type="password" placeholder="Ã¥Â¯ÂÃ§Â Â" required="required" pattern=".{6,}" title="Ã©ÂÂÃ¨Â¦ÂÃ¨ÂÂ³Ã¥Â°ÂÃ¥ÂÂ­Ã¤Â¸ÂªÃ¥Â­ÂÃ§Â¬Â¦" autocomplete="off" />
												<input type="submit"  value="Ã§ÂÂ»Ã¥Â½Â"/>
											</form>
										</div>
										<div class="clearfix"></div>
									</div>		
									<div id="small-dialog4" class="mfp-hide">
										<h3>Feedback</h3> 
										<div class="feedback-grids">
											<div class="feedback-grid">
												<p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
											</div>
											<div class="button-bottom">
												<p><a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign in</a> to get started.</p>
											</div>
										</div>
									</div>
									<div id="small-dialog5" class="mfp-hide">
										<h3>Help</h3> 
											<div class="help-grid">
												<p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
											</div>
											<div class="help-grids">
												<div class="help-button-bottom">
													<p><a href="#small-dialog4" class="play-icon popup-with-zoom-anim">Feedback</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Lorem ipsum dolor sit amet</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Nunc vitae rutrum enim</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris at volutpat leo</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris vehicula rutrum velit</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Aliquam eget ante non orci fac</a></p>
												</div>
											</div>
									</div>
									<div id="small-dialog6" class="mfp-hide">
										<div class="video-information-text">
											<h4>Video information & settings</h4>
											<p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
											<ol>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
											</ol>
										</div>
									</div>
									<script>
											$(document).ready(function() {
											$('.popup-with-zoom-anim').magnificPopup({
												type: 'inline',
												fixedContentPos: false,
												fixedBgPos: true,
												overflowY: 'auto',
												closeBtnInside: true,
												preloader: false,
												midClick: true,
												removalDelay: 300,
												mainClass: 'my-mfp-zoom-in'
											});
																											
											});
									</script>	
				</div>
				<div class="signin">
					<%					  
			   			if(email == null){
					%>					
					<a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a> 
					<%} %>	
					<div id="small-dialog" class="mfp-hide">
						<h3>登录</h3>
						<div class="social-sits">
							<div class="facebook-button">
								<a href="#">使用Facebook注册</a>
							</div>
							<div class="chrome-button">
								<a href="#">使用Google注册</a>
							</div>
							<div class="button-bottom">
								<p>新账户? <a href="#small-dialog2" class="play-icon popup-with-zoom-anim">注册</a></p>
							</div>
						</div>
						<div class="signup">
							<form id="loginForm" onsubmit="login();">
								<input type="text" class="email" id="email" placeholder="请输入邮箱地址" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?"/>
								<input type="password" id="password" placeholder="密码" required="required" pattern=".{6,}" title="需要至少六个字符" autocomplete="off" />
								<input type="submit"  value="登录"/>
							</form>
							
							<script type="text/javascript">
							
							function login() {
								var form = document.getElementById('loginForm');
								var email = document.getElementById("email").value;
								var password = document.getElementById("password").value;
								
								$.ajax({
							        type: 'post',  
							        url: '/FaceYxc/com.yxc.servlet/LoginServlet',  
							        data: {
							      	'email':email,
							      	'password':password,
							        },
							        async: false,
							        error:function(){
							        	window.location.reload();
							        },
								}); 
							};

						</script>
							<div class="forgot">
								<a href="#">忘记密码</a>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
        </div>
		<div class="clearfix"> </div>
      </div>
    </nav>
	
        <div class="col-sm-3 col-md-2 sidebar">
			<div class="top-navigation">
				<div class="t-menu">MENU</div>
				<div class="t-img">
					<img src="images/lines.png" alt="" />
				</div>
				<div class="clearfix"> </div>
			</div>
				<div class="drop-navigation drop-navigation">
				  <ul class="nav nav-sidebar">
					<li><a href="index.jsp" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
					<li><a href="shows.html" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>电视节目</a></li>
					<li><a href="history.html" class="sub-icon"><span class="glyphicon glyphicon-home glyphicon-hourglass" aria-hidden="true"></span>历史</a></li>
					<li><a href="#" class="menu1"><span class="glyphicon glyphicon-film" aria-hidden="true"></span>影片<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-2">
							<li><a href="movies.html">英语</a></li>                                             
							<li><a href="movies.html">中文</a></li>
						</ul>
						<!-- script-for-menu -->
						<script>
							$( "li a.menu1" ).click(function() {
							$( "ul.cl-effect-2" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<li><a href="#" class="menu"><span class="glyphicon glyphicon-film glyphicon-king" aria-hidden="true"></span>体育<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-1">
							<li><a href="sports.html">足球</a></li>                                             
							<li><a href="sports.html">曲棍球</a></li>
							<li><a href="sports.html">网球</a></li> 
						</ul>
						<!-- script-for-menu -->
						<script>
							$( "li a.menu" ).click(function() {
							$( "ul.cl-effect-1" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<li><a href="movies.html" class="song-icon"><span class="glyphicon glyphicon-music" aria-hidden="true"></span>歌曲</a></li>
					<li><a href="news.html" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>新闻</a></li>
				  </ul>
				  <!-- script-for-menu -->
						<script>
							$( ".top-navigation" ).click(function() {
							$( ".drop-navigation" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<div class="side-bottom">
						<div class="side-bottom-icons">
							<ul class="nav2">
								<li><a href="#" class="facebook"> </a></li>
								<li><a href="#" class="facebook twitter"> </a></li>
								<li><a href="#" class="facebook chrome"> </a></li>
								<li><a href="#" class="facebook dribbble"> </a></li>
							</ul>
						</div>
						<div class="copyright">
							<p>Copyright &copy; 2016.Team name My22 rights reserved.</p>
						</div>
					</div>
				</div>
        </div>
         <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="main-grids">
				<div class="top-grids">
					<div class="recommended-info">
						<h3>最近播放</h3>
					</div>
					<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
						<div class="resent-grid-img recommended-grid-img">
							<a href="single.jsp"><img src="images/t1.jpg" alt="" /></a>
							<div class="time">
								<p>123:04</p>
							</div>
							<div class="clck">
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
							</div>
						</div>
						<div class="resent-grid-info recommended-grid-info">
							<h3><a href="single.jsp" class="title title-info">《星球大战：原力觉醒》 最经典科幻系列归来></a></a></h3>
							<ul>
								<li><p class="author author-info"><a href="#" class="author">电影频道</a></p></li>
								<li class="right-list"><p class="views views-info">1236.9万</p></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
						<div class="resent-grid-img recommended-grid-img">
							<a href="single.jsp"><img src="images/t2.jpg" alt="" /></a>
							<div class="time">
								<p>47:23</p>
							</div>
							<div class="clck">
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
							</div>
						</div>
						<div class="resent-grid-info recommended-grid-info">
							<h3><a href="single.jsp" class="title title-info">《旋风十一人》大结局 胡歌江疏影实力虐狗</a></a></h3>
							<ul>
								<li><p class="author author-info"><a href="#" class="author">电视剧放送</a></p></li>
								<li class="right-list"><p class="views views-info">986.6万</p></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 resent-grid recommended-grid slider-top-grids">
						<div class="resent-grid-img recommended-grid-img">
							<a href="single.jsp"><img src="images/t3.jpg" alt="" /></a>
							<div class="time">
								<p>114:04</p>
							</div>
							<div class="clck">
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
							</div>
						</div>
						<div class="resent-grid-info recommended-grid-info">
							<h3><a href="single.jsp" class="title title-info">麦田电影院独家解读《一一》 杨德昌写给台北的一封情书</a></a></h3>
							<ul>
								<li><p class="author author-info"><a href="#" class="author">精品电影展</a></p></li>
								<li class="right-list"><p class="views views-info">719.2万</p></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="recommended">
					<div class="recommended-grids">
						<div class="recommended-info">
							<h3>动画片</h3>
						</div>
						<script src="js/responsiveslides.min.js"></script>
						 <script>
							// You can also use "$(window).load(function() {"
							$(function () {
							  // Slideshow 4
							  $("#slider3").responsiveSlides({
								auto: true,
								pager: false,
								nav: true,
								speed: 500,
								namespace: "callbacks",
								before: function () {
								  $('.events').append("<li>before event fired.</li>");
								},
								after: function () {
								  $('.events').append("<li>after event fired.</li>");
								}
							  });
						
							});
						  </script>
						<div  id="top" class="callbacks_container">
							<ul class="rslides" id="slider3">
								<li>
									<div class="animated-grids">
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>107:34</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">驯龙高手1</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">298.2万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c1.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>116:23</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">冰雪奇缘</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">589.6万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c2.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>122:45</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">功夫熊猫2</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">243.3万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c3.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>104:34</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">亚瑟圣诞</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">269.3万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
								</li>
								<li>
									<div class="animated-grids">
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c1.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>124:42</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">冰雪奇缘</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">589.6万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c2.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>122:45</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">功夫熊猫2</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">243.3万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c3.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>104:34</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">亚瑟圣诞</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">269.3万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>107:34</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">驯龙高手1</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">298.2万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
								</li>
								<li>
									<div class="animated-grids">
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c3.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>104:34</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">亚瑟圣诞</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">269.3万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>107:34</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">驯龙高手1</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">298.2万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c1.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>124:42</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">冰雪奇缘</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">589.6万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c2.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>122:45</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">功夫熊猫2</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">243.3万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
								</li>
								<li>
									<div class="animated-grids">
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>107:34</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">驯龙高手1</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">298.2万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c1.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>124:42</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">冰雪奇缘</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">589.6万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c2.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>122:45</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">功夫熊猫2</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">243.3万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="single.jsp"><img src="images/c3.jpg" alt="" /></a>
												<div class="time small-time slider-time">
													<p>104:34</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div>
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.jsp" class="title">亚瑟圣诞</a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="#" class="author">动画剧场</a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">269.3万</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="recommended">
					<div class="recommended-grids">
						<div class="recommended-info">
							<h3>推荐</h3>
						</div>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n7.jpg" alt="" /></a>
								<div class="time small-time">
									<p>4:57</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">航拍：京港澳高速堵车10公里 车辆排成长龙</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">新闻天下</a></p></li>
									<li class="right-list"><p class="views views-info">127.6万</p></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n8.jpg" alt="" /></a>
								<div class="time small-time">
									<p>9:34</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">安徽一万达广场当众播色情视频 网友呼叫王思聪</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">新闻速递</a></p></li>
									<li class="right-list"><p class="views views-info">548.6万</p></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n10.jpg" alt="" /></a>
								<div class="time small-time">
									<p>6:34</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">两鸭一鸡成网红 被绑后备箱乘车</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">新闻速递</a></p></li>
									<li class="right-list"><p class="views views-info">353.2万</p></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/n5.jpg" alt="" /></a>
								<div class="time small-time">
									<p>7:34</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">富二代醉驾奔驰严重超速追尾 5人当场身亡</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">播客实验室</a></p></li>
									<li class="right-list"><p class="views views-info">421.3万</p></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="recommended-grids">
						
						
						
						
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="recommended">
					<div class="recommended-grids">
						<div class="recommended-info">
							<h3>体育</h3>
						</div>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/sp4.jpg" alt="" /></a>
								<div class="time small-time">
									<p>7:30</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">【集锦】活塞101-106骑士 三巨头81分全队8次传球进攻</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">NBA放送</a></p></li>
									<li class="right-list"><p class="views views-info">125.6万</p></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/g2.jpg" alt="" /></a>
								<div class="time small-time">
									<p>9:34</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">骑士三巨头狂砍81分</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">爱看NBA</a></p></li>
									<li class="right-list"><p class="views views-info">54.9万</p></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/sp1.jpg" alt="" /></a>
								<div class="time small-time">
									<p>5:34</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">WWE巨星希莫斯叫嚣曼联队长鲁尼</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">WWE观察</a></p></li>
									<li class="right-list"><p class="views views-info">245.3万</p></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/g3.jpg" alt="" /></a>
								<div class="time small-time">
									<p>6:55</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">马刺32分大胜帕克变速连过5人</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">NBA速递</a></p></li>
									<li class="right-list"><p class="views views-info">145.6万</p></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="recommended-grids">
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/we2.jpg" alt=""></a>
								<div class="time small-time">
									<p>7:30</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">内马尔50大过人集锦</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">国际足球</a></p></li>
									<li class="right-list"><p class="views views-info">97.3万</p></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/we1.jpg" alt=""></a>
								<div class="time small-time">
									<p>2:34</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">英超第34轮看球听歌</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">英超频道</a></p></li>
									<li class="right-list"><p class="views views-info">77.5万</p></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/we4.jpg" alt=""></a>
								<div class="time small-time">
									<p>5:34</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">中网女双决赛首盘</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">网球频道</a></p></li>
									<li class="right-list"><p class="views views-info">63.1万</p></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.jsp"><img src="images/we3.jpg" alt=""></a>
								<div class="time small-time">
									<p>6:55</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.jsp" class="title">小德获昆仑山中网MVP</a></h5>
								<ul>
									<li><p class="author author-info"><a href="#" class="author">网球频道</a></p></li>
									<li class="right-list"><p class="views views-info">110.1万</p></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<!-- footer -->
			<div class="footer">
				<div class="footer-grids">
					<div class="footer-top">
						<div class="footer-top-nav">
							<ul>
								<li><a href="about.html">关于</a></li>
								<li><a href="press.html">Press</a></li>
								<li><a href="copyright.html">Copyright</a></li>
								<li><a href="creators.html">创作者</a></li>
								<li><a href="#">广告</a></li>
								<li><a href="developers.html">开发者</a></li>
							</ul>
						</div>
						<div class="footer-bottom-nav">
							<ul>
								<li><a href="terms.html">条款</a></li>
								<li><a href="privacy.html">隐私</a></li>
								<li><a href="#small-dialog4" class="play-icon popup-with-zoom-anim">反馈</a></li>
								<li><a href="privacy.html">政策&安全 </a></li>
								<li><a href="try.html">尝试点新的东西！</a></li>
								<li><p>Copyright &copy; 2016.Team name My22 rights reserved.</p></li>
							</ul>
						</div>
					</div>
					<div class="footer-bottom">
						<ul>
							<li class="languages">
								<select class="form-control bfh-countries" data-country="US">
									<option value="">选择语言</option>
									<option>Spanish</option>
									<option>French</option>
									<option>German</option>
									<option>Italian</option>
									<option>Chinese</option>
									<option>Tagalog</option>
									<option>Polish</option>
									<option>Korean</option>
									<option>Vietnamese</option>
									<option>Portuguese</option>
									<option>Japanese</option>
									<option>Greek</option>
									<option>Arabic</option>
									<option>Hindi (urdu)</option>
									<option>Russian</option>
									<option>Yiddish</option>
									<option>Thai (laotian)</option>
									<option>Persian</option>
									<option>French Creole</option>
									<option>Armenian</option>
									<option>Navaho</option>
									<option>Hungarian</option>
									<option>Hebrew</option>
									<option>Dutch</option>
									<option>Mon-khmer (cambodian)</option>
									<option>Gujarathi</option>
									<option>Ukrainian</option>
									<option>Czech</option>
									<option>Pennsylvania Dutch</option>
									<option>Miao (hmong)</option>
									<option>Norwegian</option>
									<option>Slovak</option>
									<option>Swedish</option>
									<option>Serbocroatian</option>
									<option>Kru</option>
									<option>Rumanian</option>
									<option>Lithuanian</option>
									<option>Finnish</option>
									<option>Panjabi</option>
									<option>Formosan</option>
									<option>Croatian</option>
									<option>Turkish</option>
									<option>Ilocano</option>
									<option>Bengali</option>
									<option>Danish</option>
									<option>Syriac</option>
									<option>Samoan</option>
									<option>Malayalam</option>
									<option>Cajun</option>
									<option>Amharic</option>
								</select>
							</li>
							<li class="languages">
								<select class="form-control bfh-countries">
									<option value="">选择国家</option>
									<option value="AFG">Afghanistan</option>
									<option value="ALA">Åland Islands</option>
									<option value="ALB">Albania</option>
									<option value="DZA">Algeria</option>
									<option value="ASM">American Samoa</option>
									<option value="AND">Andorra</option>
									<option value="AGO">Angola</option>
									<option value="AIA">Anguilla</option>
									<option value="ATA">Antarctica</option>
									<option value="ATG">Antigua and Barbuda</option>
									<option value="ARG">Argentina</option>
									<option value="ARM">Armenia</option>
									<option value="ABW">Aruba</option>
									<option value="AUS">Australia</option>
									<option value="AUT">Austria</option>
									<option value="AZE">Azerbaijan</option>
									<option value="BHS">Bahamas</option>
									<option value="BHR">Bahrain</option>
									<option value="BGD">Bangladesh</option>
									<option value="BRB">Barbados</option>
									<option value="BLR">Belarus</option>
									<option value="BEL">Belgium</option>
									<option value="BLZ">Belize</option>
									<option value="BEN">Benin</option>
									<option value="BMU">Bermuda</option>
									<option value="BTN">Bhutan</option>
									<option value="BOL">Bolivia, Plurinational State of</option>
									<option value="BES">Bonaire, Sint Eustatius and Saba</option>
									<option value="BIH">Bosnia and Herzegovina</option>
									<option value="BWA">Botswana</option>
									<option value="BVT">Bouvet Island</option>
									<option value="BRA">Brazil</option>
									<option value="IOT">British Indian Ocean Territory</option>
									<option value="BRN">Brunei Darussalam</option>
									<option value="BGR">Bulgaria</option>
									<option value="BFA">Burkina Faso</option>
									<option value="BDI">Burundi</option>
									<option value="KHM">Cambodia</option>
									<option value="CMR">Cameroon</option>
									<option value="CAN">Canada</option>
									<option value="CPV">Cape Verde</option>
									<option value="CYM">Cayman Islands</option>
									<option value="CAF">Central African Republic</option>
									<option value="TCD">Chad</option>
									<option value="CHL">Chile</option>
									<option value="CHN">China</option>
									<option value="CXR">Christmas Island</option>
									<option value="CCK">Cocos (Keeling) Islands</option>
									<option value="COL">Colombia</option>
									<option value="COM">Comoros</option>
									<option value="COG">Congo</option>
									<option value="COD">Congo, the Democratic Republic of the</option>
									<option value="COK">Cook Islands</option>
									<option value="CRI">Costa Rica</option>
									<option value="CIV">Côte d'Ivoire</option>
									<option value="HRV">Croatia</option>
									<option value="CUB">Cuba</option>
									<option value="CUW">Curaçao</option>
									<option value="CYP">Cyprus</option>
									<option value="CZE">Czech Republic</option>
									<option value="DNK">Denmark</option>
									<option value="DJI">Djibouti</option>
									<option value="DMA">Dominica</option>
									<option value="DOM">Dominican Republic</option>
									<option value="ECU">Ecuador</option>
									<option value="EGY">Egypt</option>
									<option value="SLV">El Salvador</option>
									<option value="GNQ">Equatorial Guinea</option>
									<option value="ERI">Eritrea</option>
									<option value="EST">Estonia</option>
									<option value="ETH">Ethiopia</option>
									<option value="FLK">Falkland Islands (Malvinas)</option>
									<option value="FRO">Faroe Islands</option>
									<option value="FJI">Fiji</option>
									<option value="FIN">Finland</option>
									<option value="FRA">France</option>
									<option value="GUF">French Guiana</option>
									<option value="PYF">French Polynesia</option>
									<option value="ATF">French Southern Territories</option>
									<option value="GAB">Gabon</option>
									<option value="GMB">Gambia</option>
									<option value="GEO">Georgia</option>
									<option value="DEU">Germany</option>
									<option value="GHA">Ghana</option>
									<option value="GIB">Gibraltar</option>
									<option value="GRC">Greece</option>
									<option value="GRL">Greenland</option>
									<option value="GRD">Grenada</option>
									<option value="GLP">Guadeloupe</option>
									<option value="GUM">Guam</option>
									<option value="GTM">Guatemala</option>
									<option value="GGY">Guernsey</option>
									<option value="GIN">Guinea</option>
									<option value="GNB">Guinea-Bissau</option>
									<option value="GUY">Guyana</option>
									<option value="HTI">Haiti</option>
									<option value="HMD">Heard Island and McDonald Islands</option>
									<option value="VAT">Holy See (Vatican City State)</option>
									<option value="HND">Honduras</option>
									<option value="HKG">Hong Kong</option>
									<option value="HUN">Hungary</option>
									<option value="ISL">Iceland</option>
									<option value="IND">India</option>
									<option value="IDN">Indonesia</option>
									<option value="IRN">Iran, Islamic Republic of</option>
									<option value="IRQ">Iraq</option>
									<option value="IRL">Ireland</option>
									<option value="IMN">Isle of Man</option>
									<option value="ISR">Israel</option>
									<option value="ITA">Italy</option>
									<option value="JAM">Jamaica</option>
									<option value="JPN">Japan</option>
									<option value="JEY">Jersey</option>
									<option value="JOR">Jordan</option>
									<option value="KAZ">Kazakhstan</option>
									<option value="KEN">Kenya</option>
									<option value="KIR">Kiribati</option>
									<option value="PRK">Korea, Democratic People's Republic of</option>
									<option value="KOR">Korea, Republic of</option>
									<option value="KWT">Kuwait</option>
									<option value="KGZ">Kyrgyzstan</option>
									<option value="LAO">Lao People's Democratic Republic</option>
									<option value="LVA">Latvia</option>
									<option value="LBN">Lebanon</option>
									<option value="LSO">Lesotho</option>
									<option value="LBR">Liberia</option>
									<option value="LBY">Libya</option>
									<option value="LIE">Liechtenstein</option>
									<option value="LTU">Lithuania</option>
									<option value="LUX">Luxembourg</option>
									<option value="MAC">Macao</option>
									<option value="MKD">Macedonia, the former Yugoslav Republic of</option>
									<option value="MDG">Madagascar</option>
									<option value="MWI">Malawi</option>
									<option value="MYS">Malaysia</option>
									<option value="MDV">Maldives</option>
									<option value="MLI">Mali</option>
									<option value="MLT">Malta</option>
									<option value="MHL">Marshall Islands</option>
									<option value="MTQ">Martinique</option>
									<option value="MRT">Mauritania</option>
									<option value="MUS">Mauritius</option>
									<option value="MYT">Mayotte</option>
									<option value="MEX">Mexico</option>
									<option value="FSM">Micronesia, Federated States of</option>
									<option value="MDA">Moldova, Republic of</option>
									<option value="MCO">Monaco</option>
									<option value="MNG">Mongolia</option>
									<option value="MNE">Montenegro</option>
									<option value="MSR">Montserrat</option>
									<option value="MAR">Morocco</option>
									<option value="MOZ">Mozambique</option>
									<option value="MMR">Myanmar</option>
									<option value="NAM">Namibia</option>
									<option value="NRU">Nauru</option>
									<option value="NPL">Nepal</option>
									<option value="NLD">Netherlands</option>
									<option value="NCL">New Caledonia</option>
									<option value="NZL">New Zealand</option>
									<option value="NIC">Nicaragua</option>
									<option value="NER">Niger</option>
									<option value="NGA">Nigeria</option>
									<option value="NIU">Niue</option>
									<option value="NFK">Norfolk Island</option>
									<option value="MNP">Northern Mariana Islands</option>
									<option value="NOR">Norway</option>
									<option value="OMN">Oman</option>
									<option value="PAK">Pakistan</option>
									<option value="PLW">Palau</option>
									<option value="PSE">Palestinian Territory, Occupied</option>
									<option value="PAN">Panama</option>
									<option value="PNG">Papua New Guinea</option>
									<option value="PRY">Paraguay</option>
									<option value="PER">Peru</option>
									<option value="PHL">Philippines</option>
									<option value="PCN">Pitcairn</option>
									<option value="POL">Poland</option>
									<option value="PRT">Portugal</option>
									<option value="PRI">Puerto Rico</option>
									<option value="QAT">Qatar</option>
									<option value="REU">Réunion</option>
									<option value="ROU">Romania</option>
									<option value="RUS">Russian Federation</option>
									<option value="RWA">Rwanda</option>
									<option value="BLM">Saint Barthélemy</option>
									<option value="SHN">Saint Helena, Ascension and Tristan da Cunha</option>
									<option value="KNA">Saint Kitts and Nevis</option>
									<option value="LCA">Saint Lucia</option>
									<option value="MAF">Saint Martin (French part)</option>
									<option value="SPM">Saint Pierre and Miquelon</option>
									<option value="VCT">Saint Vincent and the Grenadines</option>
									<option value="WSM">Samoa</option>
									<option value="SMR">San Marino</option>
									<option value="STP">Sao Tome and Principe</option>
									<option value="SAU">Saudi Arabia</option>
									<option value="SEN">Senegal</option>
									<option value="SRB">Serbia</option>
									<option value="SYC">Seychelles</option>
									<option value="SLE">Sierra Leone</option>
									<option value="SGP">Singapore</option>
									<option value="SXM">Sint Maarten (Dutch part)</option>
									<option value="SVK">Slovakia</option>
									<option value="SVN">Slovenia</option>
									<option value="SLB">Solomon Islands</option>
									<option value="SOM">Somalia</option>
									<option value="ZAF">South Africa</option>
									<option value="SGS">South Georgia and the South Sandwich Islands</option>
									<option value="SSD">South Sudan</option>
									<option value="ESP">Spain</option>
									<option value="LKA">Sri Lanka</option>
									<option value="SDN">Sudan</option>
									<option value="SUR">Suriname</option>
									<option value="SJM">Svalbard and Jan Mayen</option>
									<option value="SWZ">Swaziland</option>
									<option value="SWE">Sweden</option>
									<option value="CHE">Switzerland</option>
									<option value="SYR">Syrian Arab Republic</option>
									<option value="TWN">Taiwan, Province of China</option>
									<option value="TJK">Tajikistan</option>
									<option value="TZA">Tanzania, United Republic of</option>
									<option value="THA">Thailand</option>
									<option value="TLS">Timor-Leste</option>
									<option value="TGO">Togo</option>
									<option value="TKL">Tokelau</option>
									<option value="TON">Tonga</option>
									<option value="TTO">Trinidad and Tobago</option>
									<option value="TUN">Tunisia</option>
									<option value="TUR">Turkey</option>
									<option value="TKM">Turkmenistan</option>
									<option value="TCA">Turks and Caicos Islands</option>
									<option value="TUV">Tuvalu</option>
									<option value="UGA">Uganda</option>
									<option value="UKR">Ukraine</option>
									<option value="ARE">United Arab Emirates</option>
									<option value="GBR">United Kingdom</option>
									<option value="USA">United States</option>
									<option value="UMI">United States Minor Outlying Islands</option>
									<option value="URY">Uruguay</option>
									<option value="UZB">Uzbekistan</option>
									<option value="VUT">Vanuatu</option>
									<option value="VEN">Venezuela, Bolivarian Republic of</option>
									<option value="VNM">Viet Nam</option>
									<option value="VGB">Virgin Islands, British</option>
									<option value="VIR">Virgin Islands, U.S.</option>
									<option value="WLF">Wallis and Futuna</option>
									<option value="ESH">Western Sahara</option>
									<option value="YEM">Yemen</option>
									<option value="ZMB">Zambia</option>
									<option value="ZWE">Zimbabwe</option>
								</select>
							</li>
							<li class="languages">
								<select class="form-control bfh-countries" data-country="US">
									<option value="">Safety Off</option>
									<option value="">Safety On</option>
								</select>
							</li>
							<li><a href="history.html" class="f-history">历史</a></li>
							<li><a href="#small-dialog5" class="play-icon popup-with-zoom-anim f-history f-help">帮助</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- //footer -->
		</div>
		<div class="clearfix"> </div>
	<div class="drop-menu">
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
		  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Regular link</a></li>
		  <li role="presentation" class="disabled"><a role="menuitem" tabindex="-1" href="#">Disabled link</a></li>
		  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another link</a></li>
		</ul>
	</div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
  </body>
</html>