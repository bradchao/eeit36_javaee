<%@page import="java.util.SortedMap"%>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<sql:transaction>
	<sql:update>
		INSERT INTO member (account,passwd,realname) VALUES (?,?,?)
		<sql:param>test13</sql:param>
		<sql:param>123456</sql:param>
		<sql:param>TEST13</sql:param>
	</sql:update>
	
	<sql:query var="lastid">
		SELECT last_insert_id() as newid
	</sql:query>
	<sql:update>
		UPDATE member SET passwd = ? WHERE id = ?
		<sql:param>654321</sql:param>
		<sql:param>${lastid.rows[0].newid }</sql:param>	
	</sql:update>
</sql:transaction>


</body>
</html>