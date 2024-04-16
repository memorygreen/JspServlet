package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex02Request
 */
@WebServlet("/Ex02Request")
public class Ex02Request extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
//		// 자영 실습
//		String ip1 = request.getRemoteAddr();
//		response.setCharacterEncoding("EUC-KR"); //자:out 위에다가 인코딩하자!!!
//		PrintWriter out1 = response.getWriter();
//		
//		//인코딩
//		
//		// 조건문 판별
//		out1.print("<html>");
//		out1.print("<body>");
//		
//		if (ip1.equals("59.0.147.206")) {
//			System.out.println("김동혁님이 접속했습니다.");
//			out1.print("<h1>" + "김동혁님(" + ip1 + ") 환영합니다~!~!~!" + "</h1>");
//			out1.print("<img src = 'img1.jpg'>");
//		}else if (ip1.equals("211.48.213.178")) {
//			System.out.println("박병관님이 접속했습니다.");
//			out1.print("<h1>" + "선생님(" + ip1 + ") 환영합니다~!~!~!" + "</h1>");
//			out1.print("<img src = 'img1.jpg'>");
//			
//		}else {
//			System.out.println(ip1 + "님이 접속했습니다");
//			out1.print("<h1>" + "손님(" + ip1 + ") 환영합니다~!~!~!"  + "</h1>");
//			out1.print("<img src = 'img1.jpg'>");
//			
//			
//		}
//		
//		out1.print("</body>");
//		out1.print("</html>");
		
		// 선생님
		// 문제. ip에 따라 다른 결과 보여주기
		
		String ip = request.getRemoteAddr();
		
		response.setCharacterEncoding("EUC-KR");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		
		if (ip.equals("59.0.124.189")) {
			out.print("대길아 반가워 :D 너를 만난 건 행운이야!");
		} else if(ip.equals("119.200.31.248")) {
			out.print("민학아 사실 대길이보다 너가 더 좋아");
			
		} else if(ip.equals("210.183.87.94")) {
			out.print("민재야 사실 너가 우리반에서 너가 제일 좋아");
		} else {
			out.print("나는 모두들 사랑합니다 ~ ^^");
		}
		
		out.print("</body>");
		out.print("</html>");
		
		
		
		
	}
	
	

}
