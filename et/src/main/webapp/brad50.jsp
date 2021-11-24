<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- EL => Expression Language => $ -->    
<jsp:useBean id="member" class="tw.brad.utils.Member"></jsp:useBean>
<jsp:setProperty name="member" property="id" value="${param.id }" />
<jsp:setProperty name="member" property="account" value="${param.account }" />
<jsp:setProperty name="member" property="realname" value="${param.realname }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

id : <jsp:getProperty name="member" property="id"/><br />
Account : <jsp:getProperty name="member" property="account"/><br />
Realname : <jsp:getProperty name="member" property="realname"/><br />

</body>
</html>