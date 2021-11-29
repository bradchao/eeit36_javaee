<%@ page import="tw.brad.utils.*" %>
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

<c:if test="${pageContext.request.method == 'GET' }">
	<c:if test="${!empty param.id }">
		<c:redirect url="brad64.jsp" />
	</c:if>
</c:if>

<c:if test="${!empty param.id }">
	<sql:update>
		UPDATE member SET realname = ? WHERE id = ?
		<sql:param>${param.realname }</sql:param>
		<sql:param>${param.id }</sql:param>
	</sql:update>
	<c:redirect url="brad64.jsp"></c:redirect>
</c:if>

<sql:query var="rs">
	SELECT id, account, realname FROM member WHERE id = ?
	<sql:param>${param.editid }</sql:param>
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<h1>修改資料</h1>
<hr />
<form method="post">
	<input type="hidden" name="id" value="${rs.rows[0].id }">
	Account: ${rs.rows[0].account }<br />
	Realname: <input type="text" name="realname" value="${rs.rows[0].realname }" /><br />
	<input type="submit" value="更新" />
</form>

</body>
</html>