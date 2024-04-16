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
		String name = (String) session.getAttribute("name"); //자:다운캐스팅 필요

		if(name == null){
			out.print("<script>alert('10초동안 아무런 행동을 하지 않아 메인페이지로 이동합니다.');");
			out.print("location.href='https:www.naver.com';</script>");
		}else{
			out.print(name + "님 환영합니다.");
		}
			
	%>
</body>
</html>