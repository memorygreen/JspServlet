<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	��Ǯ��1
	<table border="1px solid black">
		<tr>
			<%	for(int i = 1; i<=10 ; i++){ %>
					<td><%= i %></td>
			<% 	}%>
		</tr>
	</table>
	
	��Ǯ��2
	<%
		String tag = "";
		for(int i=1 ; i<=10;i++){
			tag += "<td>" + i + "</td>";
		}
	%>
	<table border="1px solid black">
		<tr>
			<%= tag %>
		</tr>
	</table>

	�ڿ�Ǯ��
	<%
	int[] arr = new int[10];
	for(int i=0;i<10;i++){
		arr[i] = i+1;
	}
	%>
		<a>���1(for)</a>
		<table border="1px solid black">
			<tr>
			
			<%
			for(int i=0;i<10;i++){
			%>
				<td>
				<%=arr[i] %>
				</td>
			<%
			}
			%>
			</tr>
		</table>
		
		
		<br>
		<a>���2(for each ��Ÿ��)</a>
		<table border="1px solid black">
			<tr>
				<% for(int num : arr){%>
					<td><%= num %></td>
				<%}	
				%>
			</tr>
		</table>
	 
	
</body>
</html>