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
	<%-- Web Page에 (Nick)님 환영합니다! 를 출력하세요. --%>
	
	
	자영풀이  
	<%
	// 자영풀이
	MemberDTO m1 = (MemberDTO) session.getAttribute("info");
	//String[] info = request.getParameterValues("info");
	//System.out.println(info[0]);
	String nick = m1.getNick();
	%>
	
	<h1><%=nick %> 님 환영합니다</h1>
	
	쌤풀이
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	 %>
	<%=info.getNick() %> 님 Welcome! <a href = "logoutService.jsp">로그아웃</a>
	
	
</body>
</html>