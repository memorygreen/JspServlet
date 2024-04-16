<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type = "text/css">
	div, h2, fieldset{
	margin : 2px auto;
	text-align:center;
	}
</style>
</head>
<body>
	쌤풀이
	<div>
		 <h2>랜덤당첨게임</h2>
		 	<fieldset>
		 		<legend>랜덤당첨결과</legend>
		 		<%
		 			request.setCharacterEncoding("EUC-KR");
		 			String title = request.getParameter("title");
		 			String[] items = request.getParameterValues("item");
		 			Random ran = new Random();
		 			int rnum = ran.nextInt(items.length);
		 		%>
		 		<%= title %>
		 		<br>
		 		<%= items[rnum] %>
			</fieldset>
	
	</div>
	
	<%--
	자영풀이
	<fieldset>
		<legend>랜덤당첨결과</legend>
		오늘 점심 메뉴는?
		<br>
		<%
			String[] item = request.getParameterValues("item");
			Random ran = new Random();
			String menu = item[ran.nextInt(item.length)];
		%>
		
		<%=menu  %>
		
	
	
	</fieldset>
	 --%>

</body>
</html>