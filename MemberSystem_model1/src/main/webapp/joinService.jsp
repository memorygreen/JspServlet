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
		// ����1. �Է��� id, pw, nick, phone ������ �ܼ�â�� ����Ͻÿ�.
	
		//��Ǯ��
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String phone = request.getParameter("phone");
		
		//System.out.println(id + "/" + pw + "/" + nick + "/"+phone);  
		
		// JDBC
		
		// 0. �ش� ����̹� ���� �ֱ� (������Ʈ) (�Ϸ�)
		
		// ����. �ش� ȸ�������� member���̺� �־��ּ���
		
		//��Ǯ��
		// 1. ����̹� �����ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		
		// 2. Ŀ�ؼ�(Connection) ����
		//jdbc:oracle:thin:@localhost:1521:xe
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "hr";
		String db_pw = "hr";
		
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		if(conn != null){
			System.out.println("Connection ���Ἲ��");
		}else{
			System.out.println("Connection �������");		
		}
		
		
		// 3. SQL�� �ۼ� �� ����
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, nick);
		psmt.setString(4, phone);
		
		int cnt = psmt.executeUpdate();
		
		
		// 4. ��������
		if(psmt != null){
			psmt.close();
		}
		
		if(conn != null){
			conn.close();
		}
		
		if(cnt > 0){
			System.out.println("ȸ������ ����"); //��: Ŭ���̾�Ʈ�� ���°�x ���� �鿣�忡�� ����o
			response.sendRedirect("main.jsp");
		}else{
			System.out.println("ȸ������ ����");
			response.sendRedirect("join.jsp");
		}
		/*
		// �ڿ�Ǯ��
		// 1. ����̹� �����ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2. Ŀ�ؼ�(Connection) ����
		String db_url ="jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "hr";
		String db_pw = "hr";
		
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		// ���� ���� ���� Ȯ��
		if(conn != null){
			System.out.println("Connection ���� ����!");
		}else{
			System.out.println("Connection ���� ����!");
		}
		
		
		// 3. SQL�� �ۼ� �� ����
		String sql = "INSERT INTO MEMBER VALUES (?,?,?,?)";
		
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, nick);
		psmt.setString(4, phone);
		
		int cnt = psmt.executeUpdate(); //����==1
		
		if(cnt > 0){
			System.out.println("ȸ����� ����!");
		}else{
			System.out.println("ȸ����� ����!");
		}
		
		// 4. ��������
		
		if(psmt != null){
			psmt.close();
			System.out.println("PreparedStatement ����");
		}
		
		if(conn != null){
			conn.close();
			System.out.println("Connection ����");
		}
		*/
		
	%>
</body>
</html>