<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>현재 시각을 쿠키로 저장</h1>
	<hr>
	String now = new java.util.Date().toString(); <br>
	Cookie cookie = new Cookie("lastConnect", now); <br>
	cookie.setMaxAge(10); // 초 단위 : 10초 <br>
	response.addCookie(cookie); <br>
	
	<%
	String now = new java.util.Date().toString();
	Cookie cookie = new Cookie("lastConnect", now);
	cookie.setMaxAge(10); // 초 단위 : 10초
	response.addCookie(cookie);
	%>
	
	<hr><a href="getCookies.jsp">쿠키 조회</a>
</body>
</html>