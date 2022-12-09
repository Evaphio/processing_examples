import processing.sound.*;
import java.util.ArrayList;


SoundFile music;


//int t1;
//int t2;
int i = 0;
int j = 0;
int counter = 0;
double d;
int music_x1;
int music_x2;
int music_y1;
int music_y2;


int times = 200;
Timer timer;


String[] numbers;

double limit = 15; 

ArrayList<Integer> durations = new ArrayList<>();

int f = 0;
int k = 0;


int x=0;
int y=0;
int x1 = 0;
int y1 = 0;
int x2 = 0;
int y2 = 0;

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

// здесь, вероятно, надо сделать так, чтобы звучала нота, находящаяся на нулевой точке координат. как этого можно достичь?

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





// Dots
for (int i = 0; i < size2; i += 2) {
    x = int(pieces[i]);
    y = int(pieces[i +1]);
      strokeWeight(6);
      stroke(255);
      point(x, y);
     }


// Lines
for (int n = 0; n < size2; n +=2) {
if (n < size2) {
x1 = int(pieces[n]);
y1 = int(pieces[n +1]);
}

if(n < size2 - 3) {            
  x2 = int(pieces[n + 2]); 
  y2 = int(pieces[n + 3]);; 
  } 
if (n == size2 - 2) {
    x2 = int(pieces[0]);
    y2 = int(pieces[1]);
  }
  
strokeWeight(1);
stroke(255);
line(x1, y1, x2, y2); 

}



// MUSIC


if (keyPressed == true) { 
noLoop();
}


// здесь необходим цикл, в котором f будет приобретать новое значение с пробегом функции. 


limit = durations.get(f)/10;

/*if (k < durations.get(f)) {
  k++;
} else {    
  f++;
}
if (f == durations.size()) {
  f = 0;
}

println(f + " " + durations.get(f));*/

 




if (j < limit) {                   // вероятно, изменение f должно быть внутри этого цикла
if (timer.isPlaying()) {
counter ++;
timer.start(); 
j++;
if (j >= limit) {
  
// Moving point----------
if (i <= size2) {
if (i == size2) {
i = 0;
}
x = int(pieces[i]);
y = int(pieces[i+1]);
     }
strokeWeight(25);
stroke(255, 255, 255, 170);
point(x, y);
i += 2;
//--------------------
  
  
  
//background(#FF0000);
music.play();
j = 0;                                   // j снова становится равным нулю, можно снова запускать его, пока он не достигнет limit
f++;                                     // на один увеличился f
counter = 0;
if (f == durations.size()) {
  f = 0;}
}
} 

}
text("Time: " + counter, 100, 200);

println(f + " " + durations.get(f));


}
