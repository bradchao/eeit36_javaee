package tw.brad.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.log.Log;

import tw.brad.utils.BCrypt;

@WebServlet("/Brad23")
public class Brad23 extends HttpServlet {
	private Connection connection;
	
	public Brad23() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Properties properties = new Properties();
			properties.put("user", "root");
			properties.put("password", "root");
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/eeit36", properties);
					
		}catch (Exception e) {
			System.out.println(e.toString());
		}		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "get out here");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		
		response.setContentType("text/html; charset=UTF-8");
		System.out.println(account + ":" + passwd);
		try {
			if (login(account, passwd)) {
				response.sendRedirect("main.html");
			}else {
				response.sendRedirect("brad23.html");
			}
		}catch (Exception e) {
			System.out.println(e.toString());
		}
		
	}
	
	private boolean login(String account, String passwd) throws Exception {
		boolean isRight = false;
		
		String sql = "SELECT * FROM member WHERE account = ?";
		PreparedStatement pstmt = connection.prepareStatement(sql);
		pstmt.setString(1, account);
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()) {
			String hashPasswdString = rs.getString("passwd");
			if (BCrypt.checkpw(passwd, hashPasswdString)) {
				isRight = true;
			}
		}
		
		return isRight;
	}
	
}
