int delay = 2000;
Timer timer; 
int i;

void setup() {
  size(400, 200);
  timer = new Timer(100);    // Create a timer that goes off every 1 second
  timer.start();
  fill(#989696);
  stroke(#747373);
  rectMode(CENTER);
  rect(width - 70, 35, 120, 40);
  i = width - 130;
  
}

void draw() {
  if (timer.isFinished()){
      stroke(#00B4A7);
      line(i, 25, i, 55);
      println("Timer", i);
       i++;
      timer.start();
    }
       
  if (i > width - 10){
    i = width - 130; //reset to your starting point
  }else{
   
  }
}
