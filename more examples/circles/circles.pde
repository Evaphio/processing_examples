/* 
void setup() {
size(500, 500);
smooth();
background(255);
noLoop();
fill(50, 80);
stroke(100);
strokeWeight(3);
}

void draw() {
ellipse(250,200,100,100); // первые два аргумента - центр, вторые два - ширина и высота
ellipse(250-50,250,100,100);
ellipse(250+50,250,100,100);
ellipse(250,250+50,100,100);

// ellipseMode() меняет способ задавать параметры

} 
*/



/*

int windowWidth = 500;
int windowHeight = 500;
int ellipseSize = 100;

void settings() {  // new Processing 3 feature, for size with variable and smooth
size(windowWidth , windowHeight);
smooth(); // belongs to settings
}

void setup() {
//size(500 , 500); // не может использовать int, надо каждый раз менять
//fullScreen();
//smooth();
background(255);
fill(50, 80);
stroke(100);
strokeWeight(3);
noLoop();
}

void draw() {
ellipse(windowWidth/2, windowHeight/2 - ellipseSize/2,
ellipseSize , ellipseSize);
ellipse(windowWidth/2 - ellipseSize/2, windowHeight/2,
ellipseSize , ellipseSize);
ellipse(windowWidth/2 + ellipseSize/2, windowHeight/2,
ellipseSize , ellipseSize);
ellipse(windowWidth/2, windowHeight/2 + ellipseSize/2,
ellipseSize , ellipseSize);
} 
*/

int windowWidth = 500;
int windowHeight = 500;
int ellipseSize = 100;
int ellipseWidth = 200;
int ellipseHeight = 300;

void settings() {  
size(windowWidth , windowHeight);
smooth();
}

void setup() {
background(255);
fill(50, 80);
stroke(100);
strokeWeight(3);
noLoop();
}

void draw() {
ellipse(windowWidth/2, windowHeight/2 - ellipseSize/2,
ellipseWidth , ellipseHeight);
ellipse(windowWidth/2 - ellipseSize/2, windowHeight/2,
ellipseWidth , ellipseHeight);
ellipse(windowWidth/2 + ellipseSize/2, windowHeight/2,
ellipseWidth , ellipseHeight);
ellipse(windowWidth/2, windowHeight/2 + ellipseSize/2,
ellipseWidth , ellipseHeight);
}
