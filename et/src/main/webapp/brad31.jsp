<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Hello, World<br />

<%
	int lottery = (int)(Math.random()*49+1);
	out.print(lottery);	// response.getWriter() => PrintWriter => out => 隱含物件
			
%>
<br />
1 => <% out.print(lottery); %><br />
2 => <%= lottery %>


</body>
</html>