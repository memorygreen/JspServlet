<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type = "text/css">
	div, h2, fieldset{
	margin : 2px auto;
	text-align:center;
	}
</style>
</head>
<body>
	��Ǯ��
	<div>
		 <fieldset>
	 		<legend>������÷�ۼ�</legend>
	 		<form action="ex09randomWinner.jsp" method="post">
	 		
	 			���� : <input type="text" name="title">
	 			
				<br>
				<%
					// ex09createInput.html���� �Է��� ���ڸ�ŭ input �����
					int num = Integer.parseInt(request.getParameter("num"));
					
					for(int i = 1; i <= num; i++){
						out.print("������"+ i +" :");
						out.print("<input type='text' name ='item'>");
						out.print("<br>");
						
					}
				%>	 			
		 		<br>
				<input type="submit" value="����">
	 		</form>
		 		
			</fieldset>
	
	</div>
		
		
		
	<%--	
	�ڿ�Ǯ��	
	<fieldset>
	<legend align= "center">������÷ �ۼ�</legend>
		<form action = "ex09randomWinner.jsp">
			���� : <input type="text" name="theme">
			<br>
			
			<%
			//Random ran = new Random();
			//int random = Integer.parseInt(request.getParameter("random"));
			//String[] arr = new String[random];
			//int num_ran = ran.nextInt(random);
			
			//for(int i = 1; i<= random ; i++){
			//	out.print("������"+i+" : ");
			//	out.print("<input type='text' name='item1'>");
			//	out.print("<br>");
			//}
			
			%>
			<input type = "submit" value="����1">
		
		</form>
	</fieldset>
	 --%>
	
	

</body>
</html>