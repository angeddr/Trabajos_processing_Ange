//UDD - Expresión Digital II
//s08e01ange
//dfs

color c1, c2, c3, c4;

color cFill, cBack, cStroke;

float z; 

void setup() {
  size(800, 800);

  c1 = color(0); //blanco
  c2 = color(255); //negro
  c3 = color(32, 198, 234); //celeste
  c4 = color(234, 89, 32); //naranjo

  z = 20;

  cFill = c3;
  cBack = c2;
}

void draw() {
  background(cBack);

  
    for (float i = 20; i < height - 20; i += z) {
      noFill();
      stroke(c3);
      strokeWeight(5);
      line(i, 20, i + 20, height - 20);
    }
  
  for (float i = 20; i < height - 20; i += z) {
      noFill();
      stroke(c4);
      strokeWeight(5);
      line(i + 20, 20, i, height - 20);
  }
}

