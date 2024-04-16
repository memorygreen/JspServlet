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
		int sum = 0; // 1부터 100까지의 합을 저장할 변수
		for(int i=1; i<=100 ; i++){
			sum += i;//자: sum = sum + i;
		}
		
	%>
	
	1부터 100까지의 합은 : <%= sum %>
	
</body>
</html>