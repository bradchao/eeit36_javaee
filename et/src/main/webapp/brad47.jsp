<%@page import="tw.brad.utils.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="tw.brad.utils.Member"></jsp:useBean>
<jsp:setProperty name="member" property="id" value="1" />
<jsp:setProperty name="member" property="account" value="brad" />
<jsp:setProperty name="member" property="realname" value="Brad Chao" />

<%
	Member member2 = new Member();
	member2.setId(2);
	member2.setAccount("mary");
	member2.setRealname("Mary Chen");
%>


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

<hr />

id : <% out.println(member2.getId()); %><br />
Account : <% out.println(member2.getAccount()); %><br />
Realname : <% out.println(member2.getRealname()); %><br />

<hr />

id : <% out.println(member.getId()); %><br />
Account : <% out.println(member.getAccount()); %><br />
Realname : <% out.println(member.getRealname()); %><br />


</body>
</html>