<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
	<h1>JSP 설정을 위한 다운로드 페이지</h1>
	<hr>
	<form action="4weekhpro.jsp" method="post">
	<select name="move">
		<option value="1" selected="selected">JDK</option>
		<option value="2">TomCat</option>
		<option value="3">Eclipse</option>
	</select>
	<input type="submit" value="이동"> 
	</form>
	
</body>
</html>