color c1, c2, c3, c4;

color cFill, cBack, cStroke;

float z; 

//float r = (int)random(4);
float r = 0;
float vx, vy, x, y;



void setup() {
  size(800, 800);
  background(0);
  z = 20;
}

void draw() {
  vx = 0;
  vy = 0;
  x = vx;
  y = vy;

  fill(c3);
  ellipse(x, y, 100, 100);

  if (r == 0) {
    vx++;
  }
  println(r);
}


/*
ellipse(centro, centro)
 elige entre 0,1,2,3 (int)random(4);
 if es 0 avanza para una direccion x++
 if es 1 avanza para otra direccion 
 if es 2 avanza para otra direccion
 if es 3 avanza para otra direccion
 
 if llega a culquien borde = vuelve al centro,centro
 
 */
