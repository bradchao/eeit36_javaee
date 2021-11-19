package tw.brad.app;

import java.io.IOException;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad06")
public class Brad06 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
	
		Map<String, String[]> maps = req.getParameterMap();
		Set<String> keys = maps.keySet();
		for (String key : keys) {
			String[] value = maps.get(key);
			
			StringBuffer sb = new StringBuffer();
			for (String v: value) {
				sb.append(v + ";");
			}
			
			System.out.println(key + ":" + sb.toString());
		}
		
		
	}

}
