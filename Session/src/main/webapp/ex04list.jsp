<%@page import="java.util.ArrayList"%>
<%@page import="com.MemberDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>��ȭ��ȣ��</h2>
	<table border="1px">
		<thead>
			<tr>
				<th>����</th>
				<th>�̸�</th>
				<th>����</th>
				<th>��ȣ</th>
				<th>�ּ�</th>
			</tr>
		</thead>
		<tbody>
			<%-- session���� �޾ƿ� list ������ �Ʒ��� ����Ͻÿ�--%>
				<%
				ArrayList<MemberDTO> list = (ArrayList<MemberDTO>) session.getAttribute("list");
				
				for(int i = 0; i < list.size(); i++){
					out.print("<tr>");
					out.print("<td>" + (i+1)+"</td>");
					out.print("<td>" + list.get(i).getName() + "</td>");
					out.print("<td>" + list.get(i).getAge() + "</td>");
					out.print("<td>" + list.get(i).getPhone() + "</td>");
					out.print("<td>" + list.get(i).getAddr() + "</td>");
					out.print("</tr>");
				}
				
				%>
			
		</tbody>
		
		
	</table>
</body>
</html>