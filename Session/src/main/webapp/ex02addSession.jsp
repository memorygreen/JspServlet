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
	
		session.setAttribute("name", "���ڿ�");
		
		// ������ �����ֱ� ����
		session.setMaxInactiveInterval(10); //��:1==1��
		
	
	%>
</body>
</html>