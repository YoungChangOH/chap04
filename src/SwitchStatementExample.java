
public class SwitchStatementExample {
	public static void main(String[] args) {
		char ch =(char)(Math.random()*26+'A');
		
		switch (ch) {
		case 'A':
		case 'I':
		case 'E':
		case 'O':
		case 'U':
			
			System.out.println("모음");
			break;

		default:
			System.out.println("자음");
			break;
		}
		
		System.out.println(ch);
	}
	
	
	
	
	public static void main2(String[] args) {
		int num = (int)(Math.random()*5);	
		char ch = '모';
		
		if(num==0)
			ch= '도';
		else if(num==1)
			ch='개';
		else if(num==2)
			ch='걸';
		else if(num==3)
			ch='윷';
		else ch='모';
		
		switch (num) {
		case 0:
			ch = '도';
			break;
		case 1:
			ch = '개';
			break;
		case 2:
			ch = '걸';
			break;
		case 3:
			ch = '윷';
			break;
			
		case 4:
			ch = '모';
			break;
		}
		
		System.out.printf("[%d, %c]\n",num,ch);

	}

}
