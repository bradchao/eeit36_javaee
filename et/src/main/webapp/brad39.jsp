<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("name");
	if (name == null) name = "World";

	int lottery = (int)(Math.random()*49+1);
	request.setAttribute("lottery", lottery);	// int => aoto-boxing => Integer's Object
	
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<h1>Brad Big Company</h1>
<hr />

<%= lottery %><br />

<%@ include file="brad40.jsp" %>

<hr />
Copyright...
</body>
</html>