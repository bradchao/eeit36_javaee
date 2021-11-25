<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String method = request.getMethod();	// request 已經存在的隱含物件
	
	ServletRequest sr = pageContext.getRequest(); // ServletRequest
	if (sr instanceof HttpServletRequest) out.println("OK");
	if (request == sr)out.println("OK");
	
	// 範圍性 page < request < session < application
	
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

</body>
</html>