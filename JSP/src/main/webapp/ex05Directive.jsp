<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>    
<%@page errorPage="ex05error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		������(Directive)
		- JSP�� Servlet�� ��ȯ�� �� �ʿ��� ������ ����ϴ� ��
	 --%>
	 
	 <% String name = "�ں���"; %>
	 
	 <% Random ran = new Random(); %>
	 
	 <%= name %>�� ȯ���մϴ�!
	 
	 <% String addr = "���ֱ����� ���� ��õ�� ��й�ȣ 1515"; %>
	 <% int a = 10 / 0; %>
	 
	 
	 
</body>
</html>