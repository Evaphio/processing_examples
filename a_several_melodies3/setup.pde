
void setup() {
  background(0);
  fullScreen(); 
  

  MidiBus.list(); // lists synthesizers
  myBus = new MidiBus(this, 0, "Microsoft GS Wavetable Synth"); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.
  
  instruments = loadStrings("instruments.txt");
    
  String[] numbers = loadStrings(melodiesFile);
  melodies = new Melody[numbers.length];
  for (int i = 0; i < numbers.length; i++) {
    melodies[i] = new Melody(numbers[i]);
  }


  
  cp5 = new ControlP5(this); // needs to always be added
  gui();
  

  

  

}
