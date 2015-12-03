//UDD-Expresión Digital
//s11e01ange
//Carga de bases de datos

String datos []; //lista con un elemento
String dia[] []; //lista con dos elementos

color c1 = color(234, 89, 32); 
color c2 = color(32, 198, 234); 

int i;

String fecha;
float tmax, tmin, hmax, hmin, visimed, visimin, vientomax, vientomin;

float angulo, conversion;

void setup() {
  size(500, 500);
  smooth();
  angulo = 0;
  datos = loadStrings("rioweather.csv"); //archivo con los datos
  dia = new String[datos.length] [22]; //largo y ancho
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(","); //elemtos separados por comas
  }
  i = 0;
}

void draw() {
  background(255);

  conversion = angulo * (TWO_PI/360);

  fecha = dia[i][0];
  tmax = float(dia[i][1]);
  tmin = float(dia[i][3]);
  hmax = float(dia[i][7]);
  hmin = float(dia[i][9]);
  visimed = float(dia[i][14]);
  visimin = float(dia[i][15]);
  vientomax = float(dia[i][16]);
  vientomin = float(dia[i][18]);


  fn(fecha, tmax, tmin, hmax, hmin, vientomax, vientomin, visimed, visimin);
  //valores de la base de datos a ,s argumentos de la funcion
}


void keyPressed() {
  if (key == ' ') {
    i ++;
    //cambia de dia, no se usa el for loop
  }
  if (key == 'z') {
    i --;
    //cambia de dia, no se usa el for loop
  }
}