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
	 // ex08doubleTable.html 에서 전달한 floor, room 데이터에 따라
	 // tr, td 생성
	 int floor = Integer.parseInt(request.getParameter("floor"));
	 int room = Integer.parseInt(request.getParameter("room"));
	%>
	
	<h2><%=floor %>층</h2>
	<h2><%=room %>방</h2>
	
	<table border="1ps">
		<% 
			for(int i = 0 ;i< floor;i++){
				// 층 만들기
				out.print("<tr>");
				for(int j = 0; j <room; j++){
					out.print("<td>" + j + "</td>");
				}
				out.print("</tr>");
			}
		%>
	
	
	</table>
	
	
	
	
	
	
	
	
	
	
	
	<%
	String floor1 = request.getParameter("floor");
	String room1 = request.getParameter("room");
	
	int num_floor = Integer.parseInt(floor1);
	int num_room = Integer.parseInt(room1);
	%>
	
	<h2><%=num_floor %>층</h2>
	<h2><%=num_room %>방</h2>
	
	<table border="1px solid black">
		<% for(int i = 0; i < num_room ; i++){
			out.print("<tr>");
			for(int j = 0; j<num_floor;j++){
				out.print("<td>");
				out.print(j);
				out.print("</td>");
			}
			out.print("</tr>");
		}
		%>
	
	</table>
	
	
</body>
</html>