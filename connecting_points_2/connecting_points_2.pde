import java.util.ArrayList;

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
  textSize(20);
  background(0);
  stroke(255);
  lines = loadStrings("load.txt");

}



void draw() {
  
String [] pieces = lines[0].split(" ");

ArrayList<String> arrayList = new ArrayList<>();


for(String element : pieces) {
  arrayList.add(element);
}


if(arrayList.size() % 2 != 0) {
arrayList.remove(arrayList.size() -1);
}
 
//points
// Why is not possible to use n % 2 == 0?
for (int i = 0; i < arrayList.size(); i += 2) {
    x = int(arrayList.get(i));
    y = int(arrayList.get(i +1));
      strokeWeight(6);
      stroke(255);
      point(x, y);
     }
     

// try to comment why the length should be exactly such  




if (index >= arrayList.size() -2) {
  noLoop();
}


if (index < arrayList.size()) {
x1 = int(arrayList.get(index));
y1 = int(arrayList.get(index +1));
}

if(index < arrayList.size() - 3) {            
  x2 = int(arrayList.get(index + 2)); 
  y2 = int(arrayList.get(index + 3));; 
  } 
if (index == arrayList.size() - 2) {
    x2 = int(arrayList.get(0));
    y2 = int(arrayList.get(1));
  }

frameRate(10);
stroke(97, 182, 252);
strokeWeight(1);
line(x1, y1, x2, y2);       
index = index +2;    

}


        
