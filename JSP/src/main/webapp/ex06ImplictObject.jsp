<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%-- 
		���尴ü : JSP �ȿ��� ��ü�� �������� �ʰ� ����� �� �ִ� ��ü
	--%>
	
	<table border = "1px">
		<tr>
			<% // for���� Ȱ���Ͽ� table �±� �����
				for (int i =1 ; i<=5;i++){ 
					// ���尴ü out Ȱ���ϱ�
					out.print("<td>" + i + "</td>"); //��:�ڹ� �ڵ� 
			 } %>
		</tr>
	</table>
	
	
</body>
</html>