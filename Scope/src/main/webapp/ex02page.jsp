<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>���� �������� ex02page.jsp�Դϴ�.</h2>
	 page : <%= pageContext.getAttribute("page") %> <br>
	 request : <%= request.getAttribute("request") %> <br>
	 session : <%= session.getAttribute("session") %> <br>
	 application : <%= application.getAttribute("application") %>
	 
</body>
</html>