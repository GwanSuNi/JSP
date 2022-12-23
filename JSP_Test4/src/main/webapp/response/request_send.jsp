<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전송 받은 이름과 나이</title>
</head>
<body>
	<%
		int age = Integer.parseInt(request.getParameter("age"));
		String name = request.getParameter("name");
		name = URLEncoder.encode(name, "UTF-8");
	
		if (age >= 19) {
			response.sendRedirect("adult.jsp?age="+age+"&name="+name);
		} else {
			response.sendRedirect("child.jsp?age="+age+"&name="+name);
		}
	%>
</body>
</html>