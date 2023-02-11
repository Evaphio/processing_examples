String [] names = {"Karol Szymanowski", "Moses Pergament", "Nikolai Medtner", "Ilmo Ranta", 
                  "Konstantin Bogino", "Jerome Lowenthal", "Henri Barda", "Liisa Pohjola"};
String textHolder = names[int(random(names.length))];

void setup() {
  fullScreen();
  println(names.length); 
  textSize(30);
  background(0);
}

void draw() {

}

void mousePressed(){
  text(textHolder, mouseX, mouseY);
  textSize(random(20,100));
  fill( random(255),random(255),random(255) );
  textHolder = names[int(random(names.length))];
}
