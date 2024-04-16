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
		String today = (String) application.getAttribute("today");
	
		if(today == null){ //저장안되면 null(아무도 방문x)
			application.setAttribute("today", "1"); //자:숫자는 null불가->숫자로
			
		} else{
			int ctoday = Integer.parseInt(today); //자:문자->숫자 전환
			ctoday++;
			application.setAttribute("today", ctoday+ ""); //자:ctoayd를 문자열로 전환
			
			
			
		}
	%>
	
	오늘 방문자수 : <%= application.getAttribute("today") %>	
</body>
</html>