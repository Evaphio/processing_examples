package some.example;
import java.util.Scanner;


public class Exceptions {
public static void main(String argsp[]) {

// Try-Catch-Finally

int num, deno;
 
 Scanner input = new Scanner(System.in);

try
{
     System.out.print("Please enter the numerator: ");

     num = input.nextInt();


    System.out.print("Please enter the denominator: ");
    
    deno = input.nextInt();


    System.out.println("The result is " + num/deno);

}
 catch (Exception e)
{
System.out.println(e.getMessage());
}
finally
{
System.out.println("---- End of Error Handling Example ----");
}

/*
 Please enter the numerator: 5
Please enter the denominator: 0
/ by zero
---- End of Error Handling Example ----
 */








    }

}
