<%@page import="csdit.LoginDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	LoginDAO dbPro = new LoginDAO();
	int check = dbPro.checkUser(id, pwd);
	
	if(check==1){
		session.setAttribute("id", id);
		%>
		<jsp:forward page="welcome.jsp">
			<jsp:param value="<%=id%>" name="id"/>
		</jsp:forward>
	<%}else if(check==0){//비번이 틀렸습니다.
%>		

<script>
	alert("패스워드 오류.");
	location.href="loginform.jsp";
</script>	
<%	
	}else { //아이디 또는 비번이 틀립니다.
%>
<script>
	alert("없는 아이디 입니다..");
	location.href="../12week/insertFrom.jsp";
</script>	

<%		
	}
%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
</body>
</html>