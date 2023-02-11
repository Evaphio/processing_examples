// example with points

int [][] coordinates = {   // initialize as a block
  {200, 200},
  {250, 200},
  {270, 220},
  {170, 220},
  {220, 250}
};


void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(50);
  strokeWeight(4);
  stroke(74, 165, 255);
  
  for ( int coordinate [] : coordinates) {
    int xCoordinate = coordinate[0];
    int yCoordinate = coordinate[1];
    for (int index = 0; index < coordinate.length; index++) {
    }
  point(xCoordinate, yCoordinate); // should it be inside the previous loop?
}

  
 
  
}
