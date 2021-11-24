<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="brad37.jsp" %>
<%
	String xString = request.getParameter("x");
	String yString = request.getParameter("y");
	
	int x = Integer.parseInt(xString);
	int y = Integer.parseInt(yString);
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<form>
	<input name="x" />
	+
	<input name="y" />
	<input type="submit" value="=" />	
</form>


</body>
</html>