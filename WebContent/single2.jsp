<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>single</title>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="bower_components/jquery/dist/jquery.min.js"></script>
 <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

 <link rel="stylesheet" href="assets/css/reset.css" type="text/css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="assets/css/demo.css" type="text/css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="Source/assets/css/simplemodal.css" type="text/css" media="screen" title="no title" charset="utf-8">
    <script src="assets/javascript/mootools-core-1.3.1.js" type="text/javascript" charset="utf-8"></script>
    <script src="assets/javascript/mootools-more-1.3.1.1.js" type="text/javascript" charset="utf-8"></script>
    <script src="Source/simple-modal.js" type="text/javascript" charset="utf-8"></script>
    <script src="assets/javascript/demo.js" type="text/javascript" charset="utf-8"></script>
    
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<link href="video-js/video-js.css" rel="stylesheet" type="text/css">
 

  
 <script src="video-js/video.js"></script>
 <script>
   videojs.options.flash.swf = "video-js/video-js.swf";
 </script>




<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />

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
          <a class="navbar-brand" href="index.html"><h1><img src="images/logo.png" alt="" /></h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<div class="top-search">
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="搜索……">
					<input type="submit" value=" ">
				</form>
			</div>  
			<div class="header-top-right">
				<div class="file">
					<a href="upload.html">上传</a>
				</div>	
				<div class="signin">
					<a href="#small-dialog2" class="play-icon popup-with-zoom-anim">注册</a>
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
											<form>
												<input type="text" class="email" placeholder="邮箱地址" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="请输入有效的邮箱地址"/>
												<input type="password" placeholder="密码" required="required" pattern=".{6,}" title="需要至少六个字符" autocomplete="off" />
												<input type="text" class="email" placeholder="手机号" maxlength="11" pattern="[1-9]{1}\d{9}" title="请输入有效的手机号码" />
												<input type="submit"  value="注册"/>
											</form>
										</div>
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
												<input type="text" class="email" placeholder="邮箱地址" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="请输入有效的邮箱地址"/>
												<input type="password" placeholder="密码" required="required" pattern=".{6,}" title="需要至少六个字符" autocomplete="off" />
												<input type="submit"  value="登录"/>
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
					<a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a>
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
							<form>
								<input type="text" class="email" placeholder="请输入邮箱地址/手机号码" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?"/>
								<input type="password" placeholder="密码" required="required" pattern=".{6,}" title="需要至少六个字符" autocomplete="off" />
								<input type="submit"  value="登录"/>
							</form>
							<div class="forgot">
								<a href="#">忘记密码？</a>
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
					<li><a href="index.html" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
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
			<div class="show-top-grids">
			<span>观看时长：</span>
			<input name="showtime" style="color:#ff0000;width:200px;" id="showtime" type="text" value="0"> 秒
			<div id="result"></div>
			
			
			<div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Tabs
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">Home</a>
                                </li>
                                <li><a href="#profile" data-toggle="tab">Profile</a>
                                </li>
                                <li><a href="#messages" data-toggle="tab">Messages</a>
                                </li>
                                <li><a href="#settings" data-toggle="tab">Settings</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="home">
                                    <h4>Home Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                                <div class="tab-pane fade" id="profile">
                                    <h4>Profile Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                                <div class="tab-pane fade" id="messages">
                                    <h4>Messages Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                                <div class="tab-pane fade" id="settings">
                                    <h4>Settings Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                
			                <div class="col-lg-10">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                                                人脸检测数据
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#home-pills" data-toggle="tab">Home</a>
                                </li>
                                <li><a href="#profile-pills" data-toggle="tab">Profile</a>
                                </li>
                                <li><a href="#messages-pills" data-toggle="tab">Messages</a>
                                </li>
                                <li><a href="#settings-pills" data-toggle="tab">Settings</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="home-pills">
                                    <h4>Home Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                                <div class="tab-pane fade" id="profile-pills">
                                    <h4>Profile Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                                <div class="tab-pane fade" id="messages-pills">
                                    <h4>Messages Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                                <div class="tab-pane fade" id="settings-pills">
                                    <h4>Settings Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
			</div>
			
			</div>
<script type="text/javascript">

	window.addEventListener("DOMContentLoaded", function() {
		
		video = document.getElementById("video");
		var offsettop=$("#video").offset().top;   
		var offsetleft=$("#video").offset().left; 
		
		var canvas = document.getElementById("canvas");
		canvas.style.position="absolute";
		canvas.style.top=offsettop;
		canvas.style.left=offsetleft;
		context = canvas.getContext("2d");
		/*video.style.position="absolute";
		video.style.top="10px";
		video.style.left="10px";*/
		videoObj = { "video": true},
		errBack = function(error) {
			console.log("视频获取失败: ", error.code); 
			alert("失败");
		};

	//获取摄像头的方式
	if(navigator.getUserMedia) { // 标准
		navigator.getUserMedia(videoObj, function(stream) {
			video.src = window.URL.createObjectURL(stream);
			video.play();
		}, errBack);
	} else if(navigator.webkitGetUserMedia) { // WebKit浏览器
		navigator.webkitGetUserMedia(videoObj, function(stream){
			video.src = window.URL.createObjectURL(stream);
			video.play();
		}, errBack);
	} else if(navigator.mozGetUserMedia) { // 火狐浏览器
		navigator.mozGetUserMedia(videoObj, function(stream){
			video.src = window.URL.createObjectURL(stream);
			video.play();
		}, errBack);
	}
	draw();
	
}, false);
	
	function submit_hbase(time,all){
		
		 
		var video_name=$('#myvideo').attr("src");
		var video_type=$('#myvideo').attr("value");
		var age=$('#age').text();
		var gender=$('#gender').text();
		var smile=$('#smile').text();
		var glass=$('#glass').text();
		var race=$('#race').text();
		var SM = new SimpleModal({"hideHeader":true, "closeButton":false, "btn_ok":"Close window", "width":600});
        SM.show({
          "model":"提交hbase结果",
          "contents":"观看时长："+time+"秒"+"\n总时长："+all+"秒\n年龄:"+age+"\n性别："+gender+"\n微笑程度："+smile+"\n种族："+race+"\n是否带眼镜："+glass
        });
		$.ajax({
	        type: 'post',  
	        url: '/FaceYxc/hbase',  
	        data: {
	      	'time':time,
	      	"alltime":all,
	      	'age':age,
	      	'video_type':video_type,
	      	'gender':gender,
	      	'smile':smile,
	      	'glass':glass,
	      	'race':race,
	      	'video_name':video_name
	      	//'pitch_angle':data1[i].pitch_angle,
	      	//'yaw_angle':data1[i].yaw_angle,
	      	//'roll_angle':data1[i].roll_angle
	        }});
	}
function draw()
{
	
	
	context.clearRect(0, 0, canvas.width, canvas.height);

	var cav = document.createElement("canvas");
	cav.width = 640;
	cav.height = 480;
	ctx = cav.getContext("2d");
	//context.globalAlpha = 0.3;
	//alert("hello");
	//context.translate(0, 480);
	///canvas.scale(1,-1);
	ctx.drawImage(video,0,0,640,480);
	var image = cav.toDataURL('image/png');
	$.ajax({
        type: 'post',  
        url: '/FaceYxc/camera',  
        data: {
      	  'img':image

        },
        success: function(data) {
        	
        	 if(data.length>0){
        		 
        		 var table_html = "<span>画面中检测到有"+data.length+"个人脸</span>";
             	   table_html+="<table  class=\"table user-list table-hover\"><thead><tr><th><span>ID</span></th><th><span>年龄</span></th><th class=\"text-center\"><span>性别</span></th><th ><span>微笑程度</span></th><th><span>是否戴眼镜</span></th><th><span>种族</span></th><th><span>抬头角度</span></th><th><span>平面旋转角度</span></th><th><span>摇头角度</span></th><th><span>左眼上下端坐标</span></th><th><span>右眼上下端坐标</span></th><th><span>睁眼/闭眼</span></th></tr> </thead> <tbody id=\"credit_list\">";
             	   for (var i = 0; i < data.length; i++) {
             		   new_table="<tr><td>"+i+"</td><td id='age' >"+data[i].age+"(+/-)"+data[i].age_range+"</td><td id='gender'>"+data[i].gender+"</td><td id='smile'>"+
             		   data[i].smile+"</td><td id='glass'>"+data[i].glass+"</td><td id='race'>"+data[i].race+"</td><td id='pitch_angle'>"+data[i].pitch_angle+"</td><td>"
             		   +data[i].yaw_angle+"</td><td>"+data[i].roll_angle+"</td><td>("+data[i].Left_eye_top_x+" , "+data[i].Left_eye_top_y+") , ("+data[i].Left_eye_bottom_x+" , "+data[i].Left_eye_bottom_y+")</td><td>("
             				   +data[i].Right_eye_top_x+" , "+data[i].Right_eye_top_y+") , ( "+data[i].Right_eye_bottom_x+","+data[i].Right_eye_bottom_y+")</td><td> "+data[i].open+"</td>";
             		 // var cav = document.getElementById("cav");
             		 // cav.attr("width", $(window).get(0).innerWidth);
             	     // cav.attr("height", $(window).get(0).innerHeight);
             	     // context = cav.getContext("2d");
             	    // if(data[i].yaw_angle<0){//如果角度超过 传入数据
             	    //	pauseclock();
             	     
             	    //	submit_hbase(data);
             	   //  }
             	    if(flag==0&&ispaused==1){
             	    	startclock();
             	    }
             	    
             		  context.beginPath();
             		  a1 = (data[i].center_x) * 6.4;
             		  b1 = (data[i].center_y) * 4.8;            		  
             		  context.arc(a1,b1,5,0,360,false);
             		  context.fillStyle="red";//填充颜色,默认是黑色
             		  context.fill();//画实心圆
             		  context.closePath();

             		  context.beginPath();
             		  a2 = (data[i].eye_left_x) * 6.4;
            		  b2 = (data[i].eye_left_y) * 4.8;
            		  context.arc(a2,b2,5,0,360,false);
            		  context.fillStyle="red";//填充颜色,默认是黑色
            		  context.fill();//画实心圆
            		  context.closePath();
            		  
            		  context.beginPath();
            		  a3 = (data[i].eye_right_x) * 6.4;
            		  b3 = (data[i].eye_right_y) * 4.8;
            		  context.arc(a3,b3,5,0,360,false);
             		  context.fillStyle="red";//填充颜色,默认是黑色
             		  context.fill();//画实心圆
             		  context.closePath();
             		  
             		  context.beginPath();
             		  a4 = (data[i].mouth_left_x) * 6.4;
           		      b4 = (data[i].mouth_left_y) * 4.8;
           		      context.arc(a4,b4,5,0,360,false);
            		  context.fillStyle="red";//填充颜色,默认是黑色
            		  context.fill();//画实心圆
            		  context.closePath();
            		  
            		  context.beginPath();
            		  a5 = (data[i].mouth_right_x) * 6.4;
            		  b5 = (data[i].mouth_right_y) * 4.8;
            		  context.arc(a5,b5,5,0,360,false);
             		  context.fillStyle="red";//填充颜色,默认是黑色
             		  context.fill();//画实心圆
             		//  context.closePath();
             		  
             		  context.beginPath();
             		  a6 = (data[i].nose_x) * 6.4;
           		      b6 = (data[i].nose_y) * 4.8;
           		      context.arc(a6,b6,5,0,360,false);
            		  context.fillStyle="red";//填充颜色,默认是黑色
            		  context.fill();//画实心圆
            		  context.closePath();
            		  
            		  context.moveTo(a2,b2);//第一个起点
            		  context.lineTo(a6,b6);//第二个点
            		  context.lineTo(a5,b5);//第三个点（以第二个点为起点）
            		  context.lineWidth=3;
            		  context.strokeStyle = 'red';
            		  context.stroke();
            		  
            		  context.moveTo(a3,b3);//第一个起点
            		  context.lineTo(a6,b6);//第二个点
            		  context.lineTo(a4,b4);//第三个点（以第二个点为起点）
            		  context.lineWidth=3;
            		  context.strokeStyle = 'red';
            		  context.stroke();
             		   
            		 /* context.fillStyle = "white";
            		  context.strokeStyle = "red";
            		  context.font = "20pt Helvetica";
            		  context.textAlign = "center";
            		  context.textBaseline = "middle" ;
            		  context.save();
            		  context.clearRect(0, 0,canvas.width, canvas.height);
            		  context.translate(canvas.width / 2, canvas.height / 2);
            		  context.fillText ("Animation over video!", 0, 0);
            		  context.strokeText ("Animation over video!", 0, 0);
            		 
            		  context.textAlign = "center";
            		  
            		  context.restore();*/
                      
             		  table_html+=new_table;
             	   }
             	   table_html+="</tbody></table>"
             		   $("#result")
     					.html(table_html);
        	 }else{
        		/* var table_html = "<span>未检测到人脸</span>";
        		 $("#result")
					.html(table_html);*/
					if(flag==0){
					pauseclock();
					}
        	 }
        
           }
 	 
          
  
    });
/*	var result = document.getElementById("result");
	result.innerHTML = '<img src="'+image+'" alt=""/>';*/
	//document.body.appendChild(canvas);
	//setTimeout();
	//draw();
    setTimeout("draw()",2000);   
}
var se,s=0,flag=0,ispaused=0;  
function second(){  


document.getElementById("showtime").value=s;   //这有一个给id为showtime的input赋值的语句，可以实现动态计时。
//其实所谓的动态计时，就是在很短的时间里不停给显示时间的地方更新数值，由于速度很快，这样计时器看起来时刻都在变化。但其实不是的，它从本质上还是静态的，这跟js的伪多线程原理是一样的。
s+=1;
}  
function startclock(){se=setInterval("second()",1000); ispaused=0;}  //这个函数是要放到按钮的click事件上的
function pauseclock(){clearInterval(se);document.getElementById("showtime").value=s ;ispaused=1;}    //这个函数是要放到按钮的click事件上的
function stopclock(){clearInterval(se);s=0;flag=1;}    //这个函数是要放到按钮的click事件上的

</script>
				<div class="col-sm-8 single-left">
					<div class="song">
						<div class="song-info">
							<h3>视频标题</h3>	
					</div>
						  <div class="video-grid">
						  <video id="my_video_1" class="video-js vjs-default-skin" controls    preload="auto"width="640"height="480"poster="video-js/my_video_poster.png"    data-setup="{}">
                        <source id="myvideo"  value="服装" src="video/30s/clothes1.mp4" type='video/mp4'> 
                          </video>
                         <script>
                         var myPlayer = _V_("my_video_1");
                         var myFunc = function(){
                        		// Do something when the event is fired
                        		stopclock();
                        		};
                        	//	var player = videojs('video');  
                        		myPlayer.play();
                        		myPlayer.on('ended', function() {  
                        			  console.log('开始/恢复播放');
                        			  
                        			  stopclock();
                        			  var time=$('#showtime').val();//观察时间；
                        			  var alltime=myPlayer.currentTime();
                        			  submit_hbase(time,alltime);
                        			  //传数据到数据库
                        			  
                        		});
                        		//myPlayer.addEvent("ended", myFunc);
                        		</script>
						  <!-- <EMBED src="video/30s/lxljw.rmvb" width=177 height=25 volume=70 autostart=true>music</EMBED>  -->
						  <!-- <iframe src="http://www.iqiyi.com/v_19rrlwkal8.html" allowfullscreen></iframe> --></div>
					</div>
					<div class="song-grid-right">
						<div class="share">
							<h5>实时画面</h5>
							<ul>
							<canvas id="canvas" width="640" height="480"></canvas>
			<video id="video" width="640" height="480" autoplay="autoplay"></video>
								
							</ul>
						</div>
					</div>
					<div class="clearfix"> </div>
					<div class="published">
						
							<script>
								$(document).ready(function () {
									//$("#video").hide();
									//startclock();
									size_li = $("#myList li").size();
									x=1;
									$('#myList li:lt('+x+')').show();
									$('#loadMore').click(function () {
										x= (x+1 <= size_li) ? x+1 : size_li;
										$('#myList li:lt('+x+')').show();
									});
									$('#showLess').click(function () {
										x=(x-1<0) ? 1 : x-1;
										$('#myList li').not(':lt('+x+')').hide();
									});
								});
							</script>
							<div class="load_more">	
								<ul id="myList">
									<li>
										<h4>2015.5.1 发布</h4>
										<p>此处应有视频简介</p>
									</li>
									<li>
										<p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel ultricies erat, vel sodales leo. Maecenas pellentesque, est suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac dignissim diam velit id tellus. Morbi luctus velit quis semper egestas. Nam condimentum sem eget ex iaculis bibendum. Nam tortor felis, commodo faucibus sollicitudin ac, luctus a turpis. Donec congue pretium nisl, sed fringilla tellus tempus in.</p>
										<p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel ultricies erat, vel sodales leo. Maecenas pellentesque, est suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac dignissim diam velit id tellus. Morbi luctus velit quis semper egestas. Nam condimentum sem eget ex iaculis bibendum. Nam tortor felis, commodo faucibus sollicitudin ac, luctus a turpis. Donec congue pretium nisl, sed fringilla tellus tempus in.</p>
										<div class="load-grids">
											<div class="load-grid">
												<p>Category</p>
											</div>
											<div class="load-grid">
												<a href="movies.html">Entertainment</a>
											</div>
											<div class="clearfix"> </div>
										</div>
									</li>
								</ul>
							</div>
					</div>
					<div class="all-comments">
						<div class="all-comments-info">
							<a href="#">所有评论(8,657)</a>
							<div class="box">
								<form>
									<input type="text" placeholder="姓名" required=" ">			           					   
									<input type="text" placeholder="邮箱" required=" ">
									<input type="text" placeholder="手机" required=" ">
									<textarea placeholder="信息" required=" "></textarea>
									<input type="submit" value="SEND">
									<div class="clearfix"> </div>
								</form>
							</div>
							<div class="all-comments-buttons">
								<ul>
									<li><a href="#" class="top">热评</a></li>
									<li><a href="#" class="top newest">最新</a></li>
									<li><a href="#" class="top my-comment">我的评论</a></li>
								</ul>
							</div>
						</div>
						<div class="media-grids">
							<div class="media">
								<h5>用户A</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>评论asdffafsdfdsf</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>用户B</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>评论asdffafsdfdsf</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>用户C</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>评论asdffafsdfdsf</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>用户D</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>评论asdffafsdfdsf</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>用户E</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>评论asdffafsdfdsf</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>用户F</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>评论asdffafsdfdsf</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>用户G</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>评论asdffafsdfdsf</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
						</div>
					</div>
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
    <!--<script src="js/bootstrap.min.js"></script>-->
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
      

    <!-- Bootstrap Core JavaScript -->
   

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->

    
  </body>
</html>