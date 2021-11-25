<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<%
	String[] names = {"Brad","Keny","Eric","Andy","Tony"};
	pageContext.setAttribute("names", names);
%>

<table border="1" width="100%">
	<tr>
		<th>Name</th>
	</tr>
	
	<c:forEach items="${names }" var="name">
		<tr>
			<td>${name } </td>
		</tr>		
	</c:forEach>
	
</table>


</body>
</html>