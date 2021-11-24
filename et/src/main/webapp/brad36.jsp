<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="brad37.jsp" %>
<%
	String result = "", xString = "", yString = "", op = "";
	
	if (request.getParameter("x") != null 
		&& request.getParameter("y") != null
		&& request.getParameter("op") != null
		){
		xString = request.getParameter("x");
		yString = request.getParameter("y");
		op = request.getParameter("op");
	}
	
	
	try{
		int x = Integer.parseInt(xString);
		int y = Integer.parseInt(yString);
		int intResult = 0;
		
		switch(op){	// byte, short, int, String
			case "1": intResult = x + y; break;
			case "2": intResult = x - y; break;
			case "3": intResult = x * y; break;
			case "4": intResult = x / y; break;
		}
		
		result = intResult + "";
	}catch (Exception e){
		
	}
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<form>
	<input name="x" value="<%= xString %>" />
	<select name="op">
		<option value="1" <%= (op.equals("1")?"selected":"") %>>+</option>
		<option value="2" <%= (op.equals("2")?"selected":"") %>>-</option>
		<option value="3" <%= (op.equals("3")?"selected":"") %>>x</option>
		<option value="4" <%= (op.equals("4")?"selected":"") %>>/</option>
	</select>
	<input name="y" value="<%= yString %>" />
	<input type="submit" value="=" />
	<span><%= result %></span>	
</form>


</body>
</html>