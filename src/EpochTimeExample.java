
public class EpochTimeExample {

	public static void main(String[] args) {
		long epoch = System.currentTimeMillis()/1000 + 9*60*60;
		
		int year = 1970;
		for(;;) {
			boolean isLeap = (year%4==0 && year%100!=0) || (year%400==0);
			int daysOFYear = isLeap ? 366 : 365;
			if(epoch - daysOFYear*24*60*60>+0) {
				epoch = epoch - daysOFYear*24*60*60;
				year++;
				continue;
			}
			break;
/*		int month = 0;
		for(;;) {
			boolean leap = daysOFYear == 29;
			int Leap = leap ? 29 : 28;
			if(epoch - Leap*24*60*60>+0) {
				epoch = epoch - Leap*24*60*60;
			}
		}
		}
		}
		//System.out.println(year);
		//System.out.println(epoch);
*/
		}
	}
}

