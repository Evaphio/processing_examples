//closes midibus properly
void dispose(){
  println("stopping...");
  myBus.dispose();
  println("bye");
}
