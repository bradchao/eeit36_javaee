package tw.brad.app;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.utils.BradUtils;

/*
 * Viewer
 */
@WebServlet("/Brad17")
public class Brad17 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		String x = req.getParameter("x");
		String y = req.getParameter("y");
		String r = req.getParameter("r");
		String op = req.getParameter("op");
		
		String op1 = op.equals("1")?"selected":"";
		String op2 = op.equals("2")?"selected":"";
		String op3 = op.equals("3")?"selected":"";
		String op4 = op.equals("4")?"selected":"";
		
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		String html =  BradUtils.loadView("view1");
		out.print(String.format(html, x, op1, op2, op3, op4, y, r ));
		resp.flushBuffer();
	}
	

}
