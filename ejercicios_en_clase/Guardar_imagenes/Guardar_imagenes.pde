import processing.pdf.*;//paraPDF

//GUARDAR IMAGENES

//save(hola.jpeg);
//jpg, jpeg, png y pdf 

void setup() {
  size(400, 400); 
  beginRecord(PDF, "metodo04-PDF-unFrame.pdf");//PDF
  background(255, 0, 255);
  noStroke();
}



void draw() {
  ellipse(width/2, height/2, 60, 60);
  //save("metodo01-save.png");//guarda imagen en png
  //saveFrame("metodo02-saveFrame###.png");//guarda todos los frames #
  //saveFrame("frame/metodo03-saveFrame###.png");//guarda en carpeta para video
  endRecord();//para PDF
}