<%@page import="java.net.http.HttpRequest"%>
<%@page import="java.util.ArrayList"%>
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
	
	<h2>회원목록보기</h2>
	<table border= "1px">
		<thead>
			<tr>
				<th>No.</th>
				<th>ID</th>
				<th>PW</th>
				<th>NICK</th>
				<th>PHONE</th>
			</tr>
		</thead>
		<tbody>
			<%
			// session에 있는 list 정보를 여기에 출력하시시오.
			//ArrayList<MemberDTO> list = (ArrayList<MemberDTO>) session.getAttribute("list");
			ArrayList<MemberDTO> list = (ArrayList<MemberDTO>) request.getAttribute("list");
						
			
			
			for(int i = 0 ; i< list.size(); i++){
				out.print("<tr>");
				out.print("<td>" + (i+1) + "</td>"); //자:번호는 db에 없다! 반복문에 있는 i 쓰기!
				out.print("<td>"+list.get(i).getId() + "</td>");
				out.print("<td>"+list.get(i).getPw() + "</td>");
				out.print("<td>"+list.get(i).getNick() + "</td>");
				out.print("<td>"+list.get(i).getPhone() + "</td>");
				out.print("<tr>");
			}
			
			// 자영풀이
			/*
			ArrayList<MemberDTO> list = (ArrayList<MemberDTO>) session.getAttribute("list");
			
			
			for(int i = 0; i<list.size();i++){
			out.print("<tr>");	
				
				out.print("<td>");
					out.print(i+1);
				out.print("</td>");
				
				out.print("<td>");
					out.print(list.get(i).getId());
				out.print("</td>");
				
				out.print("<td>");
					out.print(list.get(i).getPw());
				out.print("</td>");
				
				out.print("<td>");
					out.print(list.get(i).getNick());
				out.print("</td>");
				
				out.print("<td>");
					out.print(list.get(i).getPhone());
				out.print("</td>");
				
				out.print("<br>");
				
			out.print("</tr>");	
			}
			*/
			
			
			
			
			
			
			
			%>
		</tbody>
		
	</table>
</body>
</html>