package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex06BgColor
 */
@WebServlet("/Ex06BgColor")
public class Ex06BgColor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String color = request.getParameter("color");
//		System.out.println(color); //자:확인용
		
		//구구단 쌤풀이
		int fdan = Integer.parseInt(request.getParameter("fdan"));
		int ldan = Integer.parseInt(request.getParameter("ldan"));
		
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		
		// 구구단 쌤풀이
		out.print("<table border='1px solid black' bgcolor='" + color + "'>");
		for(int i = fdan; i<=ldan; i++) {
			out.print("<tr>");
			for(int j=1;j<=9;j++) {
				out.print("<td>");
				out.print(i+"*"+j+"="+(i*j));
				out.print("</td>");
			}
			out.print("</tr>");
		}
		out.print("</table>");
		
		
		
		// 구구단 표 만들기
//		// 자영풀이
//		String fdan = request.getParameter("fdan");
//		int c_fdan = Integer.parseInt(fdan);
//		String ldan = request.getParameter("ldan");
//		int c_ldan = Integer.parseInt(ldan);
//		
////		System.out.println(c_fdan);
////		System.out.println(c_ldan);
//		
//		
//		//자:구구단 만들기
////		for(int i=c_fdan;i<=c_ldan;i++) {			
////			for(int j=1;j<=9;j++) {
////				out.print(i + " * "+j+"="+(i*j));			
////			}
////		}
//		
//		//자: 테이블 만들기
//		out.print("<table border = '1px solid black' bgcolor = '" + color + "'>");
//		//자: 테이블 안에 넣기
//		for(int i=c_fdan; i<=c_ldan ;i++) {	
//			out.print("<tr>");
//			for(int j=1;j<=9;j++) {
//				out.print("<td>");
//				out.print(i + "*" + j+ "=" + (i*j));	
//				out.print("</td>");
//			}
//			out.print("</tr>");
//		}
//		out.print("</table>");
//		out.print("</body>");
//		out.print("</html>");
	}

}
