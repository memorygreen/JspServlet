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
	쌤풀이
	<div>
		 <fieldset>
	 		<legend>랜덤당첨작성</legend>
	 		<form action="ex09randomWinner.jsp" method="post">
	 		
	 			주제 : <input type="text" name="title">
	 			
				<br>
				<%
					// ex09createInput.html에서 입력한 숫자만큼 input 만들기
					int num = Integer.parseInt(request.getParameter("num"));
					
					for(int i = 1; i <= num; i++){
						out.print("아이템"+ i +" :");
						out.print("<input type='text' name ='item'>");
						out.print("<br>");
						
					}
				%>	 			
		 		<br>
				<input type="submit" value="시작">
	 		</form>
		 		
			</fieldset>
	
	</div>
		
		
		
	<%--	
	자영풀이	
	<fieldset>
	<legend align= "center">랜덤당첨 작성</legend>
		<form action = "ex09randomWinner.jsp">
			주제 : <input type="text" name="theme">
			<br>
			
			<%
			//Random ran = new Random();
			//int random = Integer.parseInt(request.getParameter("random"));
			//String[] arr = new String[random];
			//int num_ran = ran.nextInt(random);
			
			//for(int i = 1; i<= random ; i++){
			//	out.print("아이템"+i+" : ");
			//	out.print("<input type='text' name='item1'>");
			//	out.print("<br>");
			//}
			
			%>
			<input type = "submit" value="시작1">
		
		</form>
	</fieldset>
	 --%>
	
	

</body>
</html>