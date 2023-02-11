Ball b; 

Ball[] balls;

void setup() {
  size(800, 600);
  noStroke();
   b = new Ball();
   
   balls = new Ball [100];
   for (int i = 0; i < balls.length; i++) {
     balls[i] = new Ball();
   }
}

void draw () {
  clearBackground();
  b.update();
  b.display();
  
  for (int i = 0; i < balls.length; i++) {
    balls[i].update();
    balls[i].display();
  }
}

void clearBackground() {
  fill(255);
  rect(0, 0, width, height);

}
