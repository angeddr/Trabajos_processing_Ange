//UDD-Expresión Digital
//s10e01ange
//Carga de bases de datos

String datos []; //lista con un elemento
String dia[] []; //lista con dos elementos

color c3 = color(32, 198, 234); //celeste
color c4 = color(234, 89, 32); //naranjo 

int i;

void setup() {
  size(500, 500);
  smooth();
  datos = loadStrings("paris2014clima.csv"); //archivo con los datos
  dia = new String[datos.length] [22]; //largo y ancho
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(","); //elemtos separados por comas
    //println(datos[i]); //imprime los datos
    //println(dia[281] [0]); //se pueden acceder a todas las bases de datos
  }
  i = 0;
}

void draw() {
  background(255);
  //fill(c3);
  //textSize(20);
  //text(s, x, y);
  //text(dia[1] [1], width/2, height/2);
  /*float tam = float(dia[1][1]);
   fill(c4);
   noStroke();
   ellipse(width/2, height/2, tam, tam);*/
  //for (int i = 0; i < dia.length; i++) { //sin key pressed

  //fecha
  fill(c3);
  textSize(50);
  textAlign(CENTER);
  text(dia[i][0], width/2, height/2);

  //ellipse
  float tam = float(dia[i][1]);
  float mtam = map(tam, 0, 40, 0, width);//la varible, el rango minimo, rango donde quiero que vallan los valores
  noFill();
  stroke(c4);
  ellipse(width/2, height/2, mtam, mtam);
}


void keyPressed() {
  if (key == ' ') {
    i ++;
    //cambia de dia, no se usa el for loop
  }
  if (key == 'a') {
    i --;
    //cambia de dia, no se usa el for loop
  }
}

