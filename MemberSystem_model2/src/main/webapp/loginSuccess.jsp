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
	
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	 %>
	 
	<%=info.getNick() %> �� Welcome! <a href = "LogoutService">�α׾ƿ�</a>
	<br>
	<!--  �����ڸ� �� �� �ִ� ��� -->
	<%
		if(info.getId().equals("admin")){
			out.print("<a href='MemberListService'>");
			out.print("ȸ����������");
			out.print("</a>");
		}
	%>
</body>
</html>