<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

	<table border="1" width="100%">
		<%
			for (int k=0; k<4; k++){
				
				%><tr><%
				
				for (int j=2; j<=5; j++){
					int newj = j + 4*k;
					
					if((j+k)%2==0){
						out.print("<td bgcolor='pink'>");
					}else{
						out.print("<td bgcolor='yellow'>");
					}
					
					for (int i=1; i<=9; i++){
						int r = newj * i;
						out.println(String.format("%d x %d = %d<br />", newj, i, r));
					}
					
					out.print("</td>");
				}
				
				%></tr><%
			}
			
		%>
	</table>

</body>
</html>