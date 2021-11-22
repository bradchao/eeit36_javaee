package tw.brad.app;

/*
 * Model
 */
public class Brad16 {
	private int x, y;
	
	public Brad16(String x , String y) {
		this.x = Integer.parseInt(x);
		this.y = Integer.parseInt(y);
	}
	
	public double operator() {
		return x + y;
	}

}
