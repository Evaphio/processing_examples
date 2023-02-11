package some.example;

public class WhileTrue {
    public static void main(String argsp[]) {




        String[] lines = {"1 2", "3 4", "5 6", "7 8", "9 10", "11 12", "113 14", "15 16", "17 18", "19 20", "21 22", "23 24", "25 26", "27 28", "29 30", "31 32"};
        int x1 = 0;
        int y1 = 0;
        int x2 = 0;
        int y2 = 0;
        int i = 0;

        while(true) {
            if(i < lines.length) {
                x1 = Integer.valueOf(lines[i].split(" ")[0]);   
                y1 = Integer.valueOf(lines[i].split(" ")[1]); 
            }
            if(i < lines.length -1){
                x2 = Integer.valueOf(lines[i + 1].split(" ")[0]);
                y2 = Integer.valueOf(lines[i + 1].split(" ")[1]);
            }
            if(i == lines.length - 1) {
                x2 = Integer.valueOf(lines[0].split(" ")[0]);
                y2 = Integer.valueOf(lines[0].split(" ")[1]);
              }

            System.out.println(x1 + " " + y1 + " " + x2 + " " + y2);
            
            if(i >= lines.length - 1){
                break;
            }
            i++;


        }

    }
}
