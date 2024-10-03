float circleX, circleY, circleSize;
boolean growing = true;
String status = "Growing"; 
int[] circleColor = {255, 255, 255}; 

void setup() {
  size(600, 600);
  circleX = width/2;
  circleY = height/2;
  circleSize = 50;
}
void draw() {
  background(0);
  fill(circleColor[0], circleColor[1], circleColor[2]);
  ellipse(circleX, circleY, circleSize, circleSize);
  fill(255);
  textSize(20);
  text("The colorful circle is: " + status, 20, 30);
  fill(255);
  textSize(15);
  text("Use input " + "R, G og B to change the color of the circle", 20, 60);
  changeSize();
  changeColor();
}
void changeSize() {
  if (growing) {
    circleSize += 2;
  } else {
    circleSize -= 2;
  }
    if (circleSize > 475) {
    growing = false;
    status = "Shrinking";
  } else if (circleSize < 0) {
    growing = true;
    status = "Growing";
  }
}
void setColor(int r, int g, int b) {
  circleColor[0] = r;
  circleColor[1] = g;
  circleColor[2] = b;
}
void changeColor() {
  if (keyPressed) {
    if (key == 'r') {
      setColor(255, 0, 75); 
    } else if (key == 'g') {
      setColor(0, 255, 75); 
    } else if (key == 'b') {
      setColor(75, 0, 255); 
    }
  }
}
