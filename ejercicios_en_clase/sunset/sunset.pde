int cols, filas, c;
int margen;

void setup() {
  size(800, 800);
  smooth();
  cols = 3;
  filas = 3;
  margen = 50;
}

void draw() {
  background(240);
  for (int i = 0; i <= cols; i ++) {
    for (int j = 0; j <= filas; j ++) {
      fn(i * (width-margen)/cols, j * (height-margen)/filas, 20, i * j);
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    filas ++;
    cols ++;
  }
}

