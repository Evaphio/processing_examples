class Melody {
  
  String[] pieces;
  int size2;

  ArrayList<Integer> durations = new ArrayList<>();
  ArrayList<Integer> movingPoint_x = new ArrayList<>();
  ArrayList<Integer> movingPoint_y = new ArrayList<>();

  //private int channel = 12;
  int velocity = 400;

  //int segment = 0; - variable should be renamed so that it would be clear what they mean
  int f = 0;
  //int counter = 0; it is now global
  int i = 0;
  int j = 0;

  //private Timer timer = new Timer(); 


  //instrument
  int instrument = 0;
  int currentLimit;
  

  //constructor
  Melody(String number) {
    pieces = number.split(" "); 
    size2 = pieces.length & ~1;

    int music_x1 = 0;
    int music_x2 = 0;
    int music_y1 = 0;
    int music_y2 = 0;

    for (int n = -2; n < size2; n +=2 ) {
      
      if (n == -2) {
        durations.add(100);
        n = 0;                      // это необходимо чтобы сразу привести n к нулю и начать обычный цикл
      }
      music_x1 = int(pieces[n]);
      music_y1 = int(pieces[n +1]);
      if (n < size2 - 2) {
        music_x2 = int(pieces[n + 2]);
        music_y2 = int(pieces[n + 3]);
      } else {
        music_x2 = int(pieces[0]);
        music_y2 = int(pieces[1]);
      }
  
      double d = Math.sqrt((music_x2 - music_x1) * (music_x2 - music_x1) + (music_y2 - music_y1) * (music_y2 - music_y1));

      int d2 = int(Math.round(d)); // does it need to be rounded? 

      durations.add(d2);
    }

    // moving point array list
    for (int n = 0; n < size2; n+=2) {
      int x = int(pieces[n]);
      int y = int(pieces[n+1]);
      movingPoint_x.add(x);
      movingPoint_y.add(y);
    }
  }
  
  // class Timer
  
  class Timer {
    int t1 = 0;  // поставили курицу в духовку   если через запятую, то почти ничего -запятую
    int lastingTime;
    
    Timer(int givenLastingTime) {
    this.lastingTime = givenLastingTime;
    }
    void start() { 
    t1 = millis(); 
     } 
    
    
    boolean isPlaying() {
    int passedTime = millis() - t1; 
    //println(passedTime + " " + lastingTime);
    if(passedTime > lastingTime){   
    return true;
    } else {
    return false;
    }

    } 
  }
  
  
  // Timer variables
  int times = 20;
  Timer timer = new Timer(times);
  
  void update () {
  
  int pitch = int(Math.round((1080 - movingPoint_y.get(i))/9)); // pitch formula, there are 1080 pixels height in the screen, they change half a tone every 9 pixels

  if (keyPressed == true) { 
    noLoop();
  }


// здесь необходим цикл, в котором f будет приобретать новое значение с пробегом функции. 


  int limit = durations.get(f)/10;  // !!!! Sometimes the distance seems to be too small, and the program stops, then there should be some "if" statement for cases when the duration is too small
  if (limit < 1) {
  limit = 1;
  }
  currentLimit = limit;

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
          //point(movingPoint_x.get(i), movingPoint_y.get(i)); // появляется новая moving point
          i++;
          if (i == size2/2) {
            i = 0;
          }
          point(movingPoint_x.get(i), movingPoint_y.get(i)); // появляется новая moving point в начале нового отрезка
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
  }
  
  //void movingDot(){
  //   strokeWeight(25);
  //   stroke(instrument, 64, 128, 170);
  //   int nextIndex;
  //   if (i == size2/2 - 1) {
  //     nextIndex = 0;
  //   } else {
  //     nextIndex = i + 1;
  //   }
  //   double normalizedDistance = (double)j / (double)currentLimit;
  //   int dotX = (int)(movingPoint_x.get(i) + (movingPoint_x.get(nextIndex) - movingPoint_x.get(i)) * normalizedDistance); //linear interpolation
  //   int dotY = (int)(movingPoint_y.get(i) + (movingPoint_y.get(nextIndex) - movingPoint_y.get(i)) * normalizedDistance);
  //   point(dotX, dotY);
  //}

  void showRoute() {

    int x;
    int y;
    colorMode(HSB, 127); //Hue, saturation, brightness. Между 0 и 127
    int melodyColor = color(instrument,64,128);
    
    //movingDot();
    
    // Dots
    for (int i = 0; i < size2; i += 2) {
      x = int(pieces[i]);
      y = int(pieces[i +1]);
      strokeWeight(6);
      stroke(melodyColor);
      point(x, y);
    }

    int x1;
    int y1;
    int x2;
    int y2;

    // Lines
    for (int n = 0; n < size2; n +=2) {
      x1 = int(pieces[n]);
      y1 = int(pieces[n +1]);
      if(n < size2 - 2) {            
        x2 = int(pieces[n + 2]); 
        y2 = int(pieces[n + 3]);; 
      } else {
        x2 = int(pieces[0]);
        y2 = int(pieces[1]);
      }

      strokeWeight(1);
      stroke(melodyColor);
      line(x1, y1, x2, y2); 
    }
    colorMode(RGB, 255, 255, 255); //Сброс colorMode на режим по умолчанию
  }
  
  void setMelodyInstrument(){
    setInstrument(instrument);
  }
  


}
