package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex05MakeTable
 */
@WebServlet("/Ex05MakeTable")
public class Ex05MakeTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
//		// 자영풀이
//		String room = request.getParameter("room");
//		int room_num = Integer.parseInt(room);
//		
//		// 반복문(동혁씨 도움 받아서...)
//		PrintWriter out = response.getWriter();
//		out.print("<html>");
//		out.print("<body>");
//		out.print("<table border='1'>");
//		out.print("</body>");
//		out.print("</html>");
//		out.print("<tr>");
//		for (int i = 1; i<=room_num;i++) {
//			out.print("<td>"+i+"</td>");
//		}
//		out.print("</tr>");
//		out.print("</table>");
		
		//쌤풀이
		String room = request.getParameter("room");
		
		//자: 문자열->정수 변경
		int croom = Integer.parseInt(room);
		
		//자:웹페이지 작성 위해 PrintWriter 객체
		PrintWriter out = response.getWriter();
		
		//자: 태그 만들기
		out.print("<html>");
		out.print("<body>");
		
		//자:테이블 태그 만들기
		//자:테이블 속성->테두리
		out.print("<table border='1px solid black' >");
		out.print("<tr>");
		for(int i=1 ; i<=croom;i++) {
			out.print("<td>" + i + "</td>");
		}
		out.print("</tr>");
		
		out.print("</table>");
		
		out.print("</body>");
		out.print("</html>");
		
		
	}

}
