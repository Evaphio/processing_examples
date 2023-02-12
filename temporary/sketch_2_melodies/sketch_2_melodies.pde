

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

text("Instrument: " + instruments[instrument], width - 300, curHeight);


}
