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
		int sum = 0; // 1���� 100������ ���� ������ ����
		for(int i=1; i<=100 ; i++){
			sum += i;//��: sum = sum + i;
		}
		
	%>
	
	1���� 100������ ���� : <%= sum %>
	
</body>
</html>