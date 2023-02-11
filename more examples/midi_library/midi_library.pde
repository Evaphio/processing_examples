import themidibus.*; //Import the library

MidiBus myBus; // The MidiBus

int i = 0;
int pitch = 64;

void setup() {
  size(400, 400);
  background(0);

  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.

  // Either you can
  //                   Parent In Out
  //                     |    |  |
  //myBus = new MidiBus(this, 0, 1); // Create a new MidiBus using the device index to select the Midi input and output devices respectively.

  // or you can ...
  //                   Parent         In                   Out
  //                     |            |                     |
  //myBus = new MidiBus(this, "IncomingDeviceName", "OutgoingDeviceName"); // Create a new MidiBus using the device names to select the Midi input and output devices respectively.

  // or for testing you could ...
  //                 Parent  In        Out
  //                   |     |          |
  myBus = new MidiBus(this, -1, 3); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.
}

//,anually disposing what does it mean
void dispose(){
  println("stopping...");
  myBus.dispose();
  println("bye");
}

void draw() {
  
  int channel = 0;
  
  if (i < 4) {
  pitch = pitch+5;
  i++;
  } else {
    i = 0;
    pitch = 64;
  }
  int velocity = 200;

  myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff


  int number = 0;
  int value = 90;

  myBus.sendControllerChange(channel, number, value); // Send a controllerChange
  delay(20);

}



void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
