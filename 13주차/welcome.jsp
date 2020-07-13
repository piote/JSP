<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
</head>
<body>
	한영합니다.<br>
	<%=id %>로그인.<br>
	<input type="button" onclick="location.href='logout.jsp'" value="로그아웃">
</body>
</html>