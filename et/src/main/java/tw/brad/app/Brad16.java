package tw.brad.app;

/*
 * Model
 */
public class Brad16 {
	private int x, y, op;
	
	public Brad16(String x , String y, String op) {
		try {
			this.x = Integer.parseInt(x);
			this.y = Integer.parseInt(y);
			this.op = Integer.parseInt(op);
		}catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public double operator() {
		double r = 0;
		switch(op) {
			case 1: r = x + y; break;
			case 2: r = x - y; break;
			case 3: r = x * y; break;
			case 4: r = x*1.0 / y; break;
		}
		
		return r;
	}

}
