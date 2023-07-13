
public class TriangleExapmle {
	public static void main(String[] args) {
		for(int i=0;i<10;i++) {
			for(int j=0;j<i+1;j++) {
			System.out.print("*");
			}
			for(int a=0;a<10-1-i;a++) {
				System.out.print("@");
			}
				
			System.out.println();
			
	}	
	/*	System.out.println();
		for(int z=0;z<5;z++) {
			for(int x=0;x+z<5;x++) {
			System.out.print("*");

			}
			System.out.println();
		}
		System.out.println();
		for(int z=0;z<5;z++) {
			for(int x=0;x+1<5;x++) {
			System.out.print("*");
			for(int c=0;c<5-x;c++) {
				System.out.print("@");
			}

			}*/
			System.out.println();
			for(int q=0;q<5;q++) {
				for(int w=0;w<5-q;w++) {
				System.out.print("*");
				}
				System.out.println();	
			}
	}

	
	public static void main2(String[] args) {
		for( int i=0;i<5;i++) {
			for (int j=0;j<5;j++)
				System.out.print("*");
				System.out.println();
		}
		
		System.out.println();
		
		for(int a=0;a<5;a++) {
			for(int b=0;b<a+1;b++) {
				System.out.print("*");
			}	
			for(int k=0; k<5-a;k++) {
			
				System.out.print("@");	
			}
		System.out.println();
		}
	
	System.out.println();
	
	for(int a=0;a<5;a++) {
		for(int b=0;b<a+1;b++) {
			System.out.print("@");
		}	
		for(int k=0; k<5-a;k++) {
		
			System.out.print("*");		
		}
	System.out.println();
	}
}
	
}