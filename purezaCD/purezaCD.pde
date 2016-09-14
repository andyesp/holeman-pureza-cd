float x;
float y;
float rx;
float contX, contY;
int dirX, dirY;
int cubeColor;

void setup() {
  size(1500, 1500, P3D); 
  smooth();
  background(#bdbbc0);
  x = width/2;
  y = height/2;
  rx = 0;
  cubeColor = #a09fa3;
}

void draw() {
  stroke(cubeColor);
  pushMatrix();
  translate(x, y);
  rotateZ(radians(contX));
  rotateY(radians(contY));
  drawCube(contX * 2);
  popMatrix();
  
  contX += dirX;
  contY += dirY;
}

void drawCube(float t) {
  stroke(cubeColor);
  noFill();
  box(t);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      dirX = 2;
    } 
    if (keyCode == DOWN) {
      dirX = -2;
    }
    if (keyCode == LEFT) {
      dirY = -2;
    }
    if (keyCode == RIGHT) {
      dirY = 2;
    }
  }
  
  if(key == 's') {
    save("1500x1500.jpg");
    println("Saved!");
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      dirX = 0;
    } 
    if (keyCode == DOWN) {
      dirX = 0;
    }
    if (keyCode == LEFT) {
      dirY = 0;
    }
    if (keyCode == RIGHT) {
      dirY = 0;
    }
  }
}