package some.example;
import java.util.ArrayList;


public class ArrayIntoList {
    public static void main(String argsp[]) {
        int[] myInt = {21, 23, 34, 45, 56, 78, 99};
        int x = 0;
        int y = 0;

        ArrayList<Integer> arrayList = new ArrayList<>();
        
        for(int element : myInt) {
            arrayList.add(element);
        }
        /*for(int i = 0; i < arrayList.size(); i++) {
            System.out.println(arrayList.get(i));
        }*/

        if(arrayList.size() % 2 != 0) {
            arrayList.remove(arrayList.size() -1);
        }

        for(int i = 0; i < arrayList.size(); i +=2) {
            x = arrayList.get(i);
            y = arrayList.get(i + 1);
            System.out.println(x + " " + y);
        }


        



    }
    
}
