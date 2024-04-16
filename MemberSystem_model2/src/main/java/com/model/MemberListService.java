package com.model;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.coyote.Request;

/**
 * Servlet implementation class MemberListService
 */
@WebServlet("/MemberListService")
public class MemberListService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberDTO> list = dao.memberList();
		
		//HttpSession session = request.getSession();//쿠키는 사라져 get post...
		//session.setAttribute("list", list); //자:info에 담으면 로그인 정보 사라짐
		//response.sendRedirect("memberList.jsp");
		
		// Q. request에 담아서 보내기
		
		//쌤풀이
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("memberList.jsp");
		rd.forward(request, response);
		
		//자영풀이
//		request.setAttribute("list", list);
//		RequestDispatcher rd = request.getRequestDispatcher("memberList.jsp");
//		rd.forward(request, response);
		
		
	}


}
