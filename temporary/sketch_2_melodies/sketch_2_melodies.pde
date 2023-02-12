

public void draw()  {
background(0); // background does not leave traces when it is inside the draw method
frameRate(20);

fill(0, 45,90);
noStroke();
rect(width - 310, 24, 200, 45 + 20 * melodies.length);

int curHeight = 40;
//text in the right upper corner
fill(255);
textSize(12);
text("Time: " + millis() / 1000, width - 300, curHeight);
curHeight += 20;

int segment;
for (Melody melody : melodies) {
  melody.showRoute();
  segment = melody.update();
  text("Note: " + segment, width - 300, curHeight);
  curHeight += 20;
}

  for (int i = 0; i < points.size(); i += 2) {
    int x1 = points.get(i);
    int y1 = points.get(i + 1);
    strokeWeight(6);
    stroke(50, 100, 150, 225);
    point(x1, y1);

    int x2, y2;
    if (i < points.size() - 2) {
      x2 = points.get(i + 2);
      y2 = points.get(i + 3);
    } else {
      x2 = points.get(0);
      y2 = points.get(1);
    }
    strokeWeight(1);
    line(x1, y1, x2, y2);
  }


text("Instrument: " + instruments[instrument], width - 300, curHeight);


}

public void mouseClicked() {
  points.add(mouseX);
  points.add(mouseY);
}
