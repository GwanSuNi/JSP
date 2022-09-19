<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%= new java.util.Date() %>
 <%!
 	String str1 = "JSP";
 	String str2 = "Hello World";
 %>
 <h2> 처음 만들어보는 <%= str1 %></h2>
 <p>
 	<% out.println(str2 + str1 + " Test!");%>
 </p>
</body>
</html>