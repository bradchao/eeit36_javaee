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
<hr />
<%= "Hello, World<br />" %><br />
<c:out value="Hello, World<br />" /><br />
${"Hello, World<br />" }<br />
<c:out value="${x }" /><br />
<c:out value="${y }" default="nobody" /><br />

<jsp:useBean id="member" class="tw.brad.utils.Member"></jsp:useBean>
<c:set target="${member }" property="account">brad</c:set>
<c:set target="${member }" property="id">9487</c:set>
<c:set target="${member }" property="realname">Brad</c:set>

${member.id }:${member.account }:${member.realname }<br />
${member }









</body>
</html>