class Melody {
//int melodyIndex = 0; 
  
  
  
  //constructor
  
  Melody() {

    
}
  

void update(int piecesIndex) {
  
  melodyIndex = piecesIndex;
  
  String [] pieces = numbers[melodyIndex].split(" "); 
  int size2 = pieces.length & ~1;
  
  
  





// MUSIC

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
  
    counter ++;// same as j, should it be replaced?
    timer.start(); 
    j++;
    if (j >= limit) { // --------------------------------------------------если j больше или равно limit, меняется на одно значение f, j становится равно 0, SLOWER CYCLE
      if(i <= size2/2) { // ---- cycle with i  
        if (i > 0) {  // turns of the previous note
        println(int(Math.round((1080 - movingPoint_y.get(i - 1))/9)) + "off");
        myBus.sendNoteOff(channel, int(Math.round((1080 - movingPoint_y.get(i - 1))/9)), velocity);
      }
        if (i == 0) { // turns off the last note of the cycle,  when the cycle is done and i again is equal to 0
        myBus.sendNoteOff(channel, int(Math.round((1080 - movingPoint_y.get(movingPoint_y.size() - 1))/9)), velocity);
      }
      
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
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------end of music cycle

}
}
