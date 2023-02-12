class Timer {
  long start;
  long duration;
  boolean activated;

  Timer() {
    this.start = millis(); 
  }
  
  void start(long duration) {
    this.start = millis(); 
    this.duration = duration;
    this.activated = true;
  } 
  
  boolean isPlaying() {
    return (millis() < start + duration);   
  }

  boolean isActivated() {
    return (activated);   
  }
}
