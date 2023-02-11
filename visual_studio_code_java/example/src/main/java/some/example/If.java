package some.example;

public class If {

    public static void main(String argsp[]) {


        /*

        1 2 3 4
        3 4 5 6
        5 6 7 8
        7 8 9 10
        9 10 11 12
        11 12 12 13
        12 13 14 15
        14 15 1 2
         
         */

        String[] lines = {"1 2", "3 4", "5 6", "7 8", "9 10", "11 12", "113 14", "15 16", "17 18", "19 20", "21 22", "23 24", "25 26", "27 28", "29 30", "31 32"};
        int x1 = 0;
        int y1 = 0;
        int x2 = 0;
        int y2 = 0;

        for(int i = 0; i < lines.length; i++){
            x1 = Integer.valueOf(lines[i].split(" ")[0]);   //"int" turns the String into int; "lines[index]" shows the number of the lines array String; split(" ")[0]splits the String of the lines arrat into 2 parts with " " separator. [0] indicates the 1st number
            y1 = Integer.valueOf(lines[i].split(" ")[1]);
            
            if(i < lines.length -1){
                x2 = Integer.valueOf(lines[i + 1].split(" ")[0]);
                y2 = Integer.valueOf(lines[i + 1].split(" ")[1]);
            }
            if(i == lines.length - 1) {
                x2 = Integer.valueOf(lines[0].split(" ")[0]);
                y2 = Integer.valueOf(lines[0].split(" ")[1]);
              }

            System.out.println(x1 + " " + y1 + " " + x2 + " " + y2);
        }

    }
    
}
