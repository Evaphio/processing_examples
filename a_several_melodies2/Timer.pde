/*class Timer {
int t1 = 0;  // поставили курицу в духовку   если через запятую, то почти ничего -запятую
int lastingTime;

Timer(int givenLastingTime) {
this.lastingTime = givenLastingTime;
}
void start() { 
t1 = millis(); 
 } 


boolean isPlaying() {
int passedTime = millis() - t1; 
//println(passedTime + " " + lastingTime);
if(passedTime > lastingTime){   
return true;
} else {
return false;
}

}
}*/





/*class Timer {
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
}*/
