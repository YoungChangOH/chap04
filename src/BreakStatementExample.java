
public class BreakStatementExample {

	public static void main(String[] args) {

		int choice = (int)(Math.random()*100+1);
		
		
		System.out.println(choice);
		
		int sum = 0;
		for(int i=0; i<=100; i++) {
			sum += i;
			if(i == choice)
				break;
		}
		System.out.println("sum=" +sum);
		
		
	}

}
