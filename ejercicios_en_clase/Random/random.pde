float posx, posy, velx, vely, accx, accy;
color m, c, y;
float r;

void setup(){
size (400, 400);

posx = 0;
posy = 0;
velx = 1;
vely = 1;

r = random(50, 1000);

//inicializacion de colores
m = color(255, 0, 255);
c = color(0, 255, 255);
y = color(255, 255, 0);
}

void draw() {
r = random(10, 13);
background(m);
noStroke();
fill(r, g, b);
ellipse(posx, posy, 50, 50);


}

