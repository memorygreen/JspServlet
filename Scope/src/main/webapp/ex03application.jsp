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
	
		if(today == null){ //����ȵǸ� null(�ƹ��� �湮x)
			application.setAttribute("today", "1"); //��:���ڴ� null�Ұ�->���ڷ�
			
		} else{
			int ctoday = Integer.parseInt(today); //��:����->���� ��ȯ
			ctoday++;
			application.setAttribute("today", ctoday+ ""); //��:ctoayd�� ���ڿ��� ��ȯ
			
			
			
		}
	%>
	
	���� �湮�ڼ� : <%= application.getAttribute("today") %>	
</body>
</html>