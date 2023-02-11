void setup() {
  background(0);
  fullScreen(); 
  

  MidiBus.list(); // lists synthesizers
  myBus = new MidiBus(this, 0, "Microsoft GS Wavetable Synth"); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.
  
  instruments = loadStrings("instruments.txt");
    
  numbers = loadStrings("load3.txt");
  String [] pieces = numbers[melodyIndex].split(" "); 

  int size2 = pieces.length & ~1;

  timer = new Timer(times); 
  
  


cp5 = new ControlP5(this); // needs to always be added

//Melody

m = new Melody();
n = new Melody();
mr = new MelodyRoute();
nr = new MelodyRoute();




// -----CALCULATING DISTANCES
                                    
for (int n = - 2; n < size2; n +=2 ) {
  
  //the first note  
  if (n == - 2) {               
    durations.add(100);
    n = 0;
  }
  // rest of the notes
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

int d2 = int(Math.round(d)); // does it need to be rounded? 

durations.add(d2);
}
//-----------------------------


//---------- MOVING POINTS ARRAY LIST

for (int n = 0; n < size2-1; n+=2) {
  x = int(pieces[n]);
  y = int(pieces[n+1]);
  movingPoint_x.add(x);
  movingPoint_y.add(y);
}


}
