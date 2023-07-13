
public class WhileStatementExamople {
	public static void main(String[] args) {
		int dice1 = 0;
		int dice2 = 0;
		
			dice1 = (int)(Math.random()*6+1);
			dice2 = (int)(Math.random()*6+1);
			System.out.printf("[%d,%d]\n",dice1,dice2);
		while(dice1+dice2!=5) {
			dice1 = (int)(Math.random()*6+1);
			dice2 = (int)(Math.random()*6+1);
			System.out.printf("[%d,%d]\n",dice1,dice2);
			
		}
			
			System.out.println("End ..");
	}
	
	
	
	
	
	
	public static void main3(String[] args) {
		
	
		int dice1 = 0;
		int dice2 = 0;
		
		do {
			dice1 = (int)(Math.random()*6+1);
			dice2 = (int)(Math.random()*6+1);
			System.out.printf("[%d,%d]\n",dice1,dice2);
		}while(dice1+dice2!=5);
			
			System.out.println("End ..");
	}
	
	
	public static void main2(String[] args) {
		int dice = 0;
		
		while(dice!=5) {
			dice = (int)(Math.random()*6+1);
			System.out.println("dice ="+dice);
	
		}
		System.out.println("End...");
	}
	
	

}
