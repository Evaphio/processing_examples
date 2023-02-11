import processing.sound.*;

SoundFile music;

int [] points_x = new int [10];
float line_x1 = points_x[0];
float line_x2 = points_x[0];

void setup()  {
  size (500,500);
  
  music = new SoundFile(this, "1.aif");
  
  //background (100);
 for (int i = 0; i < points_x.length; i++) {
    points_x[i] = 35*i + 90;
    line_x1 = points_x[0];
    line_x2 = points_x[0];
  }

  
}

void draw() {
  
  background (255, 255, 255); // what is the difference between bgnd in the setup() and in the draw()?
  
   //линия
   strokeWeight(4);
   stroke(74, 165, 255);
   line(line_x1, 200, line_x2, 200);
   line_x2 = line_x2 + 1;
   
   if (line_x2 >= points_x[points_x.length - 1]) {
     line_x2 = line_x1;
   }
  
  // для того, чтобы нарисовать ряд точек, необходимо ввести массив и с помощью цикла нарисовать все точки
  for (int point_x : points_x) {
    strokeWeight(10);
    stroke(63, 72, 204);
    point(point_x, 200);   
    
    if (line_x2 == point_x) {
    music.play(); 
    }
}



    
}
  

  
