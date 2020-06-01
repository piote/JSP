<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>과제2</title>
	<style type="text/css">
	table, td, th {
		  border: 1px solid black;
		}
	table {
		border-collapse: collapse;
	}
	</style>
</head>
<body>
	<h2>글쓰기</h2>
	<jsp:useBean id="h" class="ch10.home">
		<jsp:setProperty property="*" name="h"/>
	</jsp:useBean>
	<table>
		<tr>
		<th colspan="2" align="right"><a style="color: blue;">글목록</a></th>
		</tr>
		<tr>
		<th>이름</th>
		<td>${h.name}</td>
		</tr>
		<tr>
		<th>제목</th>
		<td>${h.title}</td>
		</tr>
		<tr>
		<th>이메일</th>
		<td>${h.mail}</td>
		</tr>
		<tr>
		<th>내용</th>
		<td style="width:400;height:300;">${h.info}</td>
		</tr>
		<tr>
		<th>글 삭제</th>
		<td><input type="text" name="pwd"/><input type="button" value="삭제"/></td>
	</table>
</body>
</html>