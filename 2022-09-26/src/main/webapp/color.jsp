<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if문 예제</title>
</head>
<%! String msg; %>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	
	if(color.equals("blue")) {
		msg = "파란 가을 하늘";
	} else if (color.equals("red")) {
		msg = "붉은 노을";
	} else if (color.equals("orange")) {
		msg = "탐스런 오렌지";
	} else {
		msg = "녹색의 계절";
	}
%>
<body bgcolor = "<%=color%>">

<b><%= name %> </b>의 정서(컬러)는
<b><%= msg %></b>입니다.

</body>
</html>