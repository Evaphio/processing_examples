void setup() {
size(600, 600);
noLoop();
}
void draw() {

background(100);
smooth();
strokeWeight(50);

translate(width/2, height /2);
stroke(210);
line(0,0,250,0);

rotate(PI/4);
stroke(175);
line(0,0,250,30);

rotate(PI/4);

stroke(140);
line(0,0,250,30);

rotate(PI/4);
stroke(105);
line(0,0,250,30);

rotate(PI/4);
stroke(70);
line(0,0,250,30);

rotate(PI/4);
stroke(35);
line(0,0,250,30);

rotate(PI/4);
stroke(0);
line(0,0,250,30);
}
