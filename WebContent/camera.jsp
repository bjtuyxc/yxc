<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>

</head>

<body>
<video id="video" width="640" height="480" autoplay="autoplay"></video>
<div id="result"></div>

<script type="text/javascript">
	window.addEventListener("DOMContentLoaded", function() {
		video = document.getElementById("video"),
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

function draw()
{
	var canvas = document.createElement("canvas");
	canvas.width = "640";
	canvas.height = "480";
	context = canvas.getContext("2d");
	context.drawImage(video,0,0,640,480);
	var image = canvas.toDataURL('image/png');
	$.ajax({
        type: 'post',  
        url: '/FaceYxc/camera',  
        data: {
      	  'img':image

        },
        success: function(data) {
        
           }
 	 
          
  
    });
/*	var result = document.getElementById("result");
	result.innerHTML = '<img src="'+image+'" alt=""/>';*/

    setTimeout("draw()",1000);   
}
	
</script>

</body>
</html>