import processing.sound.*;
import java.util.ArrayList;


SoundFile music;


//int t1;
//int t2;
int i = 0;
double d;
int music_x1;
int music_x2;
int music_y1;
int music_y2;
int m = 0; //counter for the array of distances


int times = 20;
Timer timer;


String[] numbers;

double limit = 4; 

ArrayList<Integer> durations = new ArrayList<>();

int f = 0;

void setup() {
background(0); 
size(500,500);  
music = new SoundFile(this, "1.aif");
numbers = loadStrings("load1.txt");
timer = new Timer(times); 
}

void draw()  {


String [] pieces = numbers[0].split(" "); 

int size2 = pieces.length & ~1;


// CALCULATING DISTANCES
                                    

for (int n = 0; n < size2-2; n +=2 ) {

music_x1 = int(pieces[n]);
music_y1 = int(pieces[n +1]);
if(n < size2 - 3) {            
  music_x2 = int(pieces[n + 2]); 
  music_y2 = int(pieces[n + 3]);; 
  } 
if (n == size2 - 2) {
    music_x2 = int(pieces[0]);
    music_y2 = int(pieces[1]);
  }
  
d = Math.sqrt((music_x2 - music_x1) * (music_x2 - music_x1) + (music_y2 - music_y1) * (music_y2 - music_y1));

int d2 = int(Math.round(d));

durations.add(d2);


}






// MUSIC

if (f < durations.size()) {
limit = durations.get(f);

if (i < limit) {           
if (timer.isPlaying()) {   
timer.start(); 
i++;
if (i >= limit) {
music.play();
}
}

}
}
f++;
m++;
}
