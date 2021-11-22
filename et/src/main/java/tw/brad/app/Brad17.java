package tw.brad.app;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Viewer
 */
@WebServlet("/Brad17")
public class Brad17 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		resp.setContentType("text/html; charset=UTF-8");
		
		System.out.println(loadView("view1"));
	}
	
	// /Users/brad/git/repository8/et/src/main/webapp/views
	
	private String loadView(String viewFileName) {
	
		String loadFile = 
				String.format(
						"/Users/brad/git/repository8/et/src/main/webapp/views/%s.html", viewFileName); 
		File source = new File(loadFile);
		
		StringBuffer sb = new StringBuffer();
		try (BufferedReader reader = new BufferedReader(new FileReader(source))){
			
			String line;
			while ( (line = reader.readLine()) != null) {
				sb.append(line);
			}
			
		}catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return sb.toString();
	}
	
	

}
