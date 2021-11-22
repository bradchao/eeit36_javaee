package tw.brad.app;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad14")
public class Brad14 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String xString = req.getParameter("x");
		String yString = req.getParameter("y");
		int x = 0, y = 0;
		try {
			x = Integer.parseInt(xString);
			y = Integer.parseInt(yString);
		}catch (Exception e) {
		}
		
		
		//----------------------------------
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();

		out.println("Lottery : " + (int)(Math.random()*x + y));
		
		resp.flushBuffer();
	}

}
