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

<c:set var="x" value="123" />
<c:set var="x" value="456" scope="request" />
page scope x = ${x }<br />
request scope x = ${requestScope.x }<br />



</body>
</html>