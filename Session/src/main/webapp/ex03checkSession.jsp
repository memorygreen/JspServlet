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
		String name = (String) session.getAttribute("name"); //��:�ٿ�ĳ���� �ʿ�

		if(name == null){
			out.print("<script>alert('10�ʵ��� �ƹ��� �ൿ�� ���� �ʾ� ������������ �̵��մϴ�.');");
			out.print("location.href='https:www.naver.com';</script>");
		}else{
			out.print(name + "�� ȯ���մϴ�.");
		}
			
	%>
</body>
</html>