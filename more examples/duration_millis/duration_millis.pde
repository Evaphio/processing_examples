import processing.sound.*;

SoundFile music;
int times = 1000;
int i = 0;

 
Timer timer; 

 void setup() { 
 size(200,200); 
 background(0); 
 timer = new Timer(times); 
 timer.start();
 music = new SoundFile(this, "1.aif");
 } 
 
 void draw() { 
 
 
 
 if (i < 10) {
 if (timer.isFinished()) { 
 background(random(255));
 music.play();
 timer.start(); 
 i++;
 }
 }
 }
 
 
