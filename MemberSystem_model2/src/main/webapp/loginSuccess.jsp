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
	
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	 %>
	 
	<%=info.getNick() %> 님 Welcome! <a href = "LogoutService">로그아웃</a>
	<br>
	<!--  관리자만 볼 수 있는 기능 -->
	<%
		if(info.getId().equals("admin")){
			out.print("<a href='MemberListService'>");
			out.print("회원정보보기");
			out.print("</a>");
		}
	%>
</body>
</html>