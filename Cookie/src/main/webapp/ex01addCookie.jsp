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
		Cookie
		- Client�� ������ ���������� �����ϱ� ����
		
		Ư¡
		������ġ : Client�� Web Browser (Client PC)
		�������� : text (String)
		���� : Session�� ���� ��������� ����
		�뷮���� : ������ �ϳ��� 20��, ��Ű�ϳ� �ִ� ũ�� 4kb, �� 300�� ->1.2MB
		
		������ : Client�� ������ �����ϱ� �Ͽ��� �ϳ� ��������� ���ȿ� 
				�߿����� ���� �κ��� ��Ű�� ���� (�� : ��ٱ��� ���, ���� ������ �ð� ��)
	 --%>
	 
	 <%
	 	// 1. ��Ű���� - new Cookie("name","value");
	 	Cookie cookie1 = new Cookie("food", "apple");
	 	Cookie cookie2 = new Cookie("member", "pbk");
	 	
	 	// 2. ��Ű�� ���̼���
	 	cookie1.setMaxAge(6000);//��:1==1��
	 	
	 	// 3. ��Ű�� client���� ������
	 	response.addCookie(cookie1);
	 	response.addCookie(cookie2);
	 	
	 
	 %>
</body>
</html>