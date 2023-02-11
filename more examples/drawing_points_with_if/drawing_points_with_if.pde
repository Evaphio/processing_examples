int index = 0;

void setup() {
  size(500,500);
  background(0);
  stroke(255);
  frameRate(12);

}

void draw() {
if (index < 10) {
int x = 50 + index*30;
int y = 50 + index*20;
point(x, y);
}
index = index +1;
}
