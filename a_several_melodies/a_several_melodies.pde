
public void draw()  {
background(0); // background does not leave traces when it is inside the draw method
frameRate(20);

image(image, shiftX, 0, imageScaledWidth, imageScaledHeight);



setInstrument( instrument );

for (int i = 0; i < melodies.length; i++){
  melodies[i].setMelodyInstrument();
  melodies[i].showRoute();
  melodies[i].update();
}

//text in the right upper corner
/*
fill(255);
textSize(12);
text("Time: " + counter, width - 300, height - (height-40));
//println(f + " " + durations.get(f));
text("Instrument: " + instruments[instrument], width - 300,height - (height-60));

// or

fill(0, 45,90);
noStroke();
rect(width - 310, 24, 200, 45 + 20 * melodies.length);
*/

}

public void mouseClicked() {
  points.add(mouseX);
  points.add(mouseY);
}
