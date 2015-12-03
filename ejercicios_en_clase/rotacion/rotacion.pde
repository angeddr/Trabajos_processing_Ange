float angulo, conversion;

void setup(){
 size(600, 600);
 smooth();
 angulo = 0;
}

void draw(){
  angulo++;
  conversion = angulo * (TWO_PI/360);
  background(123);
  
  pushMatrix();
  translate(width/2-100, height/2);
  rotate(-conversion);
  stroke(255, 0, 255);
  line(0, 0, 100, 0);
  popMatrix();
  
  pushMatrix();
  translate(width/2 + 100, height/2);
  rotate(conversion);
  stroke(0, 255, 255);
  line(0, 0, 100, 0);
  popMatrix();
}