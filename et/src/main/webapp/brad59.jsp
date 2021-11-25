<%@ page import="tw.brad.utils.BradUtils" %>
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

<c:set var="score">${BradUtils.createScore() }</c:set>
Score = ${score }<br />
<c:if test='${score >= 90 }' var="result">A</c:if>
<c:if test='${score >= 80 }' var="result">B</c:if>
<c:if test='${score >= 70 }' var="result">C</c:if>
<c:if test='${score >= 60 }' var="result">D</c:if>
<c:if test='${score < 60 }' var="result">E</c:if>

<hr />

<c:choose>
	<c:when test="${score >= 90 }">A</c:when>
	<c:when test="${score >= 80 }">B</c:when>
	<c:when test="${score >= 70 }">C</c:when>
	<c:when test="${score >= 60 }">D</c:when>
	<c:otherwise>E</c:otherwise>
</c:choose>


</body>
</html>