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

int size2 = pieces.length & ~1;

// alternative option
/* int size2 = 0;
if (pieces.length % 2 !=0) {
 size2 = pieces.length -1;
} else {
size2 = pieces.length; 
} */ 

for (int i = 0; i < size2; i += 2) {
    x = int(pieces[i]);
    y = int(pieces[i +1]);
      strokeWeight(6);
      stroke(255);
      point(x, y);
     }
     

// try to comment why the length should be exactly such     
if (index >= size2 - 2) {
  noLoop();
}

if (index < size2) {
x1 = int(pieces[index]);
y1 = int(pieces[index +1]);
}

if(index < size2 - 3) {            
  x2 = int(pieces[index + 2]); 
  y2 = int(pieces[index + 3]);; 
  } 
if (index == size2 - 2) {
    x2 = int(pieces[0]);
    y2 = int(pieces[1]);
  }

frameRate(10);
stroke(97, 182, 252);
strokeWeight(1);
line(x1, y1, x2, y2);       
index = index +2;        
        
}


        
