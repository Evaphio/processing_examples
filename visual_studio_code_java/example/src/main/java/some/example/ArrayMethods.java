package some.example;

import java.util.Arrays;

import lombok.ToString;


public class ArrayMethods {

    //Arrays.equals();

public static void main(String argsp[]) {
int[] arr1 = {0,2,4,6,8,10};
int[] arr2 = {0,2,4,6,8,10};
int[] arr3 = {10,8,6,4,2,0};
boolean result1 = Arrays.equals(arr1, arr2);
boolean result2 = Arrays.equals(arr1, arr3);

System.out.println(result1); 
System.out.println(result2); 

    //Arrays.copyOfRange();

int[] source = {12, 1, 5, -2, 16, 14, 18, 20, 25};

int[] dest = Arrays.copyOfRange(source, 3, 7);

System.out.println(dest[0]); 

    //Arrays.toString();

System.out.println(Arrays.toString(dest));

    //Arrays.sort();

Arrays.sort(dest);

System.out.println(Arrays.toString(dest));

    //Arrays.binarySearch();

int[] myInt = {21, 23, 34, 45, 56, 78, 99};

int foundIndex = Arrays.binarySearch(myInt, 34);

System.out.println(foundIndex);

foundIndex = Arrays.binarySearch(myInt, 35);

System.out.println(foundIndex);

foundIndex = Arrays.binarySearch(myInt, -35);

System.out.println(foundIndex);

    //Length

    int [] userAge = {21, 22, 26, 32, 40};

    int arrayLength = userAge.length; 

    String userName = "Onceuponatime"; 

    int stringLength = userName.length();

    System.out.println("Userage lengh is " + arrayLength + "; Username length is " + stringLength);

    



}    
}



