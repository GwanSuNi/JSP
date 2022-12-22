<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%!
	int a = 10;
	String name = "KIM";

	public int sum(int a, int b) {
		return a + b;
	}%>

	a =
	<%=a%>
	<br> name =
	<%=name%>
	<br>
	<%
	out.println("sum(1, 2) -> ");
	out.println(sum(1, 2));
	%>
</body>
</html>