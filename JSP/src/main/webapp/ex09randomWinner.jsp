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
	��Ǯ��
	<div>
		 <h2>������÷����</h2>
		 	<fieldset>
		 		<legend>������÷���</legend>
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
	�ڿ�Ǯ��
	<fieldset>
		<legend>������÷���</legend>
		���� ���� �޴���?
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