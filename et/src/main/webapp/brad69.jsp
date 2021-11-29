<%@page import="org.json.*"%>
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
<h1>Brad Big Company</h1>
<hr />
<c:import var="data" url="https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvAgriculturalProduce.aspx" />
<%
	String dataString =  (String)pageContext.getAttribute("data");
	JSONArray root = new JSONArray(dataString);
	for (int i=0; i<root.length(); i++){
		JSONObject row = root.getJSONObject(i);
		String name = row.getString("Name");
		String place = row.getString("SalePlace");
		out.println(name + ":" + place + "<br />");
	}
%>


<hr />

</body>
</html>