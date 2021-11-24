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

id : ${member.id }<br />
Account : ${member.account }<br />
Realname : ${member.realname }<br />


<jsp:declaration>
	Integer a;
	String b;	
</jsp:declaration>
<jsp:scriptlet>
	a = 10;
	b = "Brad";
</jsp:scriptlet>
a = <jsp:expression>a</jsp:expression><br />
b = <jsp:expression>b</jsp:expression><br />
<jsp:expression>member</jsp:expression><br />
${member }


</body>
</html>