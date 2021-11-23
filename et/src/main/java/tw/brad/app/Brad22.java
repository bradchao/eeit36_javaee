package tw.brad.app;

import java.io.IOException;
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
	
	public Brad22() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("OK");
		}catch (Exception e) {
			System.out.println(e.toString());
		}		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int i = addMember("brad", "123456", "趙令文");
			System.out.println(i);
		}catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	private int addMember(String account, String passwd, String realname) throws Exception {
		Properties properties = new Properties();
		properties.put("user", "root");
		properties.put("password", "root");
		try (Connection connection = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/eeit36", properties)){
			String sql = "INSERT INTO MEMBER (account,passwd,realname) VALUES (?,?,?)";
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, account);
			pstmt.setString(2, BCrypt.hashpw(passwd,BCrypt.gensalt()));
			pstmt.setString(3, realname);
			
			int count = pstmt.executeUpdate();
			return count;
		}
	}
	
	

}
