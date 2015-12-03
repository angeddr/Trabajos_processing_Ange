int x;
float y;
boolean sofia;

//nuevo
PFont f; //fuente
String s; //texto "cdls"

void setup() {
  size(500, 500);
  
  f = createFont("AvenirNextCondensed-Heavy", 30);
  //para ver las fuentes que hay println(PFont.list());
  s = "Soy la mas linda";
}

void draw() {
  textFont(f);
  textSize(50);
  fill(255, 0, 255);
  // text(string, x, y);
  text(s, 100, 250);
  line(0, 250, width, 250);
  save("texto.jpg");
}
