package some.methods;

public class Distance {

    private double x1;
    private double x2;
    private double y1;
    private double y2; 

    public Distance () {
        this.x1 = x1;
        this.x2 = x2;
        this.y1 = y1;
        this.y2 = y2;
    }

    
    public double calculateDistance(double x1, double x2, double y1, double y2){
        double distance  =  Math.sqrt((y2 - y1) * (y2 - y1) + (x2 - x1) * (x2 - x1));
        return distance;  

    }


    
}
