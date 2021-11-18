package tw.brad.app;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad05")
public class Brad05 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		// 列舉物件
		Enumeration<String> names = req.getHeaderNames();
		while( names.hasMoreElements()) {
			String name = names.nextElement();
			System.out.println(name);
		}
		System.out.println("------------------------");
		
	}

}
