
public class GuGuDanExample {
	public static void main(String[] args) {
		int count =0;
		for (int i=1; i<=100; i++)
			for (int j=1; j<=100; j++)
				for (int k=1; k<=100; k++)
					if(i*i+j*j==k*k) {
						System.out.printf("[%d, %d, %d]\n", i, j, k);
					}
		
					count++;
				
	System.out.println(count);
			
		
	}
	public static void main4(String[] args) {
		for(int dan=1;dan<10;dan++) {
			System.out.println(dan+"단");
			for(int i=1;i<10;i++) {
				if (dan*i%2==0)
					System.out.printf("%d X %d = %2d\n",dan,i,dan*i);
	}
		}
	}
	public static void main3(String[] args) {
		int count=0;
		for(int dan=1;dan<10;dan++) {
			for(int i=1;i<10;i++) {
				count++;
			}
			
			
		}
		
	System.out.println(count);
	
	
	}	
	public static void main2(String[] args) {
		System.out.println("1단");
		for (int i=1;i<10;i++)
		System.out.printf("1 X%2d =%2d\n",i,i);
		
		System.out.println("2단");
		for (int i=1;i<10;i++)
			System.out.printf("2 X%2d =%2d\n",i,2*i);
		
		System.out.println("3단");
		for (int i=1;i<10;i++)
			System.out.printf("3 X%2d =%2d\n",i,3*i);
		
		
		
	}

}
