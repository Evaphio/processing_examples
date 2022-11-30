import processing.sound.*;

SoundFile music;
int times = 20;
int limit = 15;
int i = 0;
int counter = 0;

Timer timer;


void setup() {
size(400,400);  
textSize(40);
timer = new Timer(times); 
music = new SoundFile(this, "1.aif");

}

void draw()  {
background(0); 

if (i < limit) {
if (timer.isPlaying()) {
counter ++;
timer.start(); 
i++;
if (i >= limit) {
background(#FF0000);
noLoop();
}
}  

}
text("Time: " + counter, 100, 200);

}
