<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//연결정보 설정
    	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
    	String user = "JSP";
    	String passward = "1111";
    	
    	//1.드라이브 로드
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	
    	//2.연결객체 생성
    	Connection con = DriverManager.getConnection(url, user, passward);
    	
    	
    	//3.sql 준비 및 실행
    	String sql = "SELECT * FROM BOARD";
    	Statement st = con.createStatement();
    
    	//반환객체
    	ResultSet rs =st.executeQuery(sql);
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container"></div>
	<h1 class="text-center font-weight-bold">로그인 정보</h1>
	<br><br>
	<table class="table table-hover">
		<tr>
			<th>아이디</th>
			<th>제목</th>
			<th>내용</th>
			<th>글쓴이</th>
			<th>날짜</th>
		</tr>
<% //5.결과 집합 처리
	while(rs.next()){
		int id=rs.getInt("ID");
		String subject=rs.getString("SUBJECT");
		String content=rs.getString("CONTENT");
		String writer=rs.getString("WRITER");
		Date date=rs.getDate("REGDATE");	
%>
		<tr>
			<td><a href= "updateForm.jsp?id=<%=id %>&date=<%=date%>"><%=id %></td>
			<td><%=subject %></td>
			<td><%=content %></td>
			<td><%=writer %></td>
			<td><%=date %></td>
		</tr>
		
<% } 
//6.객채해지
	rs.close();
	st.close();
	con.close();
%>


	</table>
	</div>
</body>
</html>