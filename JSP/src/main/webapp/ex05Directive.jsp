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
		지시자(Directive)
		- JSP가 Servlet로 변환될 때 필요한 정보를 기술하는 것
	 --%>
	 
	 <% String name = "박병관"; %>
	 
	 <% Random ran = new Random(); %>
	 
	 <%= name %>님 환영합니다!
	 
	 <% String addr = "광주광역시 서구 광천동 비밀번호 1515"; %>
	 <% int a = 10 / 0; %>
	 
	 
	 
</body>
</html>