<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 확인</title>
</head>
<body>

	<%
	//mariaDB 준비
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("mysql 사용가능");

	// mariaDB 연결
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspTest1", "####", "####");
	System.out.println(conn + "<-- conn");

	// 쿼리
	PreparedStatement stmt = conn.prepareStatement("select * from student");
	System.out.println(stmt + "<-- stmt");

	// 쿼리 실행
	ResultSet rs = stmt.executeQuery();
	%>
	<table border="1">
		<tr>
			<td>학번</td>
			<td>이름</td>
			<td>전공</td>
		</tr>

		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("sno")%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("dept")%></td>
		</tr>

		<%
		}
		%>
	</table>

</body>
</html>