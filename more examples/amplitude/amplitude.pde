import processing.sound.*;
SoundFile file;







int i = 0;

void setup() {
  size(640, 360);
  background(255);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "Antarctica1.wav");
  file.play();
}      

void draw() {
  
  frameRate(10);

  file.rate(1+i);
  
  i++;


}
