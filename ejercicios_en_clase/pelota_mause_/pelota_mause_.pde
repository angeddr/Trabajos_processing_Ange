float penX, penY = 0;
color minima = color(0, 0, 255);
color maxima = color(255, 0, 0);

void setup() {
  size (400, 400);
  fill (255, 255, 255);
}

void draw() {
  background(253);
  float im = map(penX, 0, width, 0, 1);
  color oscilacion = lerpColor(minima, maxima, im);
  fill(oscilacion);
  ellipse(penX, penY, 20, 20);
  
  penX = lerp(penX, mouseX, 0.02);
  penY = lerp(penY, mouseY, 0.02);
}