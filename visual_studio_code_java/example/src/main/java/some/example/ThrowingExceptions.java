package some.example;
import java.util.Scanner;
import java.util.InputMismatchException;

public class ThrowingExceptions {
    
    public static void main(String argsp[]) {

        int[] numbers = {6, 8, 7, 23, 56, 9, 64, 2, 14, 3, 48};

        Scanner reader = new Scanner(System.in);

        while(true) {

            System.out.println("Enter index");

            int i = reader.nextInt();

            if (i == -1) {
                System.out.println("Ihohohohoho!!!");
                break;
            }
            else if (i == 0 ) {
                throw new ArrayIndexOutOfBoundsException();
            }
            else {
                System.out.printf("numbers[%d] = %d%n", i, numbers[i]);

            }
    }

    // This needs to be updated


// Example from the book

int choice = 0;
int[] some = { 10, 11, 12, 13, 14, 15 };
    
System.out.print("Please enter the index of the array: ");
 try
 {
 choice = reader.nextInt();
 if (choice == 0)                         // добавление нового исключения
 throw new ArrayIndexOutOfBoundsException(); // добавление нового исключения
 System.out.printf("some[%d] = %d%n", 
 choice, some[choice]);
 }catch (ArrayIndexOutOfBoundsException e)
 {
 System.out.println("Error: Index is invalid.");
 }catch (InputMismatchException e)
 {
 System.out.println("Error: You did not enter an integer.");
 }catch (Exception e)
 {
 System.out.printf(e.getMessage());
 }
  
}
}
