import processing.sound.*;
import java.util.ArrayList;


SoundFile music;


//int t1;
//int t2;
int i = 0;
int counter = 0;
double d;
int music_x1;
int music_x2;
int music_y1;
int music_y2;


int times = 20;
Timer timer;


String[] numbers;

double limit = 15; 

ArrayList<Integer> durations = new ArrayList<>();

int f = 0;
int k = 0;

void setup() {
size(500,500);  
textSize(40);
music = new SoundFile(this, "1.aif");
numbers = loadStrings("load1.txt");
timer = new Timer(times); 



String [] pieces = numbers[0].split(" "); 

int size2 = pieces.length & ~1;


// -----CALCULATING DISTANCES
                                    

for (int n = 0; n < size2; n +=2 ) {

music_x1 = int(pieces[n]);
music_y1 = int(pieces[n +1]);
if(n < size2 - 3) {            
  music_x2 = int(pieces[n + 2]); 
  music_y2 = int(pieces[n + 3]);; 
  }   
d = Math.sqrt((music_x2 - music_x1) * (music_x2 - music_x1) + (music_y2 - music_y1) * (music_y2 - music_y1));

int d2 = int(Math.round(d)); //надо ли округлять?

durations.add(d2);
}
//-----------------------------




}


//--------------------------------------------- DRAW ---------------------------------------------------------------------
void draw()  {
background(0); 


String [] pieces = numbers[0].split(" "); 

int size2 = pieces.length & ~1;



// MUSIC


if (keyPressed == true) { 
noLoop();
}


// здесь необходим цикл, в котором f будет приобретать новое значение с пробегом функции. 


limit = durations.get(f)/10;

if (k < durations.get(f)) {
  k++;
} else {    
  f++;
}
if (f == durations.size()) {
  f = 0;
}

 
println(f);


if (i < limit) {
if (timer.isPlaying()) {
counter ++;
timer.start(); 
i++;

if (i >= limit) {
background(#FF0000);
music.play();
i = 0;
counter = 0;
}
} 

}
text("Time: " + counter, 100, 200);




}
