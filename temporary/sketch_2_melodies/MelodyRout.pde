class MelodyRoute {
  
    //properties


  MelodyRoute() {
    
  }

  void showRoute(int piecesIndex) {
      melodyIndex = piecesIndex;
      
      String [] pieces = numbers[melodyIndex].split(" "); 
      
      int size2 = pieces.length & ~1;
    // Dots
  for (int i = 0; i < size2; i += 2) {
      x = int(pieces[i]);
      y = int(pieces[i +1]);
        strokeWeight(6);
        stroke(255);
        point(x, y);
       }
  
  // Lines
  for (int n = 0; n < size2; n +=2) {
    if (n < size2) {
      x1 = int(pieces[n]);
      y1 = int(pieces[n +1]);
  }
    if(n < size2 - 3) {            
    x2 = int(pieces[n + 2]); 
    y2 = int(pieces[n + 3]);; 
    } 
    if (n == size2 - 2) {
      x2 = int(pieces[0]);
      y2 = int(pieces[1]);
    }
    
  strokeWeight(1);
  stroke(255);
  line(x1, y1, x2, y2); 
}
  }
  
  
}
