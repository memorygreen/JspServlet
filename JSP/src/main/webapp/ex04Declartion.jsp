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
		JSP �ּ�
		����(Declartion)
		- �ʵ� �Ǵ� �޼ҵ带 ���� �� ���
	 --%>
	 <%! 
	 	public int num1 = 10; // ��������(�ʵ�) 
	 	
	 	// �޼ҵ� ����
	 	public String hello(String name){
	 		return name + "�� ȯ���մϴ�.";
	 	}
	 
	 %>
	 
	 <%= hello("�ں���") %>
	 
	 <% int num2 = 10; //Service �޼ҵ� �� �������� %>
	 
</body>
</html>