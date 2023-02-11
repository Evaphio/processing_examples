package some.example;
import java.util.Arrays;
import java.util.ArrayList;



public class Cycles {
    public static void main(String argsp[]) {

        // FOR 
        // for (initial value; condition; changed value)

        for (int i = 0; i < 5; i++) {
            System.out.println(i);
        }

        // for для перебора массива

        int[] myNumbers = {23, 45, 7, 68, 43, 12};

        Arrays.sort(myNumbers); // sorting the array

        for (int i = 0; i < myNumbers.length; i++) {
            System.out.println(myNumbers[i]); 
        }

        // расширенный FOR

        for (int some : myNumbers) //объявление переменной : массив

        System.out.println(some); 

        /*
        23
        45
        7
        68
        43
        12 
         */

         // WHILE

         int i = 5;

         while (i > 0) {
            System.out.println(i);
            i = i - 1;  
         }

         // iterating over a list

         ArrayList<String> teachers = new ArrayList<>();


        teachers.add("Simon");
        teachers.add("Samuel");
        teachers.add("Ann");
        teachers.add("Anna");

        for (String teacher: teachers) {
            System.out.println(teacher);
        }

        /*
         same

         ArrayList<String> teachers = new ArrayList<>();

        teachers.add("Simon");
        teachers.add("Samuel");
        teachers.add("Ann");
        teachers.add("Anna");
        for (int i = 0; i < teachers.size(); i++) {
            String teacher = teachers.get(i);
            // contents of the for each loop:
            System.out.println(teacher);
        }
         */

         // DO WHILE

        int counter = 100;
        do {
        System.out.println("Counter = " + counter);
        counter = counter +1;
        } while (counter<0); // 101 > 0, therefore false, therefore the cycle stops


    }  
}
