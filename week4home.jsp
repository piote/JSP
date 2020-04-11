<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>개인면담</title>
	<style> 
		table {
 			border-collapse: collapse;
		}
		th {
		color:yellow;
		background-color:purple;
		}
		table, td, th {
		  border: 1px solid black;
		}
		#cont{
		width:500px;
		height:200px;
		}
	</style>
</head>
<body>
	<h2>개인면담 카드</h2>
	<hr>
	<form action= "week4homepro.jsp" method="post">
	<table>
		<tr>
			<th>소속</th>
			<td><input type="text" name="dept"></td>
		</tr>
		<tr>
			<th>성명</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>현주소</th>
			<td><input type="text" name="addr"></td>
		</tr>
		<tr>
			<th>입사년월일</th>
			<td><input type="text" name="startDate" placeholder="연도-월-일"></td>
		</tr>
		<tr>
			<th>학력</th>
			<td>
				<input type="radio" id="1" name="education" value="중졸">
				<label for="1">중졸</label>
				<input type="radio" id="2" name="education" value="고졸">
				<label for="2">고졸</label>
				<input type="radio" id="3" name="education" value="전문대졸">
				<label for="3">전문대졸</label>
				<input type="radio" id="4" name="education" value="대졸">
				<label for="4">대졸</label>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<fieldset>
					<legend>자격증</legend>
					<input type="checkbox" name="certificate" value="자동차 2종">자동차 2종
					<input type="checkbox" name="certificate" value="정보처리 산업기사">정보처리 산업기사
					<input type="checkbox" name="certificate" value="컴퓨터활용">컴퓨터활용
					<input type="checkbox" name="certificate" value="기타">기타
				</fieldset>
			</td>
		</tr>
		<tr>
			<th>상담내용</th>
			<td><input type="text" name="content" id= cont placeholder="상담내역 입력하기"></td>
		</tr>
		<tr>
			<td id="btnt" align="center" colspan="2"><input type="submit" value="입력완료"><input type="button" value="다시하기"></td>
		</tr>
	</table>	
	</form>
</body>
</html>