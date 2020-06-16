<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
 <% request.setCharacterEncoding("utf-8"); %>
     <%
    	//연결정보 설정
    	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
    	String user = "JSP";
    	String passward = "1111";
    	
    	//1.드라이브 로드
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	
    	//2.연결객체 생성
    	Connection con = DriverManager.getConnection(url, user, passward);
    	
    	//3.생성된 연결을 통해  sql문 실행의뢰준비
    	String sql ="UPDATE BOARD SET SUBJECT=?, CONTENT=? , WRITER=? , REGDATE=? ,WHERE ID=?";
    	
    	PreparedStatement pstmt = con.prepareStatement(sql);
    	pstmt.setString(1 , request.getParameter("subject"));
    	pstmt.setString(2 , request.getParameter("content"));
    	pstmt.setString(3 , request.getParameter("writer"));
    	pstmt.setString(4 , request.getParameter("date"));
    	pstmt.setString(5 , request.getParameter("id"));
    	
    	//4.sql 실행
    	int i = pstmt.executeUpdate();
    	
    	//5.객체 해제
    	pstmt.close();
    	con.close();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>데이터 업데이트Pro</title>
</head>
<body>
	
</body>
</html>