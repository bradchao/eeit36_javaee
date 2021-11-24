<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

Account: ${param.account }<br />
Like: 
1 = ${paramValues.like[0] }<br>
2 = ${paramValues.like[1] }<br>
3 = ${paramValues.like[2] }<br>
4 = ${paramValues.like[3] }<br>
5 = ${paramValues.like[4] }<br>
6 = ${paramValues.like[5] }<br>
7 = ${paramValues.like[6] }<br>
8 = ${paramValues.like[7] }<br>
<hr />
Method : <% out.println(request.getMethod()); %><br />
Method : ${pageContext.request.method }<br />
ip : <% out.println(request.getRemoteAddr()); %><br />
ip : ${pageContext.request.remoteAddr }<br />
Locale : <% out.println(request.getLocale()); %><br />
Locale : ${pageContext.request.locale }<br />
Language : <% out.println(request.getLocale().getDisplayLanguage()); %><br />
Language : ${pageContext.request.locale.displayLanguage }<br />


</body>
</html>