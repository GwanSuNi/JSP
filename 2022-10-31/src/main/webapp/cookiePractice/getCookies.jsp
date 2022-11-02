<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 : getCookies.jsp</title>
</head>
<body>
	<h1>쿠키 조회 예제</h1>
	<hr>
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies == null) {
			out.println("쿠키가 없습니다");
		} else {
			for (Cookie c : cookies) {
				out.println("쿠키 이름(name): " +  c.getName() + ", ");
				out.println("쿠키 값(value): " +  c.getValue());
				
			}
		}
	%>

</body>
</html>