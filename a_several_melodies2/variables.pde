import themidibus.*; //Import the library

import controlP5.*; // Import the interface library
ControlP5 cp5;
Accordion accordion; // create accordion

import java.util.ArrayList;
import java.util.List;

// The MidiBus
MidiBus myBus;
int instrument = 0;
int inst_count = 0;
int channel = 12; //should it go inside instrument?



long speed_factor = 4;
int counter = 0;

String melodiesFile = "load3.txt";

// Arrays
String[] instruments;

List<Integer> points = new ArrayList<Integer>();

Melody[] melodies;
