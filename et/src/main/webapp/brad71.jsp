<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="brad" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<brad:test1 />
<hr />

<brad:sayHello user="Brad" />
<hr />
<brad:calc x="10" y="3">
	10 + 3 = ${add }<br />
	10 - 3 = ${sub }<br />
	10 x 3 = ${multi }<br />
	10 / 3 = ${divide }<br />
</brad:calc>
${add }
<hr />
<brad:test2 />


</body>
</html>