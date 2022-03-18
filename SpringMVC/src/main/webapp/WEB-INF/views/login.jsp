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
	  	<div class="panel-heading">Login</div>
	    <div class="panel-body">
	    	<!-- loginSelect.do로 요청시 회원의 정보를 일치하는 것을 찾아서
	    	회원의 모든 정보를 info라는 이름의 session에 저장한 후 boardList.jsp로 이동하시오 -->
	    	<form action = "loginSelect.do" method = "post">
	    	<table style ="width:300px; margin:auto; text-align:center;" class="table table-hover table-bordered">
	    		<tr>
	    			<td>아이디</td>
	    			<td><input class = "form-control" type = "text" name = "id" placeholder = "Enter ID"></td>
	    		</tr>
	    		<tr>
	    			<td>비밀번호</td>
	    			<td><input class = "form-control" type = "password" name = "pw" placeholder = "Enter PW"></td>
	    		</tr>
	    		<tr>
	    			<td colspan = "2">
	    				<button type = "submit" class = "bten btn-primary btn-sm">로그인</button>
	    				<br>
	    				<a href = "join.do">
	    					아직 회원이 아니시라면 여기를 눌러주세요.
	    				</a>
	    			</td>
	    		</tr>
	    	</table>
	    	</form>
	    </div>
	    <div class= "panel-body">빅데이터 1차 (최종인)</div>
		</div>
	</div>

</body>
</html>