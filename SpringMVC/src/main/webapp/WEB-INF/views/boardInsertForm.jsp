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
	  	<div class="panel-heading">Board Form</div>
	    <div class="panel-body">
			<form class="form-horizontal" action = "boardInsert.do" method = "post">
				<div class="form-group">
			    	<label class="control-label col-sm-2" for="title">제목 :</label>
			    	<div class="col-sm-10">
						<input type="text" class="form-control" name = "title" id="title" placeholder="Enter title">
			    	</div>
			  	</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="writer">작성자 :</label>
				    <div class="col-sm-10">
				    	<input type="text" class="form-control" name = "writer" id="writer" placeholder="Enter writer">
				    </div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="contents">내용 :</label>
				    <div class="col-sm-10">
				    	<textarea class = "form-control" rows="5" name = "contents" id="contents"></textarea>
				    </div>
				</div>
			  	<div class="form-group">
			    	<div class="col-sm-offset-2 col-sm-10">
			      	<div class="checkbox">
			        	<button type = "reset" class = "btn btn-primary btn-sm">취소</button>
			        	<button type = "submit" class = "btn btn-warning btn-sm">저장</button>
			      	</div>
			    	</div>
			  </div>
			</form>
	    </div>
	    <div class= "panel-body">빅데이터 1차 (최종인)</div>
	  </div>
	</div>

</body>
</html>