<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	String account = request.getParameter("account");
	String passwd = request.getParameter("passwd");
	
	if (account == null || passwd == null){
		response.sendRedirect("brad72.jsp");
		return;
	}
	
	if (account.equals("brad") && passwd.equals("123456")){
		// OK
		session.setMaxInactiveInterval(10);
		session.setAttribute("account", account);
		response.sendRedirect("brad74.jsp");
	}else{
		// XX
		response.sendRedirect("brad72.jsp");
	}

%>