package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04From
 */
@WebServlet("/Ex04From")
public class Ex04From extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// client가 전달한 데이터 꺼내기
		// talk : "ㅋㅋㅋㅋㅋㅋ"
		// name : value -> Parameter
		request.setCharacterEncoding("EUC-KR");
		
		String talk = request.getParameter("talk");
		System.out.println(talk);
	}

}
