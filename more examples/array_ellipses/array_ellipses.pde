
int [] xCoordinate = new int [10];
void setup() {
size(500, 500);
smooth();
noStroke();
for (int i = 0; i < xCoordinate.length ; i++){
xCoordinate[i] = 35*i + 90;
}
}

void draw() {
background(50);

for (int coordinate : xCoordinate){
fill(200);
ellipse(coordinate , 250, 30, 30);
fill(0);
ellipse(coordinate , 250, 3, 3);
}
}
void keyPressed() {
if (key== 's') saveFrame(" myProcessing .png");
}
