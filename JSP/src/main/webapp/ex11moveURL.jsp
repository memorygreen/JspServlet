<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="ex11result.jsp" method="post">
		<select name="url">
			<option value="https:www.naver.com">네이버</option>
			<option value="https:www.daum.net">다음</option>
			<option value="https:www.google.com">구글</option>
			<option value="https:www.smhrd.or.kr">스마트인재개발원</option>
		</select>
		<input type="submit" value="이동">
	</form>
</body>
</html>