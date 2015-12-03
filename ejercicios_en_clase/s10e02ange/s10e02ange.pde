//UDD-Expresión Digital
//s10e02ange
//Carga de bases de datos

String datos []; //lista con un elemento
String dia[] []; //lista con dos elementos

color c3 = color(32, 198, 234); //celeste
color c4 = color(234, 89, 32); //naranjo 

int i;

String fecha;
float tem, viento, temm;

void setup() {
  size(500, 500);
  smooth();
  datos = loadStrings("paris2014clima.csv"); //archivo con los datos
  dia = new String[datos.length] [22]; //largo y ancho
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(","); //elemtos separados por comas
  }
  i = 0;
}

void draw() {
  background(255);
  fecha = dia[i][0];
  tem = float(dia[i][1]);
  viento = float(dia[i][7]);
  temm = float(dia[i][3]);
  
  fn(fecha, tem, viento, temm);
  //asignar los valores de la base de datos a ,s argumentos de la funcion
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

