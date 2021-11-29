<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	String account = request.getParameter("account");
	String passwd = request.getParameter("passwd");
	
	if (account.equals("brad") && passwd.equals("123456")){
		// OK
		response.sendRedirect("brad74.jsp");
	}else{
		// XX
		response.sendRedirect("brad72.jsp");
	}

%>