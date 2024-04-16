package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04Lunch
 */
@WebServlet("/Ex04Lunch")
public class Ex04Lunch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 한식 리스트
		String[] kList = {"풍남옥", "그냥집밥", "해뜨는집", "좋은국밥", "신신식당", "설농탕"};
		// 중식 리스트
		String[] cList = {"1515", "황금성", "말리화", "열도지", "아리산"};
		// 일식 리스트
		String[] jList = {"쿠로시로", "마시타라멘", "바른초밥", "공초밥", "카레카레"};
		
		// lunch로 선택한 거에 따라서 해당 음식에 메뉴를 랜덤으로 하나 추천해주세요
		// 예) 중식 선택 -> cList 중 랜덤으로 하나 추출해서 보여준다
		
//		// 자영풀이
//		response.setCharacterEncoding("EUC-KR");
//		String lunch = request.getParameter("lunch");
//		Random ran = new Random();
//		PrintWriter out = response.getWriter();
//		
//		if(lunch.equals("한식")) {
//			// 한식 랜덤
//			out.print(kList[ran.nextInt(kList.length)]);
//			System.out.println(kList[ran.nextInt(kList.length)]);
//			
//		}else if(lunch.equals("중식")) {
//			// 중식 랜덤
//			out.print(cList[ran.nextInt(cList.length)]);
//			System.out.println(cList[ran.nextInt(cList.length)]);
//			
//		}else if(lunch.equals("일식")) {
//			// 일식 랜덤
//			out.print(jList[ran.nextInt(jList.length)]);
//			System.out.println(jList[ran.nextInt(jList.length)]);
//			
//		}
//		
		
		
		// 쌤풀이
		String lunch = request.getParameter("lunch");
		
		Random ran = new Random();
		String menu = null;
		if(lunch.equals("한식")) {
			menu = kList[ran.nextInt(kList.length)];
		}else if(lunch.equals("중식")) {
			menu = cList[ran.nextInt(cList.length)];
		}else { //자:else if 도 가능
			menu = jList[ran.nextInt(jList.length)];
		}
		
		//자:인코딩
		response.setCharacterEncoding("EUC-KR");
		
		//자: 웹페이지에 글 쓰는 객체
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1> 오늘 추천 메뉴는 " + menu + "입니다.</h1>");
		out.print("</body>");
		out.print("</html>");
		
		
		
	}

}
