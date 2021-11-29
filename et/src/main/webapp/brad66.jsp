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

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<h1>修改資料</h1>
<hr />
<form>
	Account: <input type="text" name="account" /><br />
	Realname: <input type="text" name="realname" /><br />
	<input type="submit" value="更新" />
</form>

</body>
</html>