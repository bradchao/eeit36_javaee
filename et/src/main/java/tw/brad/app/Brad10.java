package tw.brad.app;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad10")
public class Brad10 extends HttpServlet {
	private int i;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		String name = req.getParameter("account");
		String passwd = req.getParameter("passwd");
		String gender = req.getParameter("gender");
		
		//----------------------------------
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		out.print(name + "<br />");
		out.print(passwd + "<br />");
		out.print(gender + "<br />");
		
		resp.flushBuffer();
		
	}

}
