void setup() {
  
  size(400, 400);
  
  background(0);
  
  myBus = new MidiBus(this, -1, 3);
  
  //calculate default scale array
  calculateScaleArray(majorPentatonicScale);

}
