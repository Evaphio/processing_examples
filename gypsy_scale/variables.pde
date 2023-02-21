import themidibus.*; //Import the library

import java.util.ArrayList;

MidiBus myBus; // The MidiBus
int pitch;
int channel = 0;
int velocity = 200;
int y = 0;
int x = 0;
int k = 0;

ArrayList<Integer> ys = new ArrayList<>();
ArrayList<Integer> gypsyMinor = new ArrayList<>();

//scale
int index = 0; //counter when playing elements of scale array lists


//Scales
int[] scaleArray = new int[128]; //таблица интервалов
int[] gypsyMinorScale      = {2,1,3,1,1,3,1};
int[] gypsyMajorScale      = {1,3,1,2,1,3,1};
int[] majorPentatonicScale = {2,2,3,2,3};
int[] minorPentatonicScale = {3,2,2,3,2};
int[] japaneseScale        = {1,4,2,1,4};
int[][] scales = {gypsyMinorScale, gypsyMajorScale, majorPentatonicScale, minorPentatonicScale, japaneseScale};
int scaleArraySize = 0; //количество ступеней в таблице. От 0 до 127
int stepInPixels = 1;   //количество пикселей в ступени
