package com.jsp.ex.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Sample")
public class Sample extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Sample() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		System.out.println("init() 실행됨!");
	}

	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		System.out.println("service() 실행됨!");

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());

		System.out.println("doGet()");

		// 컨텐츠 타입을 html로 응답하기
		response.setContentType("text/html; charset = UTF-8");
		PrintWriter writer = response.getWriter(); // 웹 브라우저에 출력하기 위한 스트림

		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>Sample.java</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>Hello world! </h1>");
		writer.println("</body>");
		writer.println("</html>");

		writer.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost()");

		// 컨텐츠 타입을 html로 응답하기
		response.setContentType("text/html; charset = UTF-8");
		PrintWriter writer = response.getWriter(); // 웹 브라우저에 출력하기 위한 스트림

		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>Sample.java</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>Hello world! </h1>");
		writer.println("</body>");
		writer.println("</html>");

		writer.close();
	}

}
