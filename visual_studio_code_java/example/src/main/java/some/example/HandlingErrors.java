package some.example;

import java.util.InputMismatchException;// needs to be imported separately
import java.util.Scanner;

public class HandlingErrors {
    public static void main(String argsp[]) {

        
        int choice = 0;
         
        Scanner input = new Scanner(System.in);

        int[] numbers = { 10, 11, 12, 13, 14, 15 };
        System.out.print("Please enter the index of the array: ");

        try {
            choice = input.nextInt();
            System.out.printf("numbers[%d] = %d%n", choice, numbers[choice]); //numbers[5] = 15
            
            // printf - форматирование вывода
            //в кавычках - спецификаторы формата "numbers[%d] = %d%n", которые резервируют место
            // в строке и заменяются аргументами choice, numbers [choice]
            // спецификаторы формата начинаются с %
            // %d - integer
            //%.3f - float или double с флагом, который указывает на то, что будет
            // выводиться 3 цифры в дробной части после точки

        }
        catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Error: index is invalid");
        }
        catch (InputMismatchException e) {
            System.out.println("Error: You did not enter an integer");
        }
        catch (Exception e) {
            System.out.printf(e.getMessage());
        }


        
        
            }
    
}
