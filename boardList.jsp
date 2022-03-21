<%@page import="kr.smhrd.model.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <% ArrayList<BoardVO> list = (ArrayList<BoardVO>)session.getAttribute("list"); %> --%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body> 

	<div class="container">
		<h2>Spring MVC Board</h2>
		<div class="panel panel-default">
	  	<div class="panel-heading">Board List
	  	<!-- 회원 로그인 판별 -->
	  	<c:choose>
	  		<c:when test="${not empty info}">
	  			<span style = "float:right;">${info.nick}님 환영합니다.
	  				<a href = "logout.do">로그아웃</a>
	  				<!-- admin 판별 -->
	  				<c:if test="${info.id eq 'admin'}">
	  					<button style="width:100px;"type = "button" id = "memberList" class = "btn btn-info btn-sm">회원정보보기</button>
	  				</c:if>
	  			</span>
	  		</c:when>
	  		<c:otherwise>
	  			<a href = "login.do">
	  				<button class = "btn btn-success btn-sm" style = "float:right">로그인</button>
	  			</a>
	  		</c:otherwise>
	  	</c:choose>
	  	<div id = "resultMemberList" style="display: none;">
	  		
	  	</div>
	  	</div>
	    <div class="panel-body">
	    	<table class="table table-hover table-bordered">
	    		<tr class = "success">
	    			<td>번호</td>
	    			<td>제목</td>
	    			<td>조회수</td>
	    			<td>작성자</td>
	    			<td>작성일</td>
	    		</tr>
	    		<%-- <% for (int i = 0 ; i < list.size(); i++){%>
	    		<tr>
	    			<td><%=i+1 %></td>
	    			<td><%=list.get(i).getTitle() %></td>
	    			<td><%=list.get(i).getCount() %></td>
	    			<td><%=list.get(i).getWriter() %></td>
	    			<td><%=list.get(i).getIndate() %></td>
	    		</tr>
	    		<%}%> --%>
	    		<c:forEach var = "vo" items = "${list}" varStatus = "i">
	    		<tr>
	    			<td>${i.count }</td>
	    			<td><a href = "boardContent.do?idx=${vo.idx}">${vo.title }</a></td>
	    			<td>${vo.count }</td>
	    			<td>${vo.writer }</td>
	    			<td>${vo.indate }</td>
	    		</tr>
	    		</c:forEach>
	    	</table>
	    	<a href ="boardInsertForm.do"><button class = "btn btn-info">글쓰기</button></a>
	    </div>
	    <div class= "panel-body">빅데이터 1차 (최종인)</div>
		</div>
	</div>
	<div>
		<button id = "txt1">눌러보든가</button>
		<br><br><br><br>
	</div>
	<div>
		<img src = "<c:url value='resources/비행기.png'/>" id = "plane" style = "width:50px;height:50px;margin-top:150px;"/>
		<hr id = "hr" style = "border-top: 3px dotted blue;">
		<button id = "takeoff">이륙</button>
	</div>
	<div>
		<a href = "catchMe.do"><button>로그아웃</button></a>
	</div>
	<script>
		$("#memberList").on("click" , function(){
			console.log("회원정보목록 클릭");
			
			$.ajax({
				url : "memberList.do",
				type : "post",
				dataType : "json",
				success : resultJson,
				error : function(e){
					console.log(e);
				}
			});
		});
	
		function resultJson(data){
			console.log(data);
			
			var btnText = $('#memberList').text();
			if (btnText == '회원정보보기'){
				$('#memberList').text('닫기');
				
				// 선생님 방법
				var html = "<table style = 'width: 100px; margin: auto' class = 'table table-hover table-bordered'>";
				html += "<tr><td>번호</td><td>아이디</td><td>비밀번호</td>";
				html += "<td>닉네임</td><td>전화번호</td></tr>";
				$.each(data, function(index, obj){
					html += "<tr>";
					html += "<td>"+ (index+1) + "</td>";
					html += "<td>"+ obj.id + "</td>";
					html += "<td>"+ obj.pw + "</td>";
					html += "<td>"+ obj.nick + "</td>";
					html += "<td>"+ obj.tel + "</td>";
					html += "</tr>";
				});
				html += "</table>";
				
				$('#resultMemberList').html(html);
				
				$("#resultMemberList").slideDown(1000);
			} else {
				$('#memberList').text('회원정보보기');
				
				$("#resultMemberList").slideUp(1000);
			}
		
			
			
			
			/* // 내 방법
			$("#resultMemberList").empty();
			$("#resultMemberList").append("<table id = 'list' class='table table-hover table-bordered'>"
					+"<tr class = 'success'><td>"
					+"회원 아이디"
					+"</td><td>"
					+"회원 닉네임"
					+"</td><td>"
					+"회원 번호"
					+"</tr>"
					);
			for ( let i = 0; i < data.length; i++){
				let member = data[i];
			$("#list").append("<tr>"
					+"<td>"
					+ member.id
					+"</td><td>"
					+ member.nick
					+"</td><td>"
					+ member.tel
					+"</td>"
					);
			}
			$("#resultMemberList").append("</table>"); */
		}
	
		$("#txt1").on("mouseenter" , function(){
			console.log("실행됨");
			$("#txt1")
			.animate({fontSize :"10"} , 300)
			.animate({fontSize :"20"} , 300)
			.animate({fontSize :"30"} , 300)
			.animate({fontSize :"40"} , 300)
			.animate({fontSize :"50"} , 300)
			.animate({fontSize :"10"} , 100);
			for (let i = 0; i < 10; i ++){
				$("#txt1")
				//.animate({marginLeft :"50" , marginTop : "+=100"} , 100)
				/* .animate({marginLeft :"100"} , 100)
				.animate({marginLeft :"300"} , 100)
				.animate({marginLeft :"500"} , 100)
				.animate({marginLeft :"700"} , 100)
				.animate({marginLeft :"900"} , 100)
				.animate({marginLeft :"1100"} , 100)
				.animate({marginLeft :"1300"} , 100)
				.animate({marginLeft :"1500"} , 100)
				.animate({marginLeft :"1300"} , 100)
				.animate({marginLeft :"1100"} , 100)
				.animate({marginLeft :"900"} , 100)
				.animate({marginLeft :"700"} , 100)
				.animate({marginLeft :"500"} , 100)
				.animate({marginLeft :"300"} , 100)
				.animate({marginLeft :"100"} , 100); */
				.animate({marginLeft :"1500"} , 800)
				.animate({marginLeft :"100"} , 700);
				
			}
		});
		$("#txt1").on("click" , function(){
			$("#txt1").clearQueue();
		});
		
		
		$("#takeoff").on("click" , function(){
			for ( let i = 0; i < 10; i++){
				$("#plane").animate({marginLeft : "1200" , marginTop : "0" , marginBottom : "150"} , 1000-(i*100) , function(){
					$("#plane").css("transform","scaleX(-1)")
				});
				$("#plane").animate({marginLeft : "0" , marginTop : "150" , marginBottom : "0"} , 1000-(i*100), function(){
					$("#plane").css("transform","")
				});
				// .css("margin-left" , 1200).css("margin-top" , 0)
			}
		});
		
		
	</script>
</body>
</html>