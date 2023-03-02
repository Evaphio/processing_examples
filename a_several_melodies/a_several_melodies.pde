
public void draw()  {
background(0); // background does not leave traces when it is inside the draw method
frameRate(20);


image(image, shiftX, 0, imageScaledWidth, imageScaledHeight);


for (int i = 0; i < melodies.length; i++){
  melodies[i].setMelodyInstrument();
  melodies[i].showRoute();
  melodies[i].update();
}

}
