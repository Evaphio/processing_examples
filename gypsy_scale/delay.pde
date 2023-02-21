void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
