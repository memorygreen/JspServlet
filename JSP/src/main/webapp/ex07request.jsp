<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- ex07request.html���� ���� �����͸� ���������� �������� --%>
	
	<%
		// ���尴ü request
		String goods = request.getParameter("goods");
		
	%>
	�ֹ��Ͻ� ��ǰ�� <%= goods %> �Դϴ�.
	
</body>
</html>