public class Exercise4_10 {
	public static void main(String[] args) {
		String str = "12345";
		int sum =0;
		for(int i=0;i<str.length();i++) {
			char ch = str.charAt(i);
			sum= sum+ch-'0';
		}
		
		System.out.println("sum =" + sum );
	}
}
