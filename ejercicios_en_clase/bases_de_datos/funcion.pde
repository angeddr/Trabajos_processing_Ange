//fn(fecha, tmax, tmin, hmax, hmin, vientomax, vientomin, visimed, visimin)
void fn(String fecha, float tmax, float tmin, float hmax, float hmin, float visimed, float visimin, float vientomax, float vientomin) {
  float angulo, conversion;
  /*
  fecha = titulo
   tem = color
   viento = tamaños
   */
  angulo = 45;
  conversion = angulo * (TWO_PI/360);

  rectMode(CORNER);
  fill(255, 132, 0);
  noStroke();
  rect(125, 125, hmin, 125);

  fill(255, 255, 0);
  noStroke();
  rect(375, 250, - hmax, 125);

  noFill();
  stroke(0);
  strokeWeight(2);
  rectMode(CENTER);
  rect(width/2, height/2, 250, 250);

  pushMatrix();
  translate(width/2, height/2);
  rotate(conversion);

  rectMode(CORNER);
  noStroke();
  fill(0);
  rect(-125, 0, tmax, 125);

  fill(0, 255, 255);
  rect(125, -125, - tmin, 125);
  
  rectMode(CENTER);
  noFill();
  stroke(0);
  strokeWeight(2);
  rect(0, 0, 250, 250);
  popMatrix();

  //TEMPERATURA MINIMA

  //TEMPERATURA MAXIMA

  //HUMEDAD MAXIMA

  //HUMEDAD MINIMA

  //VISIBILIDAD MEDIA

  //VISIBILIDAD MINIMA

  //VIENTO MAXIMO

  //VIENTO MINIMO

  //FECHA
  fill(0);
  textSize(30);
  textAlign(CENTER);
  text(fecha, width/2, height/2 + 10);
}