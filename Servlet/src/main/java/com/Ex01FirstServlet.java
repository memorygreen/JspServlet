package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex01FirstServlet
 */
@WebServlet("/Ex01FirstServlet")
public class Ex01FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		System.out.println("Hello World!");
		
		// request - 요청 객체
		// Client가 요청한 모든 정보를 가지고 있다.
		String ip = request.getRemoteAddr();
		System.out.println(ip + "님이 접속했습니다.");
		
		// response - 응답객체
		// Server에서 어떠한 방식으로 응답을 할 것인지에 대한 정보를 가지고 있다.
		
		// 한글 인코딩
		response.setCharacterEncoding("EUC-KR");
		
		// 응답 시 Web 페이지에 글자를 작성할 수 있는 객체
		PrintWriter out = response.getWriter(); //자: PrintWriter 자동완성
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>" + ip + "님 반가워요 ^^." + "</h1>");
		out.print("<img src = 'img1.jpg'>");
		out.print("</body>");
		out.print("</html>");
	}

}
