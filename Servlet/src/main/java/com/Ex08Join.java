package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex08Join
 */
@WebServlet("/Ex08Join")
public class Ex08Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// Client가 입력한 ID, PW를 콘솔창에 출력
		// 예시) ID : pbk
		//		PW : 1234
		
		// 자영풀이
//		String id = request.getParameter("id");
//		System.out.println(id);
//		String pw = request.getParameter("pw");
//		System.out.println(pw);
				
		
		//쌤풀이
		request.setCharacterEncoding("EUC-KR"); //자:POST방식 인코딩은 request 객체
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
//		String hobby = request.getParameter("hobby");
		String[] hobby = request.getParameterValues("hobby");
		
		System.out.println("id : " + id);
		System.out.println("pw : " + pw);
		System.out.println("gender : " + gender);

//		자영 풀이
//		System.out.println("hobby : " + hobby[0]);
		
//		System.out.print("hobby : ");
//		for(int i =0;i<=hobby.length;i++) { //자:<= 아니고 < 해야함
//			System.out.print(hobby[i] + ", ");
//		}
		
		
		// 쌤풀이
		System.out.print("hobby : ");
		for(int i=0; i < hobby.length; i++) {
			System.out.print(hobby[i] +  " ");
		}
	}

}
