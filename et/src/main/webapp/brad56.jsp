<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] var1 = {"Brad","Eric","Tony","Andy"};
	pageContext.setAttribute("names", var1);

	String[] var2 = {"Kevin","Peter","Mary","John"};
	request.setAttribute("names", var2);

	String[] var3 = {"3aaaa","3bbb","3ccc","3ddd"};
	session.setAttribute("names", var3);

	String[] var4 = {"4aaaa","4bbb","4ccc","4ddd"};
	application.setAttribute("names", var4);
	
	
	LinkedList<String> list = new LinkedList<>();
	list.add("aaa");list.add("bbb");list.add("ccc");list.add("ddd");
	pageContext.setAttribute("list", list);	
	
	HashMap<String,String> map = new HashMap<>();
	map.put("x", "12.3"); map.put("y", "3.1412");
	pageContext.setAttribute("map", map);
	
	String name = "Brad";
	pageContext.setAttribute("name", name);
	
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
${pageScope.names[2] }<br />
${requestScope.names[2] }<br />
${sessionScope.names[2] }<br />
${applicationScope.names[2] }<br />
<hr />
${list[param.i] }<br />
${map["x"] }<br />
${map.x }<br />
${name }<br />
${Math.random() }<br />
${10 + 3 }<br />
${10 > 3 }<br />
=> ${param.x > param.y }<br />
${param.x + param.y }<br />
${param.x == "10" }<br />
${param.x == 10 }<br />





</body>
</html>