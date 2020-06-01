<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>과제1_2</title>
	<style type="text/css">
	table, td, th {
		  border: 1px solid black;
		}
	</style>
</head>
<body>
	<h2>학생정보</h2>
	<hr>
	<jsp:useBean id="st" class="ch10.student">
	<jsp:setProperty property="*" name="st"/>
	</jsp:useBean>
	
	
	
	<table>
		<tr>
			<th>학번</th>
			<td>
				<jsp:getProperty property="num" name="st"/>
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td><jsp:getProperty property="name" name="st"/></td>
		</tr>
		<tr>
			<th>학년</th>
			<td><jsp:getProperty property="level" name="st"/></td>
		</tr>
		<tr>
			<th>선택과목</th>
			<td><jsp:getProperty property="subject" name="st"/></td>
		</tr>
	</table>
</body>
</html>