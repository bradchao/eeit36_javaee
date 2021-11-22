package tw.brad.app;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Controller
 */
@WebServlet("/Brad15")
public class Brad15 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		// 1. 預備, 接收參數, 整理參數
		String x = req.getParameter("x");
		String y = req.getParameter("y");
		if (x == null) x = "0";
		if (y == null) y = "0";
		
		// 2. 演算法 => Model
		Brad16 model = new Brad16(x, y);
		double result = model.operator();
		System.out.println(result);
		
		// 3. 呈現 => View
		RequestDispatcher dispatcher = req.getRequestDispatcher(
				String.format("Brad17?x=%s&y=%s&r=%f", x, y, result));
		dispatcher.forward(req, resp);
		
	}

}
