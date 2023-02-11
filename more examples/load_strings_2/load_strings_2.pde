/**
 * LoadFile 1
 * 
 * Loads a text file that contains two numbers separated by a tab ('\t').
 * A new pair of numbers is loaded each frame and used to draw a point on the screen.
 */

String[] lines;
int index = 0;

void setup() {
  size(200, 200);
  background(0);
  stroke(255);
  frameRate(12);
  lines = loadStrings("positions.txt");
}

void draw() {
  if (index < lines.length) {                                    // lines.length - the number or lines in positions.txt file
    String[] pieces = split(lines[index], '\t');                 // split(lines.[index], "\t"); - splits the next portion of lines array and divides it into 2 parts, pieces[0] and pieces[]
    if (pieces.length == 2) {                                    // is (pieces.length == 2)equivalent to "true"?
      int x = int(pieces[0]) * 2;                                // multiplies the initial integer into 2, it is not exactly the coordinate given in the list, but a coordinate multiplied by 2
      int y = int(pieces[1]) * 2;
      point(x, y);
    }
    // Go to the next line for the next run through draw()
    index = index + 1;                                            // the same as index++    how does draw() work exactly? why is it running like a cycle?
  }
}
