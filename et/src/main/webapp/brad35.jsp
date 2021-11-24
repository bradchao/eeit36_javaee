<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user = request.getParameter("user");	// 	隱含物件 request
	String method = request.getMethod();

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

Welcome, <%= user %><br />
<%= method %>

</body>
</html>