package some.example;

public class EverySecond {

    public static void main(String argsp[]) {

    String [] lines = {"202 24 295 44 355 77 383 121 408 165 403 212 377 243 375 280 381 326 407 363 337 382 239 362 208 342 219 298 131 287 96 245 80 190 82 117 109 60"};  
    int x = 0;
    int y = 0;

    String [] pieces = lines[0].split(" ");


    for (int i = 0; i < pieces.length; i += 2) {
        x = Integer.valueOf(pieces[i]);
        y = Integer.valueOf(pieces[i +1]);
        System.out.println(x + " " + y);

        }


    /*int x = 0;
    int y = 0;
    
    String [] pieces = lines[0].split(" ");
      for ( int i = 0; i < pieces.length; i++) {
          if (i %  2 == 0) {
            x = Integer.valueOf(pieces[i/2]);
              //System.out.println("x[" + i/2 + "] = " + points[i]);
          } else {
            y = Integer.valueOf(pieces[i/2]);
              //System.out.println("y[" + i/2 + "] = " + points[i]);
          }

          System.out.println(x + " " + y);
      }
*/




//WHY SO?

/*public class MyClass {
    public static void main(String args[]) {
      int[] points = { 2, 4, 6, 1, 3, 5, 7 };
      int x = 0;
      int y = 0;
      for ( int i = 0; i < points.length; i+=2) {
          if (i %  2 == 0) {
             x = points[i];
          } else {
              y = points[i+3];
          }

          System.out.println(x + " " + y);
      }

    }
}
}*/
              
    }


    }
    

