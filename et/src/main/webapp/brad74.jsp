<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("account") == null){
		response.sendRedirect("brad72.jsp");
		return;
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Hello, Main Page
<hr />
Welcome, ${account }
<hr />
<a href="logout.jsp">Logout</a>
</body>
</html>