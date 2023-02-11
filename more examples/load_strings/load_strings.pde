String[] s;
int xCoordinate;
int yCoordinate;

void setup() {
size(500, 500);
background(50);
s = loadStrings("load.txt");
}

                                     // s = {""200 200", "250 250", 270 220", 170 220", 220 250"};
void draw() {                        // each new line is interpreted as a new array´s element
for (int i = 0; i < s.length; i++) { // in this case s.length means the number of lines
String[] splits = s[i].split(" ");
xCoordinate =Integer.parseInt(splits[0]);
yCoordinate =Integer.parseInt(splits[1]);
//text(splits[0], 200, 300 + i*20);
stroke(0,162,232);
strokeWeight(4);
point(xCoordinate, yCoordinate);
}
}
