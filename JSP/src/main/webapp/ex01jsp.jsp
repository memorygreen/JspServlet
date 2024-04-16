<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type = "text/css">

	/*
		CSS 주석
	*/
</style>


</head>
<body>
	<!-- JSP에서 Java코드를 작성하고 싶을 때는 스크립트릿을 통해 작성한다. -->
	<%  
		// Java 코드 작성할 수 있는 곳
		String name = "박병관";
		
	%>
	
	<!-- Java 변수의 값이나 함수의 리턴값을 Web Page로 꺼내서 쓰고 싶다면
		표현식을 사용한다
	 -->
	
	<h1><%= name %></h1>

</body>
</html>