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

<sql:query var="rs">
	SELECT * FROM food
</sql:query>

<%
	//Result result = (Result)pageContext.getAttribute("rs");

	//int rowCount = result.getRowCount();
	//pageContext.setAttribute("rowCount", rowCount);

%>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

${rs.rowCount }<br />
${rs.columnNames[0] }<br />
${rs.columnNames[1] }<br />
${rs.columnNames[2] }<br />
${rs.columnNames[3] }<br />


</body>
</html>