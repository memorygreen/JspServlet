<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%	
		// 문제1. 입력한 id, pw, nick, phone 정보를 콘솔창에 출력하시오.
	
		//쌤풀이
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String phone = request.getParameter("phone");
		
		//System.out.println(id + "/" + pw + "/" + nick + "/"+phone);  
		
		// JDBC
		
		// 0. 해당 드라이버 파일 넣기 (프로젝트) (완료)
		
		// 문제. 해당 회원정보를 member테이블에 넣어주세요
		
		//쌤풀이
		// 1. 드라이버 동적로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		
		// 2. 커넥션(Connection) 연결
		//jdbc:oracle:thin:@localhost:1521:xe
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "hr";
		String db_pw = "hr";
		
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		if(conn != null){
			System.out.println("Connection 연결성공");
		}else{
			System.out.println("Connection 연결실패");		
		}
		
		
		// 3. SQL문 작성 및 실행
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, nick);
		psmt.setString(4, phone);
		
		int cnt = psmt.executeUpdate();
		
		
		// 4. 연결종료
		if(psmt != null){
			psmt.close();
		}
		
		if(conn != null){
			conn.close();
		}
		
		if(cnt > 0){
			System.out.println("회원가입 성공"); //자: 클라이언트가 보는게x 서버 백엔드에서 본다o
			response.sendRedirect("main.jsp");
		}else{
			System.out.println("회원가입 실패");
			response.sendRedirect("join.jsp");
		}
		/*
		// 자영풀이
		// 1. 드라이버 동적로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2. 커넥션(Connection) 연결
		String db_url ="jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "hr";
		String db_pw = "hr";
		
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		// 연결 성공 여부 확인
		if(conn != null){
			System.out.println("Connection 연결 성공!");
		}else{
			System.out.println("Connection 연결 실패!");
		}
		
		
		// 3. SQL문 작성 및 실행
		String sql = "INSERT INTO MEMBER VALUES (?,?,?,?)";
		
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, nick);
		psmt.setString(4, phone);
		
		int cnt = psmt.executeUpdate(); //성공==1
		
		if(cnt > 0){
			System.out.println("회원등록 성공!");
		}else{
			System.out.println("회원등록 실패!");
		}
		
		// 4. 연결종료
		
		if(psmt != null){
			psmt.close();
			System.out.println("PreparedStatement 종료");
		}
		
		if(conn != null){
			conn.close();
			System.out.println("Connection 종료");
		}
		*/
		
	%>
</body>
</html>