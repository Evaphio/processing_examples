
public void draw()  {
background(0); // background does not leave traces when it is inside the draw method
frameRate(20);

fill(0, 45,90);
noStroke();
rect(width - 310, 24, 200, 45 + 20 * melodies.length);

setInstrument( instrument );



//play all melodies

/*for (int i = 0; i <= 2; i++) {
  melodies[i].showRoute();
  melodies[i].update();  
}*/
melodies[0].showRoute();
melodies[0].update();
setInstrument(125);
melodies[1].showRoute();
melodies[1].update();
setInstrument(1);
melodies[2].showRoute();
melodies[2].update();



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
