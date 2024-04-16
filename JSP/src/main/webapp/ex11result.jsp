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
		request.setCharacterEncoding("EUC-KR");
		
		String url = request.getParameter("url");
		response.sendRedirect(url);
		
		/*
		if(url.equals("네이버")){
			response.sendRedirect("https:www.naver.com");
		} else if(url.equals("다음")){
			response.sendRedirect("https:www.daum.net");
		} else if(url.equals("구글")){
			response.sendRedirect("https:www.google.com");
		} else if(url.equals("스마트인재개발원")){
			response.sendRedirect("https:www.smhrd.or.kr");
		}
		*/
	%>
	
	<%-- 
	<%
	request.setCharacterEncoding("EUC-KR");
	String url = request.getParameter("url");
	if (url.equals("네이버")){
		response.sendRedirect("https://www.naver.com/");
	}else if(url.equals("다음")) {
		response.sendRedirect("https://www.daum.net/");
	}else if(url.equals("구글")) {
		response.sendRedirect("https://www.google.co.kr/?hl=ko");
	}else{
		response.sendRedirect("https://smhrd.or.kr/course/swcamp/?utm_campaign=gpm_2301&gad_source=1&gclid=CjwKCAiA3JCvBhA8EiwA4kujZj2Xjw5H1T1MdxvpItWhAFteNHrCVoeXEX2eNjb1OyHSiU0WJ2GbzhoC_I4QAvD_BwE");
	}
	%>
	 --%>
</body>
</html>