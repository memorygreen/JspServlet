<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type = "text/css">

	/*
		CSS �ּ�
	*/
</style>


</head>
<body>
	<!-- JSP���� Java�ڵ带 �ۼ��ϰ� ���� ���� ��ũ��Ʈ���� ���� �ۼ��Ѵ�. -->
	<%  
		// Java �ڵ� �ۼ��� �� �ִ� ��
		String name = "�ں���";
		
	%>
	
	<!-- Java ������ ���̳� �Լ��� ���ϰ��� Web Page�� ������ ���� �ʹٸ�
		ǥ������ ����Ѵ�
	 -->
	
	<h1><%= name %></h1>

</body>
</html>