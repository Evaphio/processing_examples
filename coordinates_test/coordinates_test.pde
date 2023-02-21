PImage image;

void setup() {
  size(300, 300);
  fullScreen(); 
  background(0);
  fill(255);
  textSize(10);
  
  image = loadImage("image1.jpg");
}

void draw() {
  image(image, 0, 0);

}

void mousePressed(){
  print(mouseX + " " + mouseY + " ");
  ellipse( mouseX, mouseY, 2, 2 );
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
  
  
}
