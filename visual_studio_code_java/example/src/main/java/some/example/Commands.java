package some.example;
import java.util.Scanner;

public class Commands {

    public static void main (String[] args) {

    // Тренарный оператор
    //условие ? значение для true : значение для false

    int myNum = 3>2 ? 10 : 5; 

    System.out.println(myNum); 

    // SWITCH

    Scanner reader = new Scanner(System.in);

    System.out.println("Enter your grade: "); 
    
    String userGrade = reader.nextLine().toUpperCase(); //brings input to upper case

    switch (userGrade) {
        case "A+":
        case "A":
        System.out.println("Distinction");
        break;

        case "B":
        System.out.println("B Grade");
        break;

        case "C":
        System.out.println("C Grade");
        break;

        default:
        System.out.println("Fail".toUpperCase()); // brings result to upper case
        break;
    }

    }
    
}
