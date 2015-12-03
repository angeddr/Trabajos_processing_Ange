void fn( float x1, float y1, String fecha, float tmax, float tmin, float hmax, String hmaxi, float hmin, float visimed, float visimin, float vientomax, float vientomin) {
  float angulo, conversion;
  conversion = hmax * (TWO_PI/360);


  pushMatrix();
  translate(x1, y1);
  rotate(conversion);
  
  ellipse(0, 0, 2, 2);
  line(0, 0, tmax, 0);
  
  text(hmaxi, tmax, 0);
  
  popMatrix();
  
  
}