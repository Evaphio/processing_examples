import themidibus.*; //Import the library

import java.util.ArrayList;

MidiBus myBus; // The MidiBus
int pitch;
int channel = 0;
int velocity = 200;
int y = 0;
int x = 0;
int k = 0;

ArrayList<Integer> ys = new ArrayList<>();
ArrayList<Integer> gypsyMinor = new ArrayList<>();

//scale
int index = 0; //counter when playing elements of scale array lists



void setup() {
  
  size(400, 400);
  
  background(0);
  
  myBus = new MidiBus(this, -1, 3);
  
  int i = 0;
  int pitch_height = 0;
  
  while (pitch_height < 127) {
  gypsyMinor.add(pitch_height);
  i++;
  pitch_height = pitch_height + 2;
  gypsyMinor.add(pitch_height);
  i++;
  pitch_height = pitch_height + 1;
  gypsyMinor.add(pitch_height);
  i++;
  pitch_height = pitch_height + 3;
  gypsyMinor.add(pitch_height);
  i++;
  pitch_height = pitch_height + 1;
  gypsyMinor.add(pitch_height);
  i++;
  pitch_height = pitch_height + 1;
  gypsyMinor.add(pitch_height);
  i++;
  pitch_height = pitch_height + 3;
  gypsyMinor.add(pitch_height);
  i++;
  pitch_height = pitch_height + 1;
  }

}

void dispose(){
  println("stopping...");
  myBus.dispose();
  println("bye");
  
}


void draw () {
  

  if (index < gypsyMinor.size()) {
  println(gypsyMinor.get(index) + 1);
  pitch = gypsyMinor.get(index);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  index++;
  }

  /*pitch = 64;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch + 2;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch + 1;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch + 3;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch + 1;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch + 1;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch + 3;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch + 1;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  
  pitch = pitch - 1;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch - 3;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch - 1;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch - 1;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch - 3;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);
  pitch = pitch - 1;
  println(pitch);
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity);*/



}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
