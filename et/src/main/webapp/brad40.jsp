<%
	String name2 = request.getParameter("name");
	Object x = request.getAttribute("lottery");
	Integer xInteger = (Integer)x;
%>
name2 = <%= name2 %><br />
x = <%= xInteger %>