String[] lines;
int x = 0;
int y = 0;
int x1 = 0;
int y1 = 0;
int x2 = 0;
int y2 = 0;
int index = 0;

void setup() {
  size(500, 500);
  background(0);
  stroke(255);
  lines = loadStrings("load.txt");

}

void draw() {
//points
// Why is not possible to use n % 2 == 0?
String [] pieces = lines[0].split(" ");
for (int i = 0; i < pieces.length; i += 2) {
    x = int(pieces[i]);
    y = int(pieces[i +1]);
      strokeWeight(6);
      stroke(255);
      point(x, y);
     }
     

// try to comment why the length should be exactly such     
if (index >= pieces.length - 2) {
  noLoop();
}

if (index < pieces.length) {
x1 = int(pieces[index]);
y1 = int(pieces[index +1]);
}

if(index < pieces.length - 3) {            
  x2 = int(pieces[index + 2]); 
  y2 = int(pieces[index + 3]);; 
  } 
if (index == pieces.length - 2) {
    x2 = int(pieces[0]);
    y2 = int(pieces[1]);
  }

frameRate(10);
stroke(97, 182, 252);
strokeWeight(1);
line(x1, y1, x2, y2);       
index = index +2;        
        
}
