/**
  * This sketch demonstrates how to play a file with Minim using an AudioPlayer. <br />
  * It's also a good example of how to draw the waveform of the audio. Full documentation 
  * for AudioPlayer can be found at http://code.compartmental.net/minim/audioplayer_class_audioplayer.html
  * <p>
  * For more information about Minim and additional features, 
  * visit http://code.compartmental.net/minim/
  */

import ddf.minim.*;

Minim minim;
AudioPlayer player1;
AudioPlayer player2;

AudioPlayer ambient;

void setup()
{
  size(512, 200, P3D);
  
  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);
  
  // loadFile will look in all the same places as loadImage does.
  // this means you can find files that are in the data folder and the 
  // sketch folder. you can also pass an absolute path, or a URL.
  player1 = minim.loadFile("Bg_Clp.wav");
  player2 = minim.loadFile("CL_OHH1.wav");
  
  //ambient = minim.loadFile("Thumbs.wav");
  //ambient.loop();

}

void draw()
{
  background(255);
  fill(255, 0, 0);
  rect(25, 25, 50,50);
  
  fill(0, 0, 255);
  rect(125, 25, 50,50);
}

void mousePressed() {
  if(mouseX > 25 && mouseX < 75 && mouseY >25 && mouseY < 75){
  player1.rewind();
  player1.play();
  }
  
  if(mouseX > 125 && mouseX < 175 && mouseY >25 && mouseY < 75){
  player2.rewind();
  player2.play();
  }
}
