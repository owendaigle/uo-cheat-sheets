import java.util.Scanner;

 
public class Main {
	
	final static int THREAD_COUNT = 16;


	public static void main(String[] args) {

		System.out.println("Running");
		
			int n = 0; 
			boolean console = false; //whether run from console args
			try {
				n = Integer.valueOf(args[0]);
				console = true;
			}
			catch (IndexOutOfBoundsException e) {
				try (Scanner s=new Scanner(System.in)) {
					while (true){
						System.out.println("Enter the number of Queens (Multithread) :");
						n = s.nextInt();
						if ( n == 2 || n ==3) {
							System.out.println("No Solution possible for "+ n +" Queens. Please enter another number");
						}
						else
							break;
					}
				}
			}

		    ThreadGroup threadGroup = new ThreadGroup("threadGroup");

	        
	        long timestamp1 = System.currentTimeMillis();
	        
	        System.out.println("Solution to "+ n +" queens using hill climbing search:");

			Thread[] threadArray = new Thread[THREAD_COUNT]; //array to store all of the threads

			for (int i = 0; i<THREAD_COUNT; i++) { //creates THREAD_COUNT number of threads and starts them all
				threadArray[i] = new Thread(threadGroup, new HillClimbingSearch(n));
				threadArray[i].start();
			}
	        
	        //keeps this main thread on hold until at least one thread terminates
	        while (threadGroup.activeCount() == THREAD_COUNT) {
				continue;
			}

			//interrupt all threads
			System.out.println("Found solution. Interrupting all remaining threads");
			threadGroup.interrupt();

	        //Printing the timestamp
	        long timestamp2 = System.currentTimeMillis();
			
			long timeDiff = timestamp2 - timestamp1;
			try {//wait for threads to finish up
				Thread.sleep(50);
			} catch (InterruptedException e) {
				e.printStackTrace();
			} 
			if (!console) System.out.println("Execution Time: "+timeDiff+" ms");
			if (console) System.out.println(timeDiff);
	        
	       
	    }
}