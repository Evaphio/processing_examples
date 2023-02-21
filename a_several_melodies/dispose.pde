
//closes midibus properly
void dispose(){
  println("stopping...");
  if (!points.isEmpty()) {
    StringBuilder sb = new StringBuilder();
    for (Integer point : points) {
      sb.append(point).append(" ");
    }
    saveStrings("data/sampled.txt", new String[]{sb.toString()});
  }
  myBus.dispose();
  println("bye");
}
