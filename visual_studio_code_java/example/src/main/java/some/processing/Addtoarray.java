package some.processing;



public class Addtoarray {

    public static void main(String argsp[]) {

    int music_x1 = 0;
    int music_x2 = 0;
    int music_y1 = 0;
    int music_y2 = 0;

    int n = 0; //counter for coordinates
    int m = 0; //counter for the array of distances
    

    double d;

    String[] numbers = {"202 24 295 44 355 77 383 121 408 165 403 212 377 243 375 280 381 326 407 363 337 382 239 362 208 342 219 298 131 287 96 245 80 190 82 117 109 "};
    String [] pieces = numbers[0].split(" "); 

    int size2 = pieces.length & ~1;
    
    int numberOfDurations = size2/2;
    double [] durationTime = new double[numberOfDurations];

    if (n < size2) {
music_x1 = Integer.valueOf(pieces[n]);
music_y1 = Integer.valueOf(pieces[n +1]);
}
if(n < size2 - 3) {            
  music_x2 = Integer.valueOf(pieces[n + 2]); 
  music_y2 = Integer.valueOf(pieces[n + 3]);; 
  } 
if (n == size2 - 2) {
    music_x2 = Integer.valueOf(pieces[0]);
    music_y2 = Integer.valueOf(pieces[1]);
  }
  
d = Math.sqrt((music_x2 - music_x1) * (music_x2 - music_x1) + (music_y2 - music_y1) * (music_y2 - music_y1));


if (m < numberOfDurations -1) {
  durationTime[m] = d; 
}


n +=2;
m++; 



}

}

