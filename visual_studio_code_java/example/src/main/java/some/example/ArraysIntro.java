package some.example;
import java.util.Scanner;
import java.util.Arrays;

public class ArraysIntro {

    public static void main(String argsp[]) {

    // Assigning values to array

int[] numbers = new int[3];
numbers[0] = 2;
numbers[2] = 5;

System.out.println(numbers[0]);
System.out.println(numbers[2]);

    // getting an element by index

Scanner reader = new Scanner(System.in);

int[] numbersTwo = new int[5];
numbersTwo[0] = 42;
numbersTwo[1] = 13;
numbersTwo[2] = 12;
numbersTwo[3] = 7;
numbersTwo[4] = 1;

System.out.println("Which index should we access? ");
int index = Integer.valueOf(reader.nextLine());

System.out.println(numbersTwo[index]);


    
}
}
