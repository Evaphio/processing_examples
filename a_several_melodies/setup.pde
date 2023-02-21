
void setup() {
  background(0);
  fullScreen();
  frameRate(50);
  

  MidiBus.list(); // lists synthesizers
  //Windows version: Microsoft GS Wavetable Synth
  //Mac version: IAC Channel
  myBus = new MidiBus(this, 0, "Microsoft GS Wavetable Synth"); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.
  
  instruments = loadStrings("instruments.txt");
  
  image = loadImage("Image.jpeg");
    
  String[] numbers = loadStrings(melodiesFile);
  melodies = new Melody[numbers.length];
  for (int i = 0; i < numbers.length; i++) {
    melodies[i] = new Melody(numbers[i]);
  }


  //calculate default scale array
  calculateScaleArray(gypsyMinorScale);
  
  cp5 = new ControlP5(this); // needs to always be added
  gui();
  
  
  

  

}
