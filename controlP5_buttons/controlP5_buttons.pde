import controlP5.*;

ControlP5 cp5;
MyControlListener myListener;//class MyControlListener

int instrument = 0;
float a = 0;
float b = 0;
float c = 0;



void setup() {
  size(800,800);
  noStroke();
  cp5 = new ControlP5(this); // needs to always be added

  
  // create a new button with name 'buttonA'
  cp5.addButton("ChangeColor")
     .setColorBackground(color(34, 177, 76)) 
     .setColorForeground(color(181, 230, 29)) 
     .setColorActive(color(181, 230, 29)) 
     .setValue(0)
     .setPosition(100,100)
     .setSize(200,30)
     ;
     
   
   // buttons with images
     
     PImage[] imgs = {loadImage("1.png"),loadImage("2.png"), loadImage("3.png")};
     cp5.addButton("play")
     .setValue(128)
     .setPosition(80,300)
     .setImages(imgs)
     .updateSize()
     ;
     
     cp5.addButton("playAgain")
     .setValue(128)
     .setPosition(210,300)
     .setImages(imgs)
     .updateSize()
     ;
     
    // Slider 
    
    cp5.addSlider("mySlider")
     .setRange(0,127)
     .setValue(140)
     .setPosition(200,200)
     .setSize(200,20);
  
  myListener = new MyControlListener();
  
  cp5.getController("mySlider").addListener(myListener);

}

void draw() {
  background(a,b,c);
  
  textSize(20);

  text(instrument, 140, 200);
}
