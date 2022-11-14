<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MySQL Connect</title>
<style type="text/css">
thead {
	background: gray;
}
tbody {
	background: silver;
}
td {
	align-content: center;
	align-items: center;
}
</style>
</head>
<body>
	<h1>Student Table</h1>
	<table border="2" width="30%">
		<caption>jspTable1</caption>
		<thead>
			<tr>
				<td>num</td>
				<td>name</td>
				<td>dept</td>
			</tr>
		</thead>
		<%
		// connector J (MySQL cj JDBC Driver) 마리아DB 아님
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = null;
		Statement statmt = null;
		ResultSet rtst = null;

		try {
			// 프로토콜://서버(ip):포트번호/접속DB명
			String url = "jdbc:mysql://localhost:3306/jspTest1";
			String dbID = "testID";
			// 실행 시 비밀번호 수정
			String dbPwd = "####";
			String dbQry = "select * from jspTable order by num";

			// DB Connection 객체 생성
			conn = DriverManager.getConnection(url, dbID, dbPwd);
			// SQL Statement 객체 생성
			statmt = conn.createStatement();
			// Query 실행
			rtst = statmt.executeQuery(dbQry);

			while (rtst.next()) {
		%>
		<tbody>
			<tr>
				<td><%=rtst.getString("num")%></td>
				<td><%=rtst.getString("name")%></td>
				<td><%=rtst.getString("dept")%></td>
			</tr>
		</tbody>
		<%
		}
			
		} catch (SQLException e) {
		e.printStackTrace(); // 에러 출력 콘솔
		out.println(e.getMessage()); // 에러 출력 새 창 웹브라우저
		} finally {
		if (rtst != null) {
		try {
			rtst.close();
		} catch (SQLException e) {
		}
		}
		if (statmt != null) {
		try {
			statmt.close();
		} catch (SQLException e) {
		}
		}
		if (conn != null) {
		try {
			conn.close();
		} catch (SQLException e) {
		}
		}
		}
		%>
	</table>
</body>
</html>