<%@page import="javax.servlet.jsp.jstl.sql.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/eeit36"
	user="root"
	password="root"
	/>
<c:if test="${!empty param.delid }" >
	<sql:update>
		DELETE FROM member WHERE id = ${param.delid }
	</sql:update>
</c:if>

<sql:query var="rs">
	SELECT * FROM member
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Brad Big Company</title>
</head>
<body>

<hr />
<a href="brad65.jsp">New</a>
<hr />
<table border="1" width="100%">
	<tr>
		<th>id</th>
		<th>account</th>
		<th>realname</th>
		<th>Edit</th>
		<th>Del</th>
	</tr>
	
	<script>
		function delConfirm(account){
			var isDel = confirm("Delete " + account + "?");
			return isDel;
		}
	</script>

	<c:forEach items="${rs.rows }" var="row" varStatus="status">
		<tr>
			<td>${row.id }</td>
			<td>${row.account }</td>
			<td>${row.realname }</td>
			<td><a href="brad66.jsp?editid=${row.id }">Edit</a></td>
			<td><a href="?delid=${row.id }" onclick="return delConfirm('${row.account }');">Delete</a></td>
		</tr>
	</c:forEach>	
		
</table>

</body>
</html>