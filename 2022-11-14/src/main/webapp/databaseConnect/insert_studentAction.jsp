<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 저장 완료</title>
</head>
<body>
	<h1>학생 정보 저장 완료</h1>
	<%
	// 작성한 값 받아오기
	int sno = Integer.parseInt(request.getParameter("sno"));
	String name = request.getParameter("name");
	String dept = request.getParameter("dept");

	// mariaDB 준비
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("mysql 사용가능");

	// mariaDB 연결
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspTest1", "####", "####");
	System.out.println(conn + "<-- conn");

	// 쿼리
	PreparedStatement stmt = conn.prepareStatement("insert into student(sno, name, dept) values(?,?,?)"); // ?표현식 : 변수자리
	stmt.setInt(1, sno);
	stmt.setString(2, name);
	stmt.setString(3, dept);
	System.out.println(stmt + "<-- stmt");

	// 쿼리 실행
	stmt.executeUpdate();
	conn.close(); // DB 종료
	%>
	<form action="printDB.jsp">
		<br>
		<button type="submit">결과 확인</button>
	</form>
</body>
</html>
