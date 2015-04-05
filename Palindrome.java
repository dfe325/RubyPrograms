import java.util.*;

class Palindrome {
    
    public static void main(String[] args) {
        
        Scanner keyboard = new Scanner(System.in);
        
        System.out.println("Please input a string: ");
        
        String s = keyboard.nextLine();
        
        s = s.toLowerCase();        

//Print out result of isPalindrome
        
        System.out.println(isPalindrome(s));
        
    }
    
    public static boolean isPalindrome(String s) {

//inside isPalindrome, establish variables for beginning and ending of String s
        char x = s.charAt(0);
        char y = s.charAt(s.length()-1);

	int j = 1;
	int k = s.length();

//base case returns false for lengths of s <= 1
            
        if (s.length() <= 1)  {
            
            return true;
            
//else if accounts for words that have an odd number of letters            
            
        } else if (x == y && s.length() % 2 != 0) {
            
            //recursive element runs while letters are not in the same position
            //returns true if letters on both sides are equal      
    
            isPalindrome(s.substring(j + 1, k - 1));
            return true;
            
            //'if' statement accounts for words with an even # of letters 
            
            } else if (x == y && s.length() % 2 == 0)  {
            
           do {
                
            isPalindrome(s.substring(j + 1, k - 1));
            return true;                
                
            } while (j < k); 
            
        }   

            return false;         
}
}
