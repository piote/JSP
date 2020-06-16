<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 입력</title>
</head>
<body>
	<h1>사용자 입력 폼</h1>
	
	<form action= "insertPro.jsp"method = "POST">
		ID : <input type="text" name="id"><br>
		제목 : <input type="text" name="subject"><br>
		내용 : <input type="text" name="content"><br>
		글쓴이 : <input type="text" name="writer"><br>
		날짜 <input type="text" name="date" value="<%= time.format(nowTime) %>"><br>
		<input type="submit" value="입력완료">
		<input type="reset" value="다시작성">
	</form>
</body>
</html>