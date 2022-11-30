class Timer {
int startime = millis();
int t1 = millis();
int durationTime;

Timer(int givenDurationTime) {
this.durationTime = givenDurationTime;
}
 void start() { 
t1 = millis(); 
 } 


boolean isPlaying() {
int passedTime = millis() - t1;
if(passedTime > durationTime){
return true;
} else {
return false;
}

}
}
