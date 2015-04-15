public class Binomial {

//Main method declares variables for n and k and initializes them
//Main method then passes the variables to method computeBinomial

    
    public static void main (String [] args)  {
        
        int n = 3;
        int k = 0;
        System.out.println(computeBinomial (n, k));
        
        n = 3;
        k = 1;
        
        System.out.println(computeBinomial (n, k));
        
        n = 3;
        k = 2;
        
        System.out.println(computeBinomial (n, k));
        
        n = 3;
        k = 3;
        
        System.out.println(computeBinomial (n, k));        
    }

//method computeBinomial declares variable coefficient
//uses base cases per problem instructions
//uses recursive case to return value of coefficient
    
    static int computeBinomial (int n, int k)  {
        
        int coefficient = 0;

//base cases given in directions used with an if statement
        
        if (k == 0)  {
            
            return 1;
            
        } else if ( k > n)  {
            
            return 0;

//recursive case calls on computeBinomial using the given parameters
            
        } else if (n >= k && k > 0)  {
            
            coefficient = (computeBinomial(n-1, k) + computeBinomial(n-1, k-1));
            
        }
        
        
        return coefficient; 
        
    }
    
}
