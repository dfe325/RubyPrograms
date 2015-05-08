public class finbonacci {

//this program uses a recursive call to calculate a fibonacci sequence

//main method uses for loop to account for month numbers and passes data to method fibo()
    
    public static void main (String [] args)  {
        
        for (int i = 1; i < 13; i ++)  {
        
        int monthNumber = i; 
        
        System.out.println("At the end of month #" + monthNumber + " there are " + 
	fibo(monthNumber) + " rabbit pairs.");
        
    }     
        
        
    }
      
//fibo uses recursive call to generate correct fibonacci number and return it

    static int fibo (int monthNumber)  {

//declare variable fibNumber to store data
        
        int fibNumber = 0;

//if statement supplies base case for recursive call

            if (monthNumber == 1)  {
                
                fibNumber = 1;
                return fibNumber;

//recursive call on fibo supplies best fibonacci number
            
            } else if (monthNumber > 1) {
                
                fibNumber = (fibo(monthNumber-1) + fibo(monthNumber-2)); 
                
                return fibNumber;
                
            }
        return fibNumber;
        
        }  

}

 




