<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 입력</title>
</head>
<body>
	<h1>학생 정보 입력</h1>
	<form action="insert_studentAction.jsp">
		<table border="1">
			<tr>
				<th>학번</th>
				<th><input type="text" name="sno"></th>
			</tr>
			<tr>
				<th>이름</th>
				<th><input type="text" name="name"></th>
			</tr>
			<tr>
				<th>전공</th>
				<th><input type="text" name="dept"></th>
			</tr>
		</table>
		<br>
		<button type="submit">추가</button>
	</form>

</body>
</html>