<%@page import="com.model.MemberDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
		// 문제. 여기로 넘어온 id와 pw가 일치하는 사람의 
		// id, pw, nick, phone 값을 콘솔창에 출력하시오
		// 쌤풀이
		request.setCharacterEncoding("EUC-KR");
		String input_id = request.getParameter("id");
		String input_pw = request.getParameter("pw");
		
		MemberDTO info = null; //자: 처음에는 로그인 안 했으니 null
		
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
		String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PW = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, input_id);		
		psmt.setString(2, input_pw);
		
		ResultSet rs = psmt.executeQuery();
		
		
		//자: 로그인 성공시 if문 안으로 들어옴
		if(rs.next()){ //자:로그인 성공시에만 들어올 수 있음! 다음 내용이 있다면 조건문 실행!
			// 로그인이 성공했을 때
			String id = rs.getString("ID");
			String pw = rs.getString("PW");
			String nick = rs.getString("NICK");
			String phone = rs.getString("PHONE");
			
			info = new MemberDTO(id, pw, nick, phone);
		}
		
		// 4. 연결종료

		if(psmt != null){
			psmt.close();
		}
		
		if(conn != null){
			conn.close();
		}
		
		
		if(rs!= null){
			rs.close();
		}
		
		
		// 로그인 성공 실패 여부
		if(info == null){
			// 로그인 실패
			response.sendRedirect("login.jsp");
		}else{
			// 로그인 성공
			
			//response.sendRedirect("loginsuccess.jsp?nick="+info.getNick()); //자:1)get방식 =>보안에 취약
			session.setAttribute("info",info);//자:2)쿠키, 세션방식=>그 중 세션
			response.sendRedirect("loginsuccess.jsp"); 
		}
		
		/* 자영풀이 
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id);
		System.out.println(pw);
		
		
		// DB연결하기
		
		//1. 드라이버 동적로딩
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
		String sql = "SELECT * FROM MEMBER WHERE ID = ? and PW = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setString(2, pw); //자:이겨서 2로 안바꿔서 에러남
		
		
		//resultset
		ResultSet rs = null;
		rs = psmt.executeQuery(); //커서객체 
		
		if(rs.next() == true){ 
			String login_id = rs.getString(1); //1번컬럼(id)
			String login_pw = rs.getString(2); //2번컬럼(pw)
			
			System.out.print(login_id + "님 환영합니다.");
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
