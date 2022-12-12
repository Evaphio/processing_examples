class Timer {
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
}
