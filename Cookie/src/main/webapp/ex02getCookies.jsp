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
		// Client가 가진 Cookie를 가져와서 확인하는 방법
		
		// 1. Client가 가진 쿠키 가져오기 - 쿠키배열형태로 반환
		Cookie[] cookies = request.getCookies();
	
		// 2. 쿠키의 이름과 값 확인하기
		for(int i=0;i<cookies.length;i++){
			out.print(cookies[i].getName() + " : ");
			out.print(cookies[i].getValue() + "<br>");
		}
	%>
</body>
</html>