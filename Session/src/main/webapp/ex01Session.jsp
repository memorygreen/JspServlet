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
		Session
		- Client의 정보를 지속적으로 유지하기 위한 방법
		
		특징. - Session 브라우저당 1개 발급이 된다
			 - 브라우저를 종료하는 순간 세션은 만료(삭제) 된다. or 30분이상 아무런 행동 안 했을 때
			 
		저장 위치 : Server PC
		저장형식 : Object
		보안 : Cookie에 비해 상대적으로 강력함
		용량제한 : Server PC의 저장소가 허용하는 한 
		
		총정리 : Client의 정보 중 중요한 정보를 유지할 때 Session을 활용한다.
				(예 : 로그인정보, 계좌정보 등)
	--%>
	
	<%
		// Session에 아이디와 비밀번호를 저장
		// .setAttribute("name", value);
		// String -> Object (UpCasting)
		session.setAttribute("id", "pbk");
		//session.setAttribute("name", 123);
		//session.setAttribute("name", true);
		
		// Session에 저장된 값 가져와서 확인하기
		// Object -> String (DownCasting)
		String id = (String)session.getAttribute("id");
		
		
		// Session 삭제하기
		session.removeAttribute("id");
		session.invalidate();
		
		
		%>
		
		<%= id %>
		
		
		
		
	
	
</body>
</html>