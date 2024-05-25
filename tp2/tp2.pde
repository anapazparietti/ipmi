/*Ana Paz Parietti
tp2 comisión 1*/

PImage dr, nombre, personajes, director, fondo;
String pantalla;
int segundos;
float tono;//transparencia de nombre.png y dr.jpeg
int tono2, tono3;//transparencia de personajes.jpeg y director.jpeg
int valor2;//transparencia texto cast
float valor;//transparecia texto del protagonista
int x, y, ancho, alto;//botón
int py;//py de nombre.png
int py2;// py de texto "Dr.House"
int py3; //py de texto "Hugh Laurie"
int px; //px de texto "Director"
int px2; //px de texto "David Shore"
PFont fuente, fuente2;

void setup() {
  size(640, 480);
  pantalla ="intro";
  py=py2=py3=height;
  px=px2=0;
  //fuentes
  fuente = loadFont("century.vlw");
  fuente2 = loadFont("centurybold.vlw");
  textFont(fuente);
  textAlign(CENTER,CENTER);
  //BOTÓN
  x=width/2;
  y=height/2;
  ancho = 250;
  alto = 50;
  //Imagenes
  dr = loadImage("dr.jpeg");
  nombre = loadImage("nombre.png");
  personajes = loadImage("personajes.jpeg");
  director =loadImage("dire.jpeg");
 fondo=loadImage( "dr3.jpeg");
}

void draw() {
  background(0, 0, 100);
  imageMode(CENTER);
  
  if (pantalla.equals("intro")) {
    tint(255,tono/2);
    image(dr, width/2, height/2+130);
    tint(255,tono);
    image(nombre, width/2, py, 320, 96);
    tono = map(py,height, height/2,0,255);
    if(py>height/2){
    py--;
    }
  } else if (pantalla.equals("cast")) {
  tint(225,tono2*3);
  image(personajes, x-20, y);
  if(segundos>5){
  valor = map(py2, height,240,0,255);
  fill(255,255,255, valor);
  textFont(fuente);
  text("Dr.House", 300, py2+25);
  valor++;
  if(py2>276){
    py2--;}
  textFont(fuente2);
  textSize(20);
  text("Hugh Laurie", 300, py3);
  if(py3>250){
    py3--;}
  }
  if(py3==250){
  fill(255,255,255, valor2*3);
  valor2++;
  textFont(fuente);
  textSize(25);
  text("Wilson", 377, 47);
  text("Cameron", 192, 69);
  text("Foreman", 73,184);
  text("Chase", 472, 183);
  text("Cuddy", 549, 254);
  textFont(fuente2); 
  textSize(15);
  text("Robert Sean Leonard", 377, 26);
  text("Jesse Spencer", 470, 160);
  text("Jennifer Morrison",198,40);
  text("Omar Epps", 80, 154);
  text("Lisa Edelstein",554, 225);
  }
  } else if (pantalla.equals("director")) {
    if(tono3<200){
    tono3++;}
    tint(255,tono3);
    image(director, x, y);
    textSize(20);
    text("Director", px, 200);
    if(px<150){
      px++;}
    textSize(30);
    textFont(fuente);
    text("David Shore",px2,250);
    if(px2<200){
      px2++;}
  } 
  else if (pantalla.equals("final")) {
    imageMode(CORNER);
    image(fondo,0,0,640,480);
    rectMode(CENTER);
    fill(255);
    rect(x,y,ancho,alto);
    fill(0,0,200);
     text("REINICIAR", x, y);
  }
  
 //TIEMPO 
  if (frameCount%60 == 0) {
    segundos++;}
  if (segundos<5) {
    pantalla = "intro"; }
  else if (segundos>=5 && segundos<= 12) {
    pantalla = "cast";
    tono2++;} 
  else if (segundos > 12 && segundos <18) {
    pantalla = "director";} 
    else {
    pantalla = "final";}
}

void mousePressed() {
  if(mouseX>x-100 && mouseX<x+100 && mouseY>y-50/2 && mouseY<y+50/2 && pantalla.equals("final")){
  pantalla = "intro";
  segundos = 0;
  tono = tono2 = tono3 = 0;
  py= py2 = py3 = height;
  valor=valor2=0;
  px=px2=0;
  }
}
