package tw.brad.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

public class BradUtils {

	public static int createScore() {
		return (int)(Math.random()*101);
	}
	
	public static int createLottery() {
		return (int)(Math.random()*49 + 1);
	}
	
	public static String encPasswd(String passwd) {
		String hsPasswd = BCrypt.hashpw(passwd, BCrypt.gensalt() );
		return hsPasswd;
	}
	
	public static boolean isBrad(String str, String key) {
		return str.contains(key);
	}
	
	public static String cal(String x , String y, String op) {
		
		if (x.length() == 0 && y.length() == 0 && op.length() == 0) {
			return "";
		}else {
			try {
				int intX = Integer.parseInt(x);
				int intY = Integer.parseInt(y);
				switch (op) {
					case "1": return "" + (intX + intY); 
					case "2": return "" + (intX - intY); 
					case "3": return "" + (intX * intY); 
					case "4": return "" + (intX / intY) + " ...... " + (intX % intY);
					default: return "";
				}
			}catch (Exception e) {
				return "";
			}
		}
		
	}
	
	public static String loadView(String viewFileName) {
		
		String loadFile = 
				String.format(
						"/Users/brad/git/repository8/et/src/main/webapp/views/%s.html", viewFileName); 
		File source = new File(loadFile);
		
		StringBuffer sb = new StringBuffer();
		try (FileInputStream fin = new FileInputStream(source);
				InputStreamReader ir = new InputStreamReader(fin, "UTF-8");
				BufferedReader reader = new BufferedReader(ir)){
			
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
