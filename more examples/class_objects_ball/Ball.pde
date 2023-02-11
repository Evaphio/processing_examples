class Ball {
  //properties
  float x, y, w, h;
  float speedX, speedY;
  color c;

  
  //constructor, does not have a return type, does not have the word void
  Ball() {
    x = random(100, width - 100);
    y = random(100, height - 100);
    w = random(20, 60);
    h = w;
    c = color(random(255), random(255), random(255));
    speedX = random(-5, 5);
    speedY = random(-5, 5);
  }
  
  //methods
  void update() {
  
  checkBounds();
  x += speedX;
  y += speedY;
}

void display() {
  fill(c);
  ellipse(x, y, w, h);
}

void checkBounds() {
  if (x < 0+w/2 || x > width-w/2) {
  speedX *= -1;
  }
    if (y < 0+h/2 || y > width-h/2) {
  speedY *= -1;
  }
  
}
}
