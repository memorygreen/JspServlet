<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		Scope - JSP ���尴ü���� ����
		
		page -> request -> session ->application
		
		page - ���� JSP �ȿ����� ���� �� ��� ����
		request - ��û�� ���� ���� �� ��� ����
		session - ������ ���õ� ������ ���� �� ��� ����
		application - ��ü ���� ���� ����
		
	 --%>
	 
	 <%
		// �� scope ������ ������ ���
		pageContext.setAttribute("page", "OK");
		request.setAttribute("request", "OK");
		session.setAttribute("session","OK");
		application.setAttribute("application", "OK");
		
	 %>
	 <h2>���� �������� ex01page.jsp�Դϴ�.</h2>
	 page : <%= pageContext.getAttribute("page") %> <br>
	 request : <%= request.getAttribute("request") %> <br>
	 session : <%= session.getAttribute("session") %> <br>
	 application : <%= application.getAttribute("application") %>
	 
	 <%
	 	// request ������ �ٸ� �������� �����ϴ� ���
	 	// -forward ������ ��ȯ
	 	RequestDispatcher rd = request.getRequestDispatcher("ex02page.jsp");
	 	rd.forward(request, response);
	 %>
	 
	 
	 
	 
	 
	 
</body>
</html>