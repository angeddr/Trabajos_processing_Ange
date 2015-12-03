int cols, filas;

String datos []; //lista con un elemento
String dia[] []; //lista con dos elementos

String fecha, hmaxi;
float x1, y1, tmax, tmin, hmax, hmin, visimed, visimin, vientomax, vientomin;

float angulo, conversion;

void setup() {
  size(1200, 700);
  cols = 12;
  filas = 31;

  datos = loadStrings("rioweather.csv"); //archivo con los datos
  dia = new String[datos.length] [22]; //largo y ancho
  for (int i = 0; i < datos.length; i++) {
    dia[i] = datos[i].split(","); //elemtos separados por comas
  }
}

void draw() {
  background(123);
  for (int x = 0; x<cols; x++) {
    for (int y = 0; y < filas; y++) {
      float x1 = x * (width/cols) + (width/(cols*2));
      float y1 = y * (height/filas) + (height/(filas*2));
      int nums = 1 + y+x*filas;
      if ((nums >= 0) &&(nums <= 365)) { //tambien se pueden escribir parte de los datos con ||
        //aca van las varaible especificas
        fecha = dia[nums][0];
        tmax = float(dia[nums][1]);
        tmin = float(dia[nums][3]);
        hmax = float(dia[nums][7]);
         hmaxi = dia[nums][7];
        hmin = float(dia[nums][9]);
        visimed = float(dia[nums][14]);
        visimin = float(dia[nums][15]);
        vientomax = float(dia[nums][16]);
        vientomin = float(dia[nums][18]);
        fn(x1, y1, fecha, tmax, tmin, hmax, hmaxi, hmin, visimed, visimin, vientomax, vientomin);
      }
    }
  }
  //aca va la funcion

  //otras variables que ahora estan como comentarios
  //fill(123);
  //ellipse(x1, y1, 5, 5);
  //fill(0);
  //textAlign(CENTER);
  //text("x " + x + " , " + "y " + y, x1, y1); //escribe cordenadas de x, y
  //ext(nums, x1, y1);
}