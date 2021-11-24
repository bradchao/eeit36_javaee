<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int lottery1 = (int)(Math.random()*49+1);
	int lottery2 = (int)(Math.random()*49+1);
	int lottery3 = (int)(Math.random()*49+1);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Brad Big Company</title>
</head>
<body>

<h1>Brad Big Company</h1>
<hr />
<jsp:include page="brad44.jsp">
	<jsp:param value="<%= lottery1 %>" name="key1"/>
	<jsp:param value="<%= lottery2 %>" name="key2"/>
</jsp:include>
<hr />

</body>
</html>