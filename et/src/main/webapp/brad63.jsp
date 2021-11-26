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

<sql:query var="rs1">
	SELECT * FROM food
</sql:query>

<c:set var="rpp" value="7" />

<c:set var="pages" value="${rs1.rowCount % rpp == 0 ? (rs1.rowCount - (rs1.rowCount % rpp)) / rpp : (rs1.rowCount - (rs1.rowCount % rpp)) / rpp + 1 }" />
<c:set var="page" value="${param.page == null ? 1 : param.page }" />
<c:set var="start" value="${(page - 1) * rpp }" />
<c:set var="prev" value="${page == 1 ? 1 : page - 1 }" />
<c:set var="next" value="${page == pages ? page : page + 1 }" />

<sql:query var="rs">
	SELECT * FROM food LIMIT ${start }, ${rpp }
</sql:query>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>Brad Big Company</title>
</head>
<body>

rpp : ${rpp }<br />
total : ${rs1.rowCount }<br />
pages : ${pages }<br />
page : ${page }<br />
prev : ${prev }<br />
next : ${next }<br />


<hr />
<a href="?page=${prev }"><button type="button" class="btn btn-primary" >上一頁</button></a> 
| 
<a href="?page=${next }"><button type="button" class="btn btn-primary" >下一頁</button></a>
<hr />
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