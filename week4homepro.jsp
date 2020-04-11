<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 입력 확인</title>
	<style> 
		table {
 			border-collapse: collapse;
 			width: 600px;
		}

		table, td, th {
		  border: 1px solid black;
		}
		th {
  		height: 45px;
		}
		th {
			width: 100px;
		}
	</style>
</head>
<body>
	<%
	 request.setCharacterEncoding("utf-8");
	 String dept = request.getParameter("dept");
	 String name = request.getParameter("name");
	 String addr = request.getParameter("addr");
	 String startDate = request.getParameter("startDate");
	 String education = request.getParameter("education");
	 String content = request.getParameter("content");
	%>
	<h1>사용자 입려 확인</h1>
		<table>
			<tr>
				<th>컨트롤 요소</th>
				<td align="center">입력값</td>
			</tr>
			<tr>
				<th>소속</th>
				<td><%= dept %></td>
			</tr>
			<tr>
				<th>성명</th>
				<td><%= name %></td>
			</tr>
			<tr>
				<th>현주소</th>
				<td><%= addr %></td>
			</tr>
			<tr>
				<th>입사년월일</th>
				<td><%= startDate %></td>
			</tr>
			<tr>
				<th>학력</th>
				<td><%= education %></td>
			</tr>
			<tr>
				<th>자격증</th>
				<td>
					<%
					String[] certificate=request.getParameterValues("certificate");
					for(int i= 0; i<certificate.length;i++){
						out.println(certificate[i] + " ");
					}
					%>
				</td>
			</tr>
			<tr>
				<th>상담내용</th>
				<td><%= content %></td>
			</tr>
			<tr>
				<th>각 폼 컨트롤의 이름들</th>
				<td>
				<%
			Enumeration<String> en = request.getParameterNames();
			String parameterName="";
			
			while(en.hasMoreElements()){
				parameterName = en.nextElement();
				out.print(parameterName +" ");
			}
		%></td>
			</tr>
		</table>
</body>
</html>