package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

/**
 * Servlet implementation class joinService
 */
@WebServlet("/joinService")
public class joinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 문제1. 입력한 id, pw, nick, phone 정보를 콘솔창에 출력하시오.
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String phone = request.getParameter("phone");
		
		
		MemberDTO dto = new MemberDTO(id, pw, nick, phone);
		MemberDAO dao = new MemberDAO();
		
		//dao.join(id, pw, nick, phone);
		int cnt = dao.join(dto);
		
		
		
		if(cnt > 0){
			System.out.println("회원가입 성공"); //자: 클라이언트가 보는게x 서버 백엔드에서 본다o
			response.sendRedirect("main.jsp");
		}else{
			System.out.println("회원가입 실패");
			response.sendRedirect("join.jsp");
		}

	}

}
