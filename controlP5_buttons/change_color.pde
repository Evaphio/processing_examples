public void ChangeColor(int theValue) {
  println("a button event from ChangeColor: "+theValue);
  a = random(0, 255);
  b = random(0, 255);
  c = random(0, 255);
  
  instrument = instrument + 1;
  if (instrument == 128) {
    instrument = 0;
  }


}
