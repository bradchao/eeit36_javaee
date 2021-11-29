<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
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

	LinkedList<HashMap<String,String>> giftData = new LinkedList<>();
	JSONArray root = new JSONArray(dataString);
	for (int i=0; i<root.length(); i++){
		JSONObject row = root.getJSONObject(i);
		String name = row.getString("Name");
		String org = row.getString("ProduceOrg");
		String place = row.getString("SalePlace");
		String tel = row.getString("ContactTel");
		
		
		HashMap<String,String> gift = new HashMap<>();
		gift.put("name", name);
		gift.put("org", org);
		gift.put("place", place);
		gift.put("tel", tel);
		
		giftData.add(gift);
		
	}
	
	pageContext.setAttribute("giftData", giftData);
%>

<table border="1" width="100%">
	<tr>
		<th>Name</th>
		<th>Org</th>
		<th>Place</th>
		<th>Tel</th>
	</tr>
	<c:forEach items="${giftData }" var="gift">
		<tr>
			<td>${gift.name }</td>
			<td>${gift.org }</td>
			<td>${gift.place }</td>
			<td>${gift.tel }</td>
		</tr>
	</c:forEach>
</table>


<hr />

</body>
</html>