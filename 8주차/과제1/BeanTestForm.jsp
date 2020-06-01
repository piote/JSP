<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>과제1</title>
</head>
<body>
	<h2>학번, 이름, 학년, 선택과목을 입력하는 폼</h2>
	<hr>
	
	<form action="BeanTestPro.jsp" method="post">
	학번   : <input type="text" name="num"><br>
	이름   : <input type="text" name="name"><br>
	학년   : <input type="radio" id="1" name="level" value="1">
				<label for="1">1학년</label>
				<input type="radio" id="2" name="level" value="2">
				<label for="2">2학년</label><br>
	선택과목 : <select name="subject">
			<option value="java">JAVA
			<option value="jsp">JSP
			<option value="xml">XML
		</select><br>
		<input type="submit" name="name" value="확인">
	</form>
</body>
</html>