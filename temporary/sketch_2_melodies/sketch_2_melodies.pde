

public void draw()  {
background(0); // background does not leave traces when it is inside the draw method
frameRate(20);

int counter = 0;
for (Melody melody : melodies) {
  melody.showRoute();
  counter = melody.update();
}

fill(0, 45,90);
noStroke();
rect(width - 310, height - (height-24), 200, 45);

//text in the right upper corner
fill(255);
textSize(12);
text("Time: " + counter, width - 300, height - (height-40));
//println(f + " " + durations.get(f));
text("Instrument: " + instruments[instrument], width - 300,height - (height-60));


}
