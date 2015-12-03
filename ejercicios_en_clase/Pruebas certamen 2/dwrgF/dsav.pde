 void alw(float x1, float y1, String micumpleanos, String fecha, float tmax, String tmaxima, float tmin, String tminima, float hmax, float hmin, float visimed, String vimed, float visimin, String vimin, float vienmax, float vienmed) {

  float angulo, conversion;
  color cel, azul, rojo, crema;

  cel = color(113, 156, 177);
  azul = color(49, 72, 91);
  rojo = color(200, 84, 67);
  crema = color(236, 220, 210);

  angulo = 0;
  conversion = angulo * (TWO_PI/360);
  
  pushMatrix();
  translate(x1, y1);
  fill(0);
  textSize(10);
  text(vimed, -15, 0);
  popMatrix();

  pushMatrix();
  translate(x1, y1);
  fill(0);
  textSize(10);
  text(vimin, 5, 0);
  popMatrix();

  pushMatrix();
  translate(x1, y1);
  fill(0);
  textSize(10);
  text(tminima, -5, 10);
  popMatrix();

  pushMatrix();
  translate(x1, y1);
  fill(0);
  textSize(10);
  text(tmaxima, -5, -10);
  popMatrix();
}