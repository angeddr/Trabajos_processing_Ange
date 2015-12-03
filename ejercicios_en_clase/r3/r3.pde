color c1, c2, c3, c4;

color cFill, cBack, cStroke;

float z; 


void setup() {
  size(800, 800);

  strokeWeight(10);
  colorMode(RGB, 800);

  c1 = color(0); //blanco
  c2 = color(255); //negro
  c3 = color(32, 198, 234); //celeste
  c4 = color(234, 89, 32); //naranjo
  
  mouseX = width/2;

  z = 20;

  cFill = c3;
  cBack = c2;
}

void draw() {
  background(255);
  
    for (float i = 0; i < height/2; i += 10) {
      noFill();
      stroke(32, 198, 234 - i);
      strokeWeight(10);
      line(i + mouseX, 0 , i + mouseX, height);
    }
    for (float i = height/2; i < height; i += 10) {
      noFill();
      stroke(234 - i , 89, 32);
      strokeWeight(10);
      line(i- mouseX, 0, i- mouseX, height);
    }
    for (float i = height/2; i < height; i += 10) {
      noFill();
      stroke(234 - i , 89, 32);
      strokeWeight(10);
      line(0, i- mouseX, height, i- mouseX);
    }
      for (float i = 0; i < height/2; i += 10) {
      noFill();
      stroke(32, 198, 234 - i);
      strokeWeight(10);
      line(0, i+ mouseX, height, i+ mouseX);
      
      
    }
}


