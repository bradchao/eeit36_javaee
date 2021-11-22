package tw.brad.app;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad12")
public class Brad12 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse response) 
			throws ServletException, IOException {

		String xString = req.getParameter("x");
		String yString = req.getParameter("y");
		String op = req.getParameter("op");
		String rString = "";
		
		try {
			int x = Integer.parseInt(xString);
			int y = Integer.parseInt(yString);
			int result = 0, mod = 0;
			
			switch (op) {
				case "1":
					result = x + y;
					rString = result + "";
					break;
				case "2":
					result = x - y;
					rString = result + "";
					break;
				case "3":
					result = x * y;
					rString = result + "";
					break;
				case "4":
					result = x / y;
					mod = x % y;
					rString = result + " ...... " + mod;
					break;
			}
			
			//rString = result + "";
			//System.out.println(result);
		}catch (Exception e) {
			//System.out.println(e.toString());
			
		}
		
		//-------------------------------------------
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//out.print(String.format("%s + %s = %s", xString, yString, rString));
		
		out.append("<meta charset='UTF-8'>")
			.append("<form action='Brad12'>")
			.append(String.format("<input name='x' value='%s' />\n", xString))
			
			.append("<select name='op'>\n")
			.append("<option value='1'>+</option>")
			.append("<option value='2'>-</option>")
			.append("<option value='3'>x</option>")
			.append("<option value='4'>/</option>")
			.append("</select>\n")
			
			.append(String.format("<input name='y' value='%s' />\n", yString))
			.append("<input type='submit' value='=' />\n")
			.append(rString)
			.append("</form>");
		
		
		response.flushBuffer();

		
	}

}
