
public class VT100RoofingExample {

	public static void main(String[] args) {
		System.out.println("\033[2J");
		int line = (int)(Math.random()*20+1);
		int colum = (int)(Math.random()*40+1);
		int fg = (int)(Math.random()*8+30);
		int bg = (int)(Math.random()*8+40);
		char ch = (char)(Math.random()*26+'A');

		System.out.printf("\033[%d;%dH",line,colum);
		System.out.printf("\033[%dm",fg);
		System.out.printf("\033[%dm",bg);
		System.out.printf("%c",ch);
		System.out.println("\33[0m");
	}

}
