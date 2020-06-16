<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8");
  
    	//연결정보 설정
    	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
    	String user = "JSP";
    	String passward = "1111";
    	
    	//1.드라이브 로드
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	
    	//2.연결객체 생성
    	Connection con = DriverManager.getConnection(url, user, passward);
    	
    	//3.생성된 연결을 통해  sql문 실행의뢰준비
    	String sql ="DELETE FROM BOARD WHERE ID=?";
    	
    	PreparedStatement pstmt = con.prepareStatement(sql);
    	pstmt.setString(1 , request.getParameter("id"));
    	
    	//4.sql 실행
    	int i = pstmt.executeUpdate();
    	
    	//5.객체 해제
    	pstmt.close();
    	con.close();
    	response.sendRedirect("list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>데이터 삭제</title>
</head>
<body>
	
</body>
</html>