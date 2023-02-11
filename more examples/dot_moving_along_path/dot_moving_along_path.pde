int x=0;
int y=0;
int x1 = 0;
int y1 = 0;
int x2 = 0;
int y2 = 0;
int i = 0;
int [] pieces = {202, 24, 295, 44, 355, 77, 383, 121, 408, 165, 403, 212, 377, 243, 375, 280, 381, 326, 407, 363, 337, 382, 239, 362, 208, 342, 219, 298, 131, 287, 96, 245, 80, 190, 82, 117, 109, 60};

void setup() {
size(500, 500);


}


void draw() {
background(0);
int size2 = pieces.length & ~1; 

// Dots
if (i <= size2) {
if (i == size2) {
i = 0;
}
x = int(pieces[i]);
y = int(pieces[i +1]);
     }
strokeWeight(10);
frameRate(10);
stroke(255);
point(x, y);
i += 2;


// Lines
for (int n = 0; n < size2; n +=2) {
/*if (n >= size2 - 2) {
noLoop();
}*/

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
