package some.example;

public class CircleMoving {


        public static void main(String args[]) {
          int x=0;
          int y=0;

        
     int [] pieces = {1, 3, 4, 6, 3, 4};
          
      for (int i = 0; i < pieces.length; i += 2) {
        x = pieces[i];
        y = pieces[i + 1];
         }
        System.out.println(x + " " + y);
    
        }
    }
    
