import themidibus.*; //Import the library

import java.util.ArrayList;

MidiBus myBus; // The MidiBus
int pitch = 64;
int channel = 0;
int velocity = 200;
int y = 0;
int x = 0;
int k = 0;

ArrayList<Integer> ys = new ArrayList<>();




void setup() {
  
  fullScreen();
  
  background(0);
  
  myBus = new MidiBus(this, -1, 3);
}

void dispose(){
  println("stopping...");
  myBus.dispose();
  println("bye");
  
}


void draw () {
  pitch = int(Math.round(y/9));
  

  y = 200 + k;
 
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  k +=20;
  if (y >= 1080) {
    k = 0;
  }


}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
