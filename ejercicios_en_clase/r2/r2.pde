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

  z = 20;

  cFill = c3;
  cBack = c2;
}

void draw() {
  background(0);

  for (float i = 0; i < width; i += 20) {
    fill(i, 89, 700, 50);
    stroke(255);
    strokeWeight(2);

    ellipse (400, 400, i, i);
  }

  for (float i = 159; i < width - 159; i += 80) {
    for (float j = 159; j < height - 159; j += 80) { 

      stroke(32, 198, 234);
      strokeWeight(10);
      point(i, j);
    }
  }
}

