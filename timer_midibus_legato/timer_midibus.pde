import themidibus.*; //Import the library

//import processing.sound.*;
import java.util.ArrayList;

MidiBus myBus; // The MidiBus
int pitch = 0;
int channel = 12;
int velocity = 400;
int instrument = 0;
int inst_count = 0;

int i = 0; // if i needs to start from the second point, i = 1. As the new 0 duration of sound was added (that will be used only once), i = 0
int j = 0;
int counter = 0;
double d;
int music_x1;
int music_x2;
int music_y1;
int music_y2;

// Timer
int times = 20;
Timer timer;


String[] numbers;

double limit = 15; 

// Array lists
ArrayList<Integer> durations = new ArrayList<>();
ArrayList<Integer> movingPoint_x = new ArrayList<>();
ArrayList<Integer> movingPoint_y = new ArrayList<>();


int f = 0;
int k = 0;


int x=0;
int y=0;
int x1 = 0;
int y1 = 0;
int x2 = 0;
int y2 = 0;


int e = 0;

void setup() {
background(0);
fullScreen(); 
textSize(40);
MidiBus.list(); 
myBus = new MidiBus(this, 0, "Microsoft GS Wavetable Synth"); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.
numbers = loadStrings("load3.txt");
timer = new Timer(times); 

String [] pieces = numbers[0].split(" "); 

int size2 = pieces.length & ~1;


// -----CALCULATING DISTANCES
                                    
for (int n = -2; n < size2; n +=2 ) {

// здесь, вероятно, надо сделать так, чтобы звучала нота, находящаяся на нулевой точке координат. как этого можно достичь?
if (n == -2) {
durations.add(100);
n = 0;                      // это необходимо чтобы сразу привести n к нулю и начать обычный цикл
}
if (n < size2) {
music_x1 = int(pieces[n]);
music_y1 = int(pieces[n +1]);
}
if(n < size2 - 2) {            
  music_x2 = int(pieces[n + 2]); 
  music_y2 = int(pieces[n + 3]);; 
  } 
if (n == size2-2) {
    music_x2 = int(pieces[0]);
    music_y2 = int(pieces[1]);
}
d = Math.sqrt((music_x2 - music_x1) * (music_x2 - music_x1) + (music_y2 - music_y1) * (music_y2 - music_y1));

int d2 = int(Math.round(d)); //надо ли округлять?

durations.add(d2);
}
//-----------------------------


//---------- MOVING POINTS ARRAYS

for (int n = 0; n < size2-1; n+=2) {
x = int(pieces[n]);
y = int(pieces[n+1]);
movingPoint_x.add(x);
movingPoint_y.add(y);
}


}


//------------------------------ CLOSING MIDIBUS PROPERLY----------------------------------------------------------------
void dispose(){
  println("stopping...");
  myBus.dispose();
  println("bye");
}


//--------------------------------------------- DRAW ---------------------------------------------------------------------
public void draw()  {
background(0); 
frameRate(20);


String [] pieces = numbers[0].split(" "); 

int size2 = pieces.length & ~1;


// changing instrument

fill(#0000FF);
noStroke();
rect(100, 80, 250, 60);

fill(255);
text("Instrument: " + inst_count, 110, 120);

if (mousePressed && dist(mouseX, mouseY, 100, 80) < 200) {
  inst_count++;
  if (inst_count > 127) {
  inst_count = 0; 
  }
instrument = inst_count;

  }






// printing durations
if (e<durations.size()){
//println(e + " " + durations.get(e) + " " + durations.size());
e++;
} else {
  e = 0;
}


// Dots
for (int i = 0; i < size2; i += 2) {
    x = int(pieces[i]);
    y = int(pieces[i +1]);
      strokeWeight(6);
      stroke(255);
      point(x, y);
     }

// Lines
for (int n = 0; n < size2; n +=2) {
if (n < size2) {
x1 = int(pieces[n]);
y1 = int(pieces[n +1]);
}

if(n < size2 - 3) {            
  x2 = int(pieces[n + 2]); 
  y2 = int(pieces[n + 3]);; 
  } 
if (n == size2 - 2) {
    x2 = int(pieces[0]);
    y2 = int(pieces[1]);
  }
  
strokeWeight(1);
stroke(255);
line(x1, y1, x2, y2); 

}



// MUSIC
setInstrument( instrument );

pitch = int(Math.round((1080 - movingPoint_y.get(i))/9)); // pitch formula, there are 1080 pixels height in the screen, they change half a tone every 9 pixels

if (keyPressed == true) { 
noLoop();
}


// здесь необходим цикл, в котором f будет приобретать новое значение с пробегом функции. 


limit = durations.get(f)/10;  // !!!! Sometimes the distance seems to be too small, and the program stops, then there should be some "if" statement for cases when the duration is too small
if (limit < 1) {
limit = 1;
}

//------------------------music cycle---------------------------------------------------------------------------
if (j < limit) { //------------------------------------------------------------------------------------------------------------------изменение f должно быть внутри этого цикла, j растет до очередного limit
if (timer.isPlaying()) {  

// ---------------------------------------staccato--------------------------
if (limit <= 5) {
println(int(Math.round((1080 - movingPoint_y.get(i - 1))/9)) + "off");
myBus.sendNoteOff(channel, int(Math.round((1080 - movingPoint_y.get(i - 1))/9)), velocity);
}
if (j == limit-5 && i > 0) {  // turns of the previous note
println(int(Math.round((1080 - movingPoint_y.get(i - 1))/9)) + "off");
myBus.sendNoteOff(channel, int(Math.round((1080 - movingPoint_y.get(i - 1))/9)), velocity);
}
if (i == 0) { // turns off the last note of the cycle,  when the cycle is done and i again is equal to 0
myBus.sendNoteOff(channel, int(Math.round((1080 - movingPoint_y.get(movingPoint_y.size() - 1))/9)), velocity);
}
//---------------------------------------------------------------------------

  
counter ++;// same as j, should it be replaced?
timer.start(); 
j++;
if (j >= limit) { // --------------------------------------------------если j больше или равно limit, меняется на одно значение f, j становится равно 0, SLOWER CYCLE
if(i <= size2/2) { // ---- cycle with i  

/*if (i > 0) {  // turns of the previous note
println(int(Math.round((1080 - movingPoint_y.get(i - 1))/9)) + "off");
myBus.sendNoteOff(channel, int(Math.round((1080 - movingPoint_y.get(i - 1))/9)), velocity);
}
if (i == 0) { // turns off the last note of the cycle,  when the cycle is done and i again is equal to 0
myBus.sendNoteOff(channel, int(Math.round((1080 - movingPoint_y.get(movingPoint_y.size() - 1))/9)), velocity);
}*/


println(pitch + "on");
myBus.sendNoteOn(channel, pitch, velocity);  
strokeWeight(25);
//stroke(255, 255, 255, 170); // white color
stroke(random(0, 255), random(0, 255), random(0, 255), 170); // random color
point(movingPoint_x.get(i), movingPoint_y.get(i)); // появляется новая moving point
i++;
if (i == size2/2) {
i = 0;
}
}
j = 0;                                   // j снова становится равным нулю, можно снова запускать его, пока он не достигнет limit
f++;                                    // на один увеличился f
counter = 0;
if (f == durations.size()) {
 f = 1; // потому что есть еще и нулевая длина
 }
} //-------------------------------------------------------------------------------------------------------------------------------------------------------SlOWER CYCLE
}
}
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
text("Time: " + counter, 100, 200);

//println(f + " " + durations.get(f));


}


void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
