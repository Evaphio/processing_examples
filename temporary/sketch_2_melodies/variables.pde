import themidibus.*; //Import the library

import controlP5.*; // Import the interface library
ControlP5 cp5;
Accordion accordion; // create accordion

import java.util.ArrayList;

// The MidiBus
MidiBus myBus;
int pitch = 0;
int channel = 12;
int velocity = 400;
int instrument = 0;
int inst_count = 0;


// variables
int i = 0; // if i needs to start from the second point, i = 1. As the new 0 duration of sound was added (that will be used only once), i = 0
int j = 0;
int counter = 0;
double d;
int music_x1;
int music_x2;
int music_y1;
int music_y2;

double limit = 15; 

int f = 0;
int k = 0;


int x=0;
int y=0;
int x1 = 0;
int y1 = 0;
int x2 = 0;
int y2 = 0;


int e = 0;

// Timer
int times = 20;
Timer timer;

// Arrays
String[] numbers;
String[] instruments;

// Array lists
ArrayList<Integer> durations = new ArrayList<>();
ArrayList<Integer> movingPoint_x = new ArrayList<>();
ArrayList<Integer> movingPoint_y = new ArrayList<>();

Melody m;
Melody n;
MelodyRoute mr;
MelodyRoute nr;


int melodyIndex; 
