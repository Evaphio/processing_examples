String[] lines;
int index = 0;
int x = 0;
int y = 0;
int x1 = 0;
int y1 = 0;
int x2 = 0;
int y2 = 0;

void setup() {
  size(500, 500);
  background(0);
  stroke(255);
  lines = loadStrings("load.txt");
}

void draw() {
  
//points

for (int i = 0; i  < lines.length; i++) {      // if the points need to be animated, it is better to use if expression
  String [] pieces = lines[i].split(" ");
  //String [] pieces = split(lines[index], " "); 
  if (pieces.length == 2) {
  x = int(pieces[0]);
  y = int(pieces[1]);
  strokeWeight(6);
  stroke(255);
  point(x, y);
  }
  
  
 // lines
 if(index < lines.length) {
 if(true) {
  x1 = int(lines[index].split(" ")[0]);
  y1 = int(lines[index].split(" ")[1]);
 }
 if(index < lines.length - 1) {
  x2 = int(lines[index + 1].split(" ")[0]);
  y2 = int(lines[index + 1].split(" ")[1]);
  } else {
    x2 = int(lines[0].split(" ")[0]);
    y2 = int(lines[0].split(" ")[1]);
  }
 frameRate(2);
 stroke(97, 182, 252);
 strokeWeight(1);
 line(x1, y1, x2, y2);
 }

  
 }

  index++; 

} 
