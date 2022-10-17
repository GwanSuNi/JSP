<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
<% 
// post 방식로 전달했을 때 한글 안깨지게 함
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String sno = request.getParameter("sno");
int jspScore = Integer.parseInt(request.getParameter("jspScore"));
int htmlScore = Integer.parseInt(request.getParameter("htmlScore"));
// int someScore = Integer.valueOf(request.getParameter("htmlScore"));
String sex = request.getParameter("sex");
String[] favo = request.getParameterValues("favo");

String favoStr = "";
if (favo != null) {
	for (int i = 0; i < favo.length; i++) {
		favoStr += favo[i] + " ";
	}
}
String intro = request.getParameter("intro").replace("\r\n", "<br/>");
%>

<ul>
	<li>아이디 : <%= id %></li>
	<li>이메일 : <%= email %></li>
	<li>전화번호 : <%= phone %></li>
	<li>성별 : <%= sex %></li>
	<li>취미 : <%= favoStr %></li>
	<li>자기소개 : <%= intro %></li>
	<li>학번 : <%= sno %></li>
	<li>Jsp 성적 : <%= jspScore %></li>
	<li>Html 성적 : <%= htmlScore %></li>
	<li>성적 합계 : <%= jspScore + htmlScore %></li>
	<li>성적 평균 : <%= (double)(jspScore + htmlScore) / 2%></li>
</ul>
</body>
</html>