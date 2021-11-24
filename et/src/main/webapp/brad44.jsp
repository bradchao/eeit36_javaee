<%@page import="tw.brad.utils.Student"%>
<%
	String key1 = request.getParameter("key1");
	String key2 = request.getParameter("key2");
	
	Student s1 = new Student("Brad");
	
%>
I am brad44<br/>
key1 = <%= key1 %><br />
key2 = <%= key2 %><br />
s1 = <%= s1 %>
