<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- Web Page�� (Nick)�� ȯ���մϴ�! �� ����ϼ���. --%>
	
	
	�ڿ�Ǯ��  
	<%
	// �ڿ�Ǯ��
	MemberDTO m1 = (MemberDTO) session.getAttribute("info");
	//String[] info = request.getParameterValues("info");
	//System.out.println(info[0]);
	String nick = m1.getNick();
	%>
	
	<h1><%=nick %> �� ȯ���մϴ�</h1>
	
	��Ǯ��
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	 %>
	<%=info.getNick() %> �� Welcome! <a href = "logoutService.jsp">�α׾ƿ�</a>
	
	
</body>
</html>