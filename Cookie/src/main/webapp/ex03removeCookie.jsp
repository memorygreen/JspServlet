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
		// Client�� ���� ��Ű�� �����ϱ�
		
		// 1. �����ϰ� ���� Ű�� ������ �̸��� ���� ��Ű�� ����
		Cookie cookie = new Cookie("food", "");
		
		// 2. ���̸� 0�ʷ� ����������
		cookie.setMaxAge(0);
		
		// 3. �ش� ��Ű�� client�� �����ָ� ��
		response.addCookie(cookie);
		
		
	%>
</body>
</html>