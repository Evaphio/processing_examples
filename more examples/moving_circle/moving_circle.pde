float circle_x = 0;

void setup()  {
  size (400,400);
  noStroke();
}

void draw() {
  background (128, 255, 0);
  fill(255, 128, 0);
  ellipse(circle_x, 50, 50, 50);
  circle_x = circle_x + 1;
}
