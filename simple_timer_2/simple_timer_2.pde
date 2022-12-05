import processing.sound.*;

SoundFile music;

//timer variables
int t1;
int t2;
int [] durationTime = {1000, 1000, 50, 50, 50, 1000, 1000, 50, 50, 50, 1000};  // there should be an array of lengths or array list of lengths, based on distances between coordinates
int limit = 15;
int index = 0;

//animation variables
String[] lines;
int x=0;
int y=0;
int x1 = 0;
int y1 = 0;
int x2 = 0;
int y2 = 0;
int i = 0;




void setup() {
size(500,500);  
t1 = millis();
music = new SoundFile(this, "1.aif");
lines = loadStrings("load1.txt");

}

void draw()  {
background(0); 


// ANIMATION

String [] pieces = lines[0].split(" ");

int size2 = pieces.length & ~1;

// Moving point
if (i <= size2) {
if (i == size2) {
i = 0;
}
x = int(pieces[i]);
y = int(pieces[i +1]);
     }
strokeWeight(15);
frameRate(15);                            // framerate determines the speed of movement between dots. the variable should be also an array of lengths. 
stroke(255, 255, 255, 170);
point(x, y);
i += 2;


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

// Timer for music 
t2 = millis() - t1;


if (index < durationTime.length) {
if (t2 > durationTime[index]) {
t1 = millis();
music.play();
println("time: " + index);
index++;

}

if (index == limit) {
noLoop();
}
}




}
