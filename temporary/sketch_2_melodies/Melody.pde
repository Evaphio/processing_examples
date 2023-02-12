class Melody {
  
  private String[] pieces;
  private int size2;

  private ArrayList<Integer> durations = new ArrayList<>();
  private ArrayList<Integer> movingPoint_x = new ArrayList<>();
  private ArrayList<Integer> movingPoint_y = new ArrayList<>();

  private int channel = 12;
  private int velocity = 400;

  private int segment = 0;
  private int iter;

  //constructor
  Melody(String number) {
    pieces = number.split(" "); 
    size2 = pieces.length & ~1;

    int music_x1;
    int music_x2;
    int music_y1;
    int music_y2;

    for (int n = 0; n < size2; n +=2 ) {
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

    for (int n = 0; n < size2; n+=2) {
      int x = int(pieces[n]);
      int y = int(pieces[n+1]);
      movingPoint_x.add(x);
      movingPoint_y.add(y);
    }
  }
  

int update() {
  
// MUSIC

int pitch = int(Math.round((1080 - movingPoint_y.get(segment))/9)); // pitch formula, there are 1080 pixels height in the screen, they change half a tone every 9 pixels

if (keyPressed == true) { 
  noLoop();
}


// здесь необходим цикл, в котором f будет приобретать новое значение с пробегом функции. 

double limit = durations.get(segment)/10;  // !!!! Sometimes the distance seems to be too small, and the program stops, then there should be some "if" statement for cases when the duration is too small

if (limit < 1) {
  limit = 1;
}
println(segment + "," + limit + "," + iter);

//------------------------music cycle---------------------------------------------------------------------------
if (iter < limit) { //------------------------------------------------------------------------------------------------------------------изменение f должно быть внутри этого цикла, j растет до очередного limit
  
  if (iter == 0) {
    println(pitch + "on");
    myBus.sendNoteOn(channel, pitch, velocity);  

    strokeWeight(25);
    stroke(random(0, 255), random(0, 255), random(0, 255), 170); // random color
    point(movingPoint_x.get(segment), movingPoint_y.get(segment)); // появляется новая moving point
  }
  iter++;
} else {
  // --------------------------------------------------если iter больше или равно limit, меняется на одно значение segment, iter становится равно 0, SLOWER CYCLE
      int prevPitch;
      if (segment > 0) {
        // turns of the previous note
        prevPitch = int(Math.round((1080 - movingPoint_y.get(segment - 1))/9));
      } else {
        // turns off the last note of the cycle,  when the cycle is done and i again is equal to 0
        prevPitch = int(Math.round((1080 - movingPoint_y.get(movingPoint_y.size() - 1))/9));
      }
      println(prevPitch + "off");
      myBus.sendNoteOff(channel, prevPitch, velocity);
      
    iter = 0;                                   // j снова становится равным нулю, можно снова запускать его, пока он не достигнет limit
    segment++;
    if (segment == durations.size()) {
      segment = 0;
    }
}
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------end of music cycle
  return iter;
}

  void showRoute() {

    int x;
    int y;

    // Dots
    for (int i = 0; i < size2; i += 2) {
      x = int(pieces[i]);
      y = int(pieces[i +1]);
      strokeWeight(6);
      stroke(255);
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
      stroke(255);
      line(x1, y1, x2, y2); 
    }
  }

}
