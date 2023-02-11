package some.example;
import java.util.ArrayList;

public class ArrayListParameter {

    // ArrayList as method

    public static void print(ArrayList<String> list) {
        for (String value: list) {
            System.out.println(value);
        }

        ArrayList<String> strings = new ArrayList<>();

        strings.add("First");
        strings.add("Second");
        strings.add("Third");

    print(strings);
    

    } 

    // With Several parameters

    public static void printSmallerThan(ArrayList<Integer> numbers, int threshold) {
        for (int number: numbers) {
            if (number < threshold) {
                System.out.println(number);
            }
        }
    
        ArrayList<Integer> list = new ArrayList<>();

        list.add(1);
        list.add(2);
        list.add(3);
        list.add(2);
        list.add(1);

        printSmallerThan(list, 3);
    }





    
}
