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
int duration = 50;

//координаты и данные об изображении
//"load3.txt"
String melodiesFile = "coord4.txt";

//изображение
PImage image;
int imageWidth = 1;
int imageHeight = 1;
double scaleFactor = 1;
int imageScaledWidth = 1;
int imageScaledHeight = 1;
int shiftX = 0; //сдвиг изображения в правую часть экрана

// Arrays
String[] instruments;

List<Integer> points = new ArrayList<Integer>();

Melody[] melodies;
int selectedMelody = 0;

//Scales
int[] scaleArray = new int[128]; //таблица интервалов
int[] gypsyMinorScale      = {2,1,3,1,1,3,1};
int[] gypsyMajorScale      = {1,3,1,2,1,3,1};
int[] majorPentatonicScale = {2,2,3,2,3};
int[] minorPentatonicScale = {3,2,2,3,2};
int[] japaneseScale        = {1,4,2,1,4};
int[] bluesHexatonicScale  = {2,3,2,1,1,3};
int[][] scales = {gypsyMinorScale, gypsyMajorScale, majorPentatonicScale, minorPentatonicScale, japaneseScale, bluesHexatonicScale};
int scaleArraySize = 0; //количество ступеней в таблице. От 0 до 127
int stepInPixels = 1;   //количество пикселей в ступени
