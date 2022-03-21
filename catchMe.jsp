<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  	.rotate {
  		width:500px;
  		height:500px;
  		animation : rotate_image 0.5s linear infinite;transform-origin:50%50%;
  	}
  	@keyframes rotate_image{
  		100%{
  			transform: rotate(360deg)
  		}
  	}
  </style>
</head>
<body>
	<div id = "topper" style = "position:relative">
		<img src = "<c:url value='resources/비행기.png'/>"style = "width:50px;height:50px;" class = "right" />
		<img src = "<c:url value='resources/비행기.png'/>"style = "width:50px;height:50px;transform:rotate(90deg)" class = "top"/>
		<img src = "<c:url value='resources/비행기.png'/>"style = "width:50px;height:50px;float:right;transform:scaleX(-1)" class = "left"/>
		<br>
		<img src = "<c:url value='resources/비행기.png'/>"style = "width:50px;height:50px;" class = "right"/>
		<img src = "<c:url value='resources/비행기.png'/>"style = "width:50px;height:50px;float:right;transform:scaleX(-1)" class = "left"/>
		<br>
		<div>
			<img src = "<c:url value='resources/비행기.png'/>"style = "width:50px;height:50px;display:none;" class = "rotate fake"/>
			<a href = "https://www.google.com/search?q=%EA%BC%B0%EB%8C%80&oq=%EA%BC%B0%EB%8C%80&aqs=chrome..69i57j46i512l2j0i512j0i10i433j0i10i131i433l2j0i10j0i10i433j0i10.826j0j15&sourceid=chrome&ie=UTF-8">
				<img src = "<c:url value='resources/돌려버려.png'/>"style = "width:50px;height:50px;display:none;" class = "rotate"/>
			</a>
			<button class = "fake" style = "display:none">안녕히 가세요</button>
			<img src = "<c:url value='resources/돌려버려.png'/>"style = "width:50px;height:50px;display:none;" class = "rotate fake7"/>
			<button class = "fake2" style = "display:none; float:right;">안녕히 가세요</button>
			<img src = "<c:url value='resources/돌려버려.png'/>"style = "width:50px;height:50px;display:none;" class = "rotate fake4"/>
			<button class = "fake3" style = "display:none">안녕히 가세요</button>
			<img src = "<c:url value='resources/돌려버려.png'/>"style = "width:50px;height:50px;display:none;" class = "rotate fake6"/>
			<button class = "fake4" style = "display:none; float:right;">안녕히 가세요</button>
			<img src = "<c:url value='resources/돌려버려.png'/>"style = "width:50px;height:50px;display:none;" class = "rotate fake"/>
		</div>
		<button id = "bye" style="margin-left:400px">안녕히 가세요</button>
		<div>
			<img src = "<c:url value='resources/돌려버려.png'/>"style = "width:50px;height:50px;display:none;" class = "rotate fake8"/>
			<button class = "fake5" style = "display:none">안녕히 가세요</button>
			<img src = "<c:url value='resources/돌려버려.png'/>"style = "width:50px;height:50px;display:none;" class = "rotate fake2"/>
			<button class = "fake6" style = "display:none; float:right;">안녕히 가세요</button>
			<img src = "<c:url value='resources/돌려버려.png'/>"style = "width:50px;height:50px;display:none;" class = "rotate fake4"/>
			<button class = "fake7" style = "display:none">안녕히 가세요</button>
			<img src = "<c:url value='resources/돌려버려.png'/>"style = "width:50px;height:50px;display:none;" class = "rotate fake"/>
			<button class = "fake8" style = "display:none; float:right;">안녕히 가세요</button>
			<img src = "<c:url value='resources/돌려버려.png'/>"style = "width:50px;height:50px;display:none;" class = "rotate fake6"/>
		</div>
		<br><br><br><br>
		<img src = "<c:url value='resources/비행기.png'/>"style = "width:50px;height:50px;transform:rotate(270deg)" class = "bottom"/>
	</div>
	
	
	<script>
		
		/* $("#bye").on("click" , function(){
			for ( let i = 0; i < 8; i++) {
				$(".right").animate({marginLeft : (1+Math.floor(Math.random() * 10))*10} , 1000);
				$(".left").animate({marginRight : (1+Math.floor(Math.random() * 10))*10 , marginTop : (1+Math.floor(Math.random() * 10))*100} , 1000);
				$(".top").animate({marginTop : (1+Math.floor(Math.random() * 10))*10 , 
					marginRight : (1+Math.floor(Math.random() * 10))*10 ,
					marginBottom : (1+Math.floor(Math.random() * 10))*10 , 
					marginLeft : (1+Math.floor(Math.random() * 10))*10} ,
					100);
			}
		}); */
		
			
		$("#bye").on("mouseenter" , function(){
			$(".fake,.fake2,.fake3,.fake4,.fake5,.fake6,.fake7,.fake8").css("display","block");
			$(".rotate").css("display" , "block");
			for( let i = 0; i < 10; i++){
				$("#bye").animate({
					//marginTop : (1+Math.floor(Math.random() * 10))*50 ,
					//marginBottom : (1+Math.floor(Math.random() * 10))*50 ,
					marginLeft : (1+Math.floor(Math.random() * 10))*70 ,
					marginRight : (1+Math.floor(Math.random() * 10))*70 ,
					fontSize : (1+Math.floor(Math.random() * 10))*2},
					100);
				$(".fake").animate({
					//marginTop : (1+Math.floor(Math.random() * 10))*20 , 
					marginRight : (1+Math.floor(Math.random() * 10))*70 ,
					marginBottom : (1+Math.floor(Math.random() * 10))*10 , 
					marginLeft : (1+Math.floor(Math.random() * 10))*50 ,
					fontSize : (1+Math.floor(Math.random() * 10))*3} ,
					100);
				$(".fake2").animate({
					//marginTop : (1+Math.floor(Math.random() * 10))*20 , 
					marginRight : (1+Math.floor(Math.random() * 10))*70 ,
					marginBottom : (1+Math.floor(Math.random() * 10))*10 , 
					marginLeft : (1+Math.floor(Math.random() * 10))*30 ,
					fontSize : (1+Math.floor(Math.random() * 10))*4} ,
					100);
				$(".fake3").animate({
					marginTop : (1+Math.floor(Math.random() * 10))*10 , 
					marginRight : (1+Math.floor(Math.random() * 10))*30 ,
					marginBottom : (1+Math.floor(Math.random() * 10))*15 , 
					marginLeft : (1+Math.floor(Math.random() * 10))*30 ,
					fontSize : (1+Math.floor(Math.random() * 10))*5} ,
					100);
				$(".fake4").animate({
					marginTop : (1+Math.floor(Math.random() * 10))*10 , 
					marginRight : (1+Math.floor(Math.random() * 10))*70 ,
					marginBottom : (1+Math.floor(Math.random() * 10))*15 , 
					marginLeft : (1+Math.floor(Math.random() * 10))*90 ,
					fontSize : (1+Math.floor(Math.random() * 10))*4} ,
					100);
				$(".fake5").animate({
					marginTop : (1+Math.floor(Math.random() * 10))*8 , 
					marginRight : (1+Math.floor(Math.random() * 10))*40 ,
					marginBottom : (1+Math.floor(Math.random() * 10))*15 , 
					marginLeft : (1+Math.floor(Math.random() * 10))*40 ,
					fontSize : (1+Math.floor(Math.random() * 10))*3} ,
					100);
				$(".fake6").animate({
					marginTop : (1+Math.floor(Math.random() * 10))*13 , 
					marginRight : (1+Math.floor(Math.random() * 10))*90 ,
					marginBottom : (1+Math.floor(Math.random() * 10))*15 , 
					marginLeft : (1+Math.floor(Math.random() * 10))*30 ,
					fontSize : (1+Math.floor(Math.random() * 10))*4} ,
					100);
				$(".fake7").animate({
					marginTop : (1+Math.floor(Math.random() * 10))*12 , 
					marginRight : (1+Math.floor(Math.random() * 10))*80 ,
					marginBottom : (1+Math.floor(Math.random() * 10))*15 , 
					marginLeft : (1+Math.floor(Math.random() * 10))*60 ,
					fontSize : (1+Math.floor(Math.random() * 10))*3} ,
					100);
				$(".fake8").animate({
					marginTop : (1+Math.floor(Math.random() * 10))*15 , 
					marginRight : (1+Math.floor(Math.random() * 10))*80 ,
					marginBottom : (1+Math.floor(Math.random() * 10))*15 , 
					marginLeft : (1+Math.floor(Math.random() * 10))*30 ,
					fontSize : (1+Math.floor(Math.random() * 10))*5} ,
					100);
			};
		});
	</script>
	
</body>
</html>