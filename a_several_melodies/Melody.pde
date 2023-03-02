class Melody {
  
  String[] pieces;
  int[] coords;
  int size2;

  ArrayList<Integer> durations = new ArrayList<>();
  ArrayList<Integer> movingPoint_x = new ArrayList<>();
  ArrayList<Integer> movingPoint_y = new ArrayList<>();

  int velocity = 400;

  int f = 0;
  int i = 0;
  int j = 0;
  boolean notePlayed = false;
  int notePlayedPitch = -1;

  //instrument
  int instrument = 0;
  int currentLimit;
  
  //color
  int colorIndex = 0;
  
  //sound on
  boolean active = true;
  

  //constructor
  Melody(String number) {
    //convert the text into coordinates + scale the coordinates 
    pieces = number.split(" "); // non-scaled coordinates in String format
    size2 = pieces.length & ~1;
    coords = new int[size2]; // scaled coordinates in int format
    for (int i = 0; i < size2; i++){
      double coordinatesOriginal = Double.parseDouble(pieces[i]);
      double coordinatesScaled = coordinatesOriginal * scaleFactor;
      coords[i] = (int)coordinatesScaled;
    }

    int music_x1 = 0;
    int music_x2 = 0;
    int music_y1 = 0;
    int music_y2 = 0;

    for (int n = -2; n < size2; n +=2 ) {
      
      if (n == -2) {
        durations.add(100);
        n = 0;                      // this isneeded to bring n to 0 and to start the standard cycle 
      }
      music_x1 = int(coords[n]) + shiftX; //int can be deleted, int(coords[]) -> coords[]; it is here for visibility
      music_y1 = int(coords[n +1]);
      if (n < size2 - 2) {
        music_x2 = int(coords[n + 2]) + shiftX;
        music_y2 = int(coords[n + 3]);
      } else {
        music_x2 = int(coords[0]) + shiftX;
        music_y2 = int(coords[1]);
      }
  
      double d = Math.sqrt((music_x2 - music_x1) * (music_x2 - music_x1) + (music_y2 - music_y1) * (music_y2 - music_y1));

      int d2 = int(Math.round(d)); // does it need to be rounded? 

      durations.add(d2);
    }

    // moving point array list
    for (int n = 0; n < size2; n+=2) {
      int x = int(coords[n]) + shiftX;
      int y = int(coords[n+1]);
      movingPoint_x.add(x);
      movingPoint_y.add(y);
    }
  }
  
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
  
  int pitch() {
    int step = Math.round(movingPoint_y.get(i) / stepInPixels); //ступень от 0 до scaleArraySize (макс. 127). 0 вверху экрана, 127 внизу.
    int stepInverted = (scaleArraySize - step); //переворачиваем ступень, чтобы 0 было внизу экрана. Тогда внизу будут низкие ноты
    int pitch = scaleArray[stepInverted]; //конвертируем ступень в pitch по таблице интервалов
    return pitch;
  }
  
  void update () {
    
    //int step = Math.round(movingPoint_y.get(i) / stepInPixels); //ступень от 0 до scaleArraySize (макс. 127). 0 вверху экрана, 127 внизу.
    //int stepInverted = (scaleArraySize - step); //переворачиваем ступень, чтобы 0 было внизу экрана. Тогда внизу будут низкие ноты
    //int pitch = scaleArray[stepInverted]; //конвертируем ступень в pitch по таблице интервалов

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
       
  //  //Включение ноты.
  //  if (notePlayed == false && active == true && timer.isPlaying()){
  //    myBus.sendNoteOn(channel, pitch, velocity);
  //    strokeWeight(25);
  //    stroke(random(0, 255), random(0, 255), random(0, 255), 170); // random color
  //    point(movingPoint_x.get(i), movingPoint_y.get(i)); // появляется новая moving point в начале нового отрезка
  //    notePlayed = true;
  //    notePlayedPitch = pitch;
  //    //println("Note " + pitch + " sent");
  //   }
  //   //Отключение ранее сыгранной ноты, записанной в notPlayedPitch. 
  //   //Если нет сыгранной ноты или она уже отключена, то notPlayedPitch == -1
  //   double durationOfNote = (double)duration * (double)limit * 0.01;
  //   //if (j >= (int)durationOfNote && notePlayedPitch != -1 && timer.isPlaying()){
  //   if (j >= limit && notePlayedPitch != -1 && timer.isPlaying()){
  //     myBus.sendNoteOff(channel, notePlayedPitch, velocity);
  //     notePlayedPitch = -1;
  //     //println("Note " + pitch + " turned off");
  //   }
 
  //  //---------------music cycle--------------------
  //  if (timer.isPlaying()){
  //    counter++;// same as j, should it be replaced?
  //    timer.start();
  //    j++;
      
  //    if (j >= limit) {
  //      i++;
  //      if (i == size2/2) {
  //        i = 0;
  //      }
  //      notePlayed = false;
  //      j = 0; // j снова становится равным нулю, можно снова запускать его, пока он не достигнет limit
  //      f++;                                    
  //      if (f == durations.size()) {
  //        f = 1; // потому что есть еще и нулевая длина
  //      }
  //      counter = 0;
  //    }
  //  }
  //}
  
  
  
  //------------------------music cycle---------------------------------------------------------------------------
  if (j < limit) { //------------------------------------------------------------------------------------------------------------------изменение f должно быть внутри этого цикла, j растет до очередного limit
    if (timer.isPlaying()) {
      counter ++;// same as j, should it be replaced?
      timer.start(); 
      j++;
      double durationOfNote = (double)duration * (double)limit * 0.01;
      if (j >= durationOfNote && notePlayedPitch != -1){
        myBus.sendNoteOff(channel, notePlayedPitch, velocity);
      }
      if (j >= limit) { // --------------------------------------------------если j больше или равно limit, меняется на одно значение f, j становится равно 0, SLOWER CYCLE
        if(i <= size2/2) { // ---- cycle with i  
          
          i++;
          if (i == size2/2) {
            i = 0;
          }
        
        
          if (notePlayedPitch != -1) {  // turns of the previous note
            myBus.sendNoteOff(channel, notePlayedPitch, velocity);
          }
          
          
         
          if (active == true){
            println(pitch() + "on");
            myBus.sendNoteOn(channel, pitch(), velocity);
            notePlayedPitch = pitch();
          }
          strokeWeight(25);
          //stroke(255, 255, 255, 170); // white color
          stroke(random(0, 255), random(0, 255), random(0, 255), 170); // random color
          
          
          point(movingPoint_x.get(i), movingPoint_y.get(i)); // появляется новая moving point
          
          
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
      x = int(coords[i]) + shiftX;
      y = int(coords[i +1]);
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
      x1 = int(coords[n]) + shiftX;
      y1 = int(coords[n +1]);
      if(n < size2 - 2) {            
        x2 = int(coords[n + 2]) + shiftX; 
        y2 = int(coords[n + 3]); 
      } else {
        x2 = int(coords[0]) + shiftX;
        y2 = int(coords[1]);
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
