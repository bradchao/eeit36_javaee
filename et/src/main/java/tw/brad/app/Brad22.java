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

import tw.brad.utils.BCrypt;

@WebServlet("/Brad22")
public class Brad22 extends HttpServlet {
	private Connection connection;
	
	public Brad22() {
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
		
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		String realname = request.getParameter("realname");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		try {
			if (!isAccountDup(account)) {
				int rows = addMember(account, passwd, realname);
				if (rows > 0) {
					out.println("新增成功");
				}else {
					out.println("新增失敗");
				}
			}else {
				out.println("帳號重複");
			}
			
		}catch (Exception e) {
			out.println(e.toString());
		}
	}
	
	private boolean isAccountDup(String account) throws Exception {
		String sql = "SELECT count(*) FROM member WHERE account = ?";
		PreparedStatement pstmt = connection.prepareStatement(sql);
		pstmt.setString(1, account);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		int count = rs.getInt("count(*)");
		
		return count > 0;
	}
	
	private int addMember(String account, String passwd, String realname) throws Exception {
		String sql = "INSERT INTO MEMBER (account,passwd,realname) VALUES (?,?,?)";
		PreparedStatement pstmt = connection.prepareStatement(sql);
		pstmt.setString(1, account);
		pstmt.setString(2, BCrypt.hashpw(passwd,BCrypt.gensalt()));
		pstmt.setString(3, realname);
		
		int count = pstmt.executeUpdate();
		return count;
	}
	
	

}
