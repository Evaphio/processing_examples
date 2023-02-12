

public void draw()  {
background(0); // background does not leave traces when it is inside the draw method
frameRate(20);

for (Melody melody : melodies) {
  melody.showRoute();
  melody.update();
}

fill(0, 45,90);
noStroke();
rect(width - 310, height - (height-24), 200, 45);

//text in the right upper corner
fill(255);
textSize(12);
text("Time: " + millis() / 1000, width - 300, height - (height-40));
text("Instrument: " + instruments[instrument], width - 300,height - (height-60));


}
