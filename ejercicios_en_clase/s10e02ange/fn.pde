//fn(fecha, temmax, viento)
void fn(String fecha, float tem, float viento, float temm){
  /*
  fecha = titulo
  tem = color
  viento = tamaños
  */
  
  //titulo
  textSize(80);
  textAlign(CENTER);
  text(fecha, width/2, height/2 + temm);
  
  //color
  fill(255-tem, 255-tem, 255-tem, 255-tem);//valores rgb
  
  //viento
  ellipse(width/2, height/2, viento, viento);
}

