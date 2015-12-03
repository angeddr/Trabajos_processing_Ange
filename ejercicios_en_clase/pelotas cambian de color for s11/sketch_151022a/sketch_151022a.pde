color [] colores = new color [3];// DECLARA es una lista que se llama colores que tiene 3 elementos del tipo color

void setup() {
  size(500, 500);
  smooth();
  background(0);
  //inicializar la lista
  colores[0] = color(234, 89, 32);
  colores[1] = color(32, 198, 234);
  colores[2] = color(255, 255, 255);
}

void draw() {
  /*
  //colore.length depende de la cantidad que nombre arriba en este caso 3
   for (int i = 0; i < colores.length; i++) {
   */
  for (int i = 0; i < width; i+= 20) {
    for (int j = 0; j < height; j+= 20) {
      fill(colores[(int)random(3)]);
      noStroke();
      ellipse(i, j, 10, 10);
    }
  }
  noLoop();
}

void keyPressed() {
  if (key == ' ') {
    redraw();
  }
}
/*
  son solo 3 colores, hacer for
 //primer color de la lista
 fill(colores[0]);
 ellipse(20, 50, 20, 20);
 
 //segundo color de la lista
 fill(colores[1]);
 ellipse(50, 50, 20, 20);
 
 //tercer color de la lista
 fill(colores[2]);
 ellipse(80, 50, 20, 20);
 */