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
		// ����. ����� �Ѿ�� id�� pw�� ��ġ�ϴ� ����� 
		// id, pw, nick, phone ���� �ܼ�â�� ����Ͻÿ�
		// ��Ǯ��
		request.setCharacterEncoding("EUC-KR");
		String input_id = request.getParameter("id");
		String input_pw = request.getParameter("pw");
		
		MemberDTO info = null; //��: ó������ �α��� �� ������ null
		
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
		String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PW = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, input_id);		
		psmt.setString(2, input_pw);
		
		ResultSet rs = psmt.executeQuery();
		
		
		//��: �α��� ������ if�� ������ ����
		if(rs.next()){ //��:�α��� �����ÿ��� ���� �� ����! ���� ������ �ִٸ� ���ǹ� ����!
			// �α����� �������� ��
			String id = rs.getString("ID");
			String pw = rs.getString("PW");
			String nick = rs.getString("NICK");
			String phone = rs.getString("PHONE");
			
			info = new MemberDTO(id, pw, nick, phone);
		}
		
		// 4. ��������

		if(psmt != null){
			psmt.close();
		}
		
		if(conn != null){
			conn.close();
		}
		
		
		if(rs!= null){
			rs.close();
		}
		
		
		// �α��� ���� ���� ����
		if(info == null){
			// �α��� ����
			response.sendRedirect("login.jsp");
		}else{
			// �α��� ����
			
			//response.sendRedirect("loginsuccess.jsp?nick="+info.getNick()); //��:1)get��� =>���ȿ� ���
			session.setAttribute("info",info);//��:2)��Ű, ���ǹ��=>�� �� ����
			response.sendRedirect("loginsuccess.jsp"); 
		}
		
		/* �ڿ�Ǯ�� 
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id);
		System.out.println(pw);
		
		
		// DB�����ϱ�
		
		//1. ����̹� �����ε�
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
		String sql = "SELECT * FROM MEMBER WHERE ID = ? and PW = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setString(2, pw); //��:�̰ܼ� 2�� �ȹٲ㼭 ������
		
		
		//resultset
		ResultSet rs = null;
		rs = psmt.executeQuery(); //Ŀ����ü 
		
		if(rs.next() == true){ 
			String login_id = rs.getString(1); //1���÷�(id)
			String login_pw = rs.getString(2); //2���÷�(pw)
			
			System.out.print(login_id + "�� ȯ���մϴ�.");
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
