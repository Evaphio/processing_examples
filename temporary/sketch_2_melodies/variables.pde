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

long speed_factor = 3;
String melodiesFile = "load7.txt";

// Arrays
String[] instruments;

List<Integer> points = new ArrayList<Integer>();

Melody[] melodies;
