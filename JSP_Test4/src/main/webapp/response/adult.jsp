<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성인 전용</title>
</head>
<body>
	<%
		String age = request.getParameter("age");
		String name = request.getParameter("name");
	%>
	당신은 <%= age %> 살 <%= name %> 입니다.
</body>
</html>