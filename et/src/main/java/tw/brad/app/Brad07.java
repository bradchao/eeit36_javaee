package tw.brad.app;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad07")
public class Brad07 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse response) 
			throws ServletException, IOException {

		String xString = req.getParameter("x");
		String yString = req.getParameter("y");
		String rString = "";
		
		try {
			int x = Integer.parseInt(xString);
			int y = Integer.parseInt(yString);
			int result = x + y;
			rString = result + "";
			//System.out.println(result);
		}catch (Exception e) {
			//System.out.println(e.toString());
			
		}
		
		//-------------------------------------------
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(String.format("%s + %s = %s", xString, yString, rString));
		
		response.flushBuffer();

		
	}

}
