//varaibles globales
color a;

boolean n;

//setup
void setup() {
  a = color(234, 89, 32);
  size(800, 800);
  n = true;
}

//draw
void draw() {
  background(255);
  noStroke();
  if (n == true) {

    fill(a);
    ellipse(400, 400, 100, 100);
  }
  if (n == false) {
    for (int i = 0; i < width; i +=5) {
      fill(255, 200, 20);
      rect(i, height/2, random(10), random(50));
    }
  }
}

  //teclado
  void keyPressed() {
    if (key == ' ') {
      n = !n;
    }
  }

  /*
mouseX
   mouseY
   pmouseX
   pmouseY
   */
