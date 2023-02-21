class Melody {
  
  String[] pieces;
  int size2;

  ArrayList<Integer> durations = new ArrayList<>();
  ArrayList<Integer> movingPoint_x = new ArrayList<>();
  ArrayList<Integer> movingPoint_y = new ArrayList<>();

  int velocity = 400;

  int f = 0;
  int i = 0;
  int j = 0;
  boolean notePlayed = false;

  //instrument
  int instrument = 0;
  int currentLimit;
  
  //color
  int colorIndex = 0;
  
  //sound on
  boolean active = true;
  

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
  
  void update () {
    
    int step = Math.round(movingPoint_y.get(i) / stepInPixels); //ступень от 0 до scaleArraySize (макс. 127). 0 вверху экрана, 127 внизу.
    int stepInverted = (scaleArraySize - step); //переворачиваем ступень, чтобы 0 было внизу экрана. Тогда внизу будут низкие ноты
    int pitch = scaleArray[stepInverted]; //конвертируем ступень в pitch по таблице интервалов

    if (keyPressed == true) { 
      noLoop();
    }
    
    // здесь необходим цикл, в котором f будет приобретать новое значение с пробегом функции. 
    int limit = 1;
    if (f < durations.size() - 1){
      limit = durations.get(f + 1)/10;
    } else {
      limit = durations.get(1)/10;
    }
    // !!!! Sometimes the distance seems to be too small, and the program stops, then there should be some "if" statement for cases when the duration is too small
    if (limit < 1) {
      limit = 1;
    }
    currentLimit = limit;
  
    //Включение ноты.
    if (notePlayed == false && active == true){
      myBus.sendNoteOn(channel, pitch, velocity);
      strokeWeight(25);
      stroke(random(0, 255), random(0, 255), random(0, 255), 170); // random color
      point(movingPoint_x.get(i), movingPoint_y.get(i)); // появляется новая moving point в начале нового отрезка
      notePlayed = true; 
    }
    //Отключение играющей ноты.
    if (j >= (limit * ((double) duration / 100.0))){
      myBus.sendNoteOff(channel, pitch, velocity);
    }
 
    //---------------music cycle--------------------
    counter++;// same as j, should it be replaced?
    j++;
    if (j >= limit) {
      i++;
      if (i == size2/2) {
        i = 0;
      }
      notePlayed = false;
      j = 0; // j снова становится равным нулю, можно снова запускать его, пока он не достигнет limit
      f++;                                    
      if (f == durations.size()) {
        f = 1; // потому что есть еще и нулевая длина
      }
      counter = 0;
    } 
  }
  
  void movingDot(){
     strokeWeight(10);
     stroke(colorIndex * 16, 64, 128, 170);
     int nextIndex;
     if (i == size2/2 - 1) {
       nextIndex = 0;
     } else {
       nextIndex = i + 1;
     }
     double normalizedDistance = (double)j / (double)currentLimit;
     int dotX = (int)(movingPoint_x.get(i) + (movingPoint_x.get(nextIndex) - movingPoint_x.get(i)) * normalizedDistance); //линейная интерполяция
     int dotY = (int)(movingPoint_y.get(i) + (movingPoint_y.get(nextIndex) - movingPoint_y.get(i)) * normalizedDistance);
     point(dotX, dotY);
  }

  void showRoute() {

    int x;
    int y;
    colorMode(HSB, 127); //Hue, saturation, brightness. Между 0 и 127
    int melodyColor = color(colorIndex * 16,64,128);
    
    if (active) {
      movingDot();
    }
    
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
