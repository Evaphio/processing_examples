void setup() {
fullScreen();
background(0);
fill(255);
textSize(10);
}

void draw() {
 

}

void mousePressed(){
  print(mouseX + " " + mouseY + " ");
  ellipse( mouseX, mouseY, 2, 2 );
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
  
  
}
