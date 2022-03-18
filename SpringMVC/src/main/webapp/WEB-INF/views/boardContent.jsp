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
	  	<div class="panel-heading">Board List</div>
	    <div class="panel-body">
	    	<form action = "boardUpdate.do" method = "post">
	    	<input type = "hidden" name = "idx" value = "${vo.idx }">
	    	<table class="table table-hover table-bordered">
	    		<tr>
	    			<td>번호</td>
	    			<!-- 게시글 고유번호 출력 -->
	    			<td>${vo.idx }</td>
	    		</tr>
	    		<tr>
	    			<td>제목</td>
	    			<!-- 게시글 제목 출력 -->
	    			<td><input type = "text" class = "form-control" name = "title" value = "${vo.title }"></td>
	    		</tr>
	    		<tr>
	    			<td>조회수</td>
	    			<!-- 게시글 조회수 출력 -->
	    			<td>${vo.count }</td>
	    		</tr>
	    		<tr>
	    			<td>내용</td>
	    			<!-- 게시글 내용  출력 -->
	    			<td><textarea class = "form-control" rows ="5" name = "contents">${vo.contents }</textarea></td>
	    		</tr>
	    		<tr>
	    			<td>작성자</td>
	    			<!-- 게시글 작성자 출력 -->
	    			<td>${vo.writer }</td>
	    		</tr>
	    		<tr>
	    			<td>작성일</td>
	    			<!-- 게시글 작성일 출력 -->
	    			<td>${vo.indate }</td>
	    		</tr>
	    		
	    		<tr>
	    			<td colspan = "2">
	    				<button type = "submit" class = "bten btn-primary btn-sm">수정</button>
	    				<a href = "boardDelete.do?idx=${vo.idx }"><button type = "button" class = "btn btn-warning btn-sm">삭제</button></a>
	    				<a href = "boardList.do"><button type = "button" class = "btn btn-info btn-sm">목록</button></a>
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