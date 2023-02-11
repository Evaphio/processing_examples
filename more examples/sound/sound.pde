import processing.sound.*;

SoundFile music;

void setup() {
size(800, 600);

music = new SoundFile(this, "1.aif");
//music.loop();
}

void draw() {
  background(128);
  fill(255);
  textSize(72);
  text("Click Me", 255, 220);
  fill(255, 0, 0);
  ellipse(width/2, height/2, 100, 100);
  
  if (mousePressed && dist(mouseX, mouseY, width/2, height/2) < 50) {
    music.play();
  }
}
