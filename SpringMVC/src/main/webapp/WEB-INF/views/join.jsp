<%@page import="kr.smhrd.model.BoardVO"%>
<%@page import="java.util.ArrayList"%>
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
</head>
<body> 

	<div class="container">
		<h2>Spring MVC Board</h2>
		<div class="panel panel-default">
	  	<div class="panel-heading">Join</div>
	    <div class="panel-body">
	    	<form action = "joinInsert.do" method = "post">
	    	<table style = "width:500px; margin:auto; text-align:center;" class="table table-hover table-bordered">
	    		<tr>
	    			<td>아이디</td>
	    			<td>
	    				<input id = "id" style = "float:left; width:200px;" required = "required" class = "form-control" type = "text" name = "id" placeholder = "Enter ID">
	    				<button class = "btn btn-info btn-sm" id = "idCheck" type = "button">중복 체크</button>
	    				<br>
	    				<br>
	    				<p id="resultIdCheck" style = "text-align: left;">테스트용 입니다</p>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>비밀번호</td>
	    			<td><input required = "required" class = "form-control" type = "password" name = "pw" placeholder = "Enter PW"></td>
	    		</tr>
	    		<tr>
	    			<td>닉네임</td>
	    			<td><input required = "required" class = "form-control" type = "text" name = "nick" placeholder = "Enter NICK"></td>
	    		</tr>
	    		<tr>
	    			<td>전화번호</td>
	    			<td><input required = "required" class = "form-control" type = "tel" name = "tel" placeholder = "Enter TEL"></td>
	    		</tr>
	    		<tr>
	    			<td colspan = "2">
	    				<button type = "submit" class = "bten btn-primary btn-sm">회원가입</button>
	    			</td>
	    		</tr>
	    	</table>
	    	</form>
	    </div>
	    <div class= "panel-body">빅데이터 1차 (최종인)</div>
		</div>
	</div>
	<script type="text/javascript">
		// 문제. 중복체크 버튼을 눌렀을때 console에 버튼눌림 글자 출력  j쿼리
		$("#idCheck").on("click" , function(){
			console.log("버튼 눌림");
			var id = $("#id").val();
			
			$.ajax({
				url : "idCheck.do",
				type : "POST",
				dataType : "JSON",
				data : {"id" : id},
				success : resultJson,
				error : function(e){
					console.log(e);
				}
			});
		});
	
		function resultJson(data){
			console.log(data);
		}
	
	
	</script>
</body>
</html>