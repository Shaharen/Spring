<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>보유 도서 현황</h1>
	<table border = "1">
		<tr>
	   		<td>번호</td>
	   		<td>제목</td>
	   		<td>작가</td>
	   		<td>출판사</td>
	   		<td>ISBN</td>
	   		<td>보유도서수</td>
	   	</tr>
		<c:forEach var = "vo" items = "${list}" varStatus = "i">
	    	<tr>
	    		<td>${i.count }</td>
	    		<td>${vo.title }</td>
	    		<td>${vo.author }</td>
	    		<td>${vo.company }</td>
	    		<td>${vo.isbn }</td>
	    		<td>${vo.count }</td>
	    	</tr>
	    </c:forEach>
	</table>
	
	<h1>도서 입력</h1>
	<form action = "bookInsert.do" method = "post">
		<table>
			<tr>
				<td>제목</td>
				<td><input type = "text" name = "title"></td>
			</tr>
			<tr>
				<td>작가</td>
				<td><input type = "text" name = "author"></td>
			</tr>
			<tr>
				<td>출판사</td>
				<td><input type = "text" name = "company"></td>
			</tr>
			<tr>
				<td>ISBN</td>
				<td><input type = "text" name = "isbn"></td>
			</tr>
			<tr>
				<td>보유도서수</td>
				<td><input type = "text" name = "count"></td>
			</tr>
		</table>
			<button type = "submit">등록</button>
	</form>
	
	
</body>
</html>