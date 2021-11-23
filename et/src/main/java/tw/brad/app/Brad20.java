package tw.brad.app;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.awt.geom.AffineTransform;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.ColorUIResource;
import javax.swing.plaf.FontUIResource;
import javax.swing.text.AttributeSet.FontAttribute;

@WebServlet("/Brad20")
public class Brad20 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		response.setContentType("image/jpeg");
		
		String source = "/Users/brad/git/repository8/et/src/main/webapp/upload/coffee.jpeg"; 
		BufferedImage bimg = ImageIO.read(new File(source));
		
		Font font = new Font(null, Font.BOLD, 72);
		
		AffineTransform tran = new AffineTransform();
		tran.rotate(Math.toRadians(-30));
		Font font2 = font.deriveFont(tran);
		
		Graphics2D g2d = bimg.createGraphics();
		g2d.setColor(Color.YELLOW);
		g2d.setFont(font2);
		g2d.drawString("Hello, 資策會", 80, 600);
		
		OutputStream out = response.getOutputStream();
		ImageIO.write(bimg, "jpeg", out);
		out.flush();
		out.close();
		
		String target = "/Users/brad/git/repository8/et/src/main/webapp/upload/brad.jpeg"; 
		FileOutputStream fout = new FileOutputStream(target);
		ImageIO.write(bimg, "jpeg", fout);
		out.flush();
		out.close();
		
		
	}

}
