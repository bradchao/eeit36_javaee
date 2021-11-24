<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

I am Brad45

<hr />
<jsp:forward page="brad46.jsp">
	<jsp:param value="v1" name="k1"/>
	<jsp:param value="v2" name="k2"/>
</jsp:forward>


</body>
</html>