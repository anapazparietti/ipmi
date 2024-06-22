/*Ana Paz Parietti
 comisión 1
 https://www.youtube.com/watch?v=DEqODMKBOMc
 */

PImage obra;
int cant;
int tam;
float tono;
float distant;
int segundos;
boolean relleno;
PFont fuente;

void setup() {
  size(800, 400);
  obra = loadImage("obra.jpg");
  fuente  = loadFont("candara.vlw");
  noStroke();
  cant = 20;
  tam = (width/2)/cant;
  relleno = true;
  
}

void draw() {
  println(mouseX, mouseY);
  background(255);
  image(obra, 0, 0, width/2, height);
  translate(width/2, 0);
  dibujo(0, 0);

  //Tiempo
  println(segundos);
  if (frameCount%60 == 0) {
    segundos++;
  }
  if (segundos>4) {
    boton();
  }

}

void mousePressed() {
  if (mouseX>width/2 && mouseY>0) {
    tam++;
    relleno=!relleno;
  }
  if (restart(width/2, 0, 100, 50) && segundos>4) {
    tam = (width/2)/cant;
    tono=0;
    relleno = true;
    segundos=0;
  }
}

void keyPressed() {
  if (key=='r' || key=='R') {
    tam = (width/2)/cant;
    segundos=0;
    relleno=true;
    tono=0;
  }
}
