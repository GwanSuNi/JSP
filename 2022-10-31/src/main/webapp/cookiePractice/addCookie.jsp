<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제: addTimeCookie.jsp</title>
</head>
<body>
	<h1> 쿠키 만들기 예제</h1>
	<hr>
	Cookie cookie = new Cookie("user", "kang"); <br>
	cookie.setMaxAge(2 * 60); // 초 단위: 2분 <br>
	response.addCookie(cookie); <br>
	<%
	Cookie cookie = new Cookie("user", "kang");
	cookie.setMaxAge(2 * 60); // 초 단위: 2분
	response.addCookie(cookie);
	%>
	
	<hr><a href="addTimeCookie.jsp">현재 시간을 쿠키로 저장</a>
</body>
</html>