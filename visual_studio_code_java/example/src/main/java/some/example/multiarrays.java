package some.example;

public class multiarrays {

    public static void main (String[] args) {
            /*
a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 
b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 
c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 
d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 
e1 e2 e3 e4 e5 e6 e7 e8 e9 e10 
f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 
g1 g2 g3 g4 g5 g6 g7 g8 g9 g10 
     */
        char symbol = 'a';
        String [] [] array = new String [7] [10];
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array[0].length; j++) {
                array [i][j] = symbol + "" + (j +1) + " ";
                System.out.print(array [i][j] + "");
            }
            symbol++;
            System.out.println();
        }

/*
0 1 2 3 
4 5 6 7 
8 9 10 11 
12 13 14 15 
16 17 18 19 
 */

int[][] twoD = new int[5][4];
    int i, j, k = 0;
    for (i = 0; i < 5; i++) {
        for (j = 0; j < 4; j++) {
            twoD[i][j] = k++;
            System.out.print(twoD[i][j] + " ");
        }
        System.out.println();
        }

/*
0 
1 2 
3 4 5 
6 7 8 9 
10 11 12 13 14 
       
*/

int[][] array2 = new int[5][];
array2[0] = new int[1];
array2[1] = new int[2];
array2[2] = new int[3];
array2[3] = new int[4];
array2[4] = new int[5];
int n, m, l = 0;
for (n = 0; n < 5; n++) {
    for (m = 0; m < array2[n].length; m++) {
        array2[n][m] = l++;
        System.out.print(array2[n][m] + " ");
        }
    System.out.println();
        }

// Инициализация двумерного массива
double[][] arrayTwoD = {
    {0, 1, 2, 3},
    {4, 5, 6, 7},
    {8, 9, 10, 11},
    {12, 13, 14, 15}
};
for (double[] arrayOneD : arrayTwoD) {
for (double element : arrayOneD) {
    System.out.print(element + " ");
}
System.out.println();
}

// двумерный с char
/*
t h 
h t 
a b 
h m 

 */
char [][] arrayChar = {
    {'t', 'h'},
    {'h', 't'},
    {'a', 'b'},
    {'h', 'm'}
};

for (char [] arrayElement : arrayChar) {
    for (char element : arrayElement) {
        System.out.print(element + " ");
    }
    System.out.println();
}

// for processing

/*
200, 200
150, 250
130, 300
170, 220
220, 170
*/


int [][] coordinates = {   // initialize as a block
    {200, 200},
    {150, 250},
    {130, 300},
    {170, 220},
    {220, 170}
  };

for ( int coordinate [] : coordinates) {
    int xCoordinate = coordinate[0];
    int yCoordinate = coordinate[1];
    for (int index = 0; index < coordinate.length; index++) {

    }
    System.out.println(xCoordinate + ", " + yCoordinate);
}





    }
    
}
