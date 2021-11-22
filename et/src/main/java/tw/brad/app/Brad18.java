package tw.brad.app;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Brad18")
@MultipartConfig(
		location = "/Users/brad/git/repository8/et/src/main/webapp/upload"
		)
public class Brad18 extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		String account = req.getParameter("account");
		System.out.println(account);
		
		Collection<Part> parts = req.getParts();
		int i=0;
		for (Part part : parts) {
			String type = part.getContentType();
			String name = part.getName();
			String sname = part.getSubmittedFileName();
		
			System.out.println(type + ":" + name + ":" + sname);
			if (name.equals("upload")) {
				if (sname.length() == 0) continue;
		
				i++;
				part.write(createNewFilename(i));
			}
		}
		
	}
	
	private String createNewFilename(int i) {
		SimpleDateFormat simpleDateFormat = 
				new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss_SSS");
		String filename = "Brad" + simpleDateFormat.format(new Date()) + i + ".png";
		return filename;
	}
	

}
