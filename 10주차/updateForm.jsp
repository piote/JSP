<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String date = request.getParameter("date");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DB 데이터 변경</title>
</head>
<body>
	<h2>DB에 로그인 데이터 변경</h2>
	
	<form action="updatePro.jsp" method="post">
		ID : <input type="text" name="id" value="<%=id%>"><br>
		제목 : <input type="text" name="subject"><br>
		내용 : <input type="text" name="content"><br>
		글쓴이 : <input type="text" name="writer"><br>
		날짜 <input type="text" name="date" value="<%= date %>"><br>
		<input type="submit" value="변경">
		<input type="button" value="삭제" onclick="location.href='delete.jsp?id=<%= id %>'">
		<input type="reset" value="재설정">
	</form>
</body>
</html>