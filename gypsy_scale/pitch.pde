void draw () {
  
  if (index < scaleArray.length) {
  println(pitch);
  pitch = scaleArray[index];
  myBus.sendNoteOn(channel, pitch, velocity);
  delay(400);
  index++;
  if(pitch >= 127) {
    noLoop();
  }
  }
  
}
