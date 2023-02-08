
import controlP5.*;

ControlP5 cp5;

Accordion accordion;
Textlabel myTextlabelA;
color c = color(0, 160, 100);

int instrument = 0; 

String[] instruments;

void setup() {
  size(800, 800);
  noStroke();
  smooth();
  instruments = loadStrings("instruments.txt");
  gui();
}

void draw() {
  background(220);
  

  
  textSize(20);
  text(instrument, 700, 200);
  
  fill(c);
  
  float s1 = cp5.getController("hello").getValue();
  ellipse(200,400,s1,s1);
  
  float s2 = cp5.getController("world").getValue();
  ellipse(300,100,s2,s2);
}
