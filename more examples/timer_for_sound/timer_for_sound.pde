import processing.sound.*;

SoundFile music;

int [] points_x = {20, 100, 130, 200, 215, 230, 300, 400, 410, 470, 480};
int x = 0;
int x1 = 0;
int x2 = 0;
int dot_x = 0;
int index = 0;
int time = 0; 

void setup() {
size (500, 500);

music = new SoundFile(this, "1.aif");

}

void draw () {

background (255, 255, 255);

//moving point
if (index <= points_x.length) {
  if (index == points_x.length) {
    index = 0;
  }
  dot_x = points_x[index];
}
strokeWeight(15);
frameRate(2);
stroke(63, 72, 204, 170);
point(dot_x, 200);
index++;



//dots

for (int i = 0; i < points_x.length; i++) {
    x = points_x[i];
    strokeWeight(6);
    stroke(63, 72, 204);
    point(points_x[i], 200);
    if (dot_x == points_x[i]){
      music.play();
    }
}

//lines
for (int n = 0; n < points_x.length -1; n++) {
x1 = points_x[n];
x2 = points_x[n+1];
strokeWeight(1);
stroke(63, 72, 204);
line(x1, 200, x2, 200);
}


// Daniil Ivanov, [25/11/2022 03:52]
//t1 = millis();

//Daniil Ivanov, [25/11/2022 03:53]
//if (t1 - t0 >= duration) { закончить звук }



}
