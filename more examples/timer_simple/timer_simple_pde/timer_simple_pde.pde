int counter = 0;
int startime = millis();
int t1 = millis();
int t2 = millis();
int totaltime = 20;

void setup() {
size(400, 400);
textSize(40);

}

void draw() {
background(0);


if ((t1 - t2) < totaltime) {
t1++;
}
if ((t1-t2) == totaltime) {
counter = counter + 1;
t1 = startime;
}
if (counter == 15) {
background(#FF0000);
noLoop();
}

text("Time: " + counter, 100, 200);

}
