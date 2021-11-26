<%@page import="javax.servlet.jsp.jstl.sql.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/eeit36"
	user="root"
	password="root"
	/>

<sql:query var="rs1">
	SELECT * FROM food
</sql:query>

<c:set var="rpp" value="7" />

<c:set var="page" value="${param.page == null ? 1 : param.page }" />
<c:set var="start" value="${(page - 1) * rpp }" />
<c:set var="prev" value="${page == 1 ? 1 : page - 1 }" />
<c:set var="next" value="${page + 1 }" />

<sql:query var="rs">
	SELECT * FROM food LIMIT ${start }, ${rpp }
</sql:query>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<table border="1" width="100%">
	<tr>
		<th>no.</th>
		<th>Name</th>
		<th>Address</th>
		<th>Tel</th>
		<th>Photo</th>
	</tr>

	<c:forEach items="${rs.rows }" var="row" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td>${row.name }</td>
			<td>${row.address }</td>
			<td>${row.tel }</td>
			<td><img src="${row.picurl }" width="128px"/></td>
		</tr>
	</c:forEach>	
		
</table>

</body>
</html>