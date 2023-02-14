
public void draw()  {
background(0); // background does not leave traces when it is inside the draw method
frameRate(20);

fill(0, 45,90);
noStroke();
rect(width - 310, 24, 200, 45 + 20 * melodies.length);

setInstrument( instrument );


/*
//play all melodies
int segment;
for (Melody melody : melodies) {
  melody.showRoute();
  segment = melody.update();
  text("Note: " + segment, width - 300, curHeight);
  curHeight += 20;
}*/
melodies[0].showRoute();
melodies[0].update();
melodies[1].showRoute();
melodies[1].update();
melodies[2].showRoute();
//melodies[2].update();


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

public void mouseClicked() {
  points.add(mouseX);
  points.add(mouseY);
}
