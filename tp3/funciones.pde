void dibujo(int x, int y) {
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (mouseX>width/2 && mouseY>0) {
        distant = dist(mouseX, mouseY, i*tam, j*tam);
        tono = distant*150/dist(width/2, 0, width, height);
      }
      if (relleno==false) {
        fill(255, 0, 154, tono);
      } else {
        fill(tono);
      }
      if ((i+j)%2==0) {
        ellipse(i*tam+tam/2, j*tam+tam/2, tam, tam);
      } else {
        rect(i*tam, j*tam, tam, tam);
      }
    }
  }
}

void boton() {
  fill(255, 0, 53);
  rect(0, 0, 100, 50);
  restart(width/2, 0, 100, 50);
  if (segundos%2==0) {
    fill(255);
    textFont(fuente);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("<Restart>", 100/2, 50/2);
  }
}

boolean restart(int ubicX, int ubicY, int ancho, int alto) {
  if (mouseX > ubicX && mouseX < ubicX+ancho && mouseY > ubicY && mouseY < ubicY+alto) {
    return true;
  } else {
    return false;
  }
}
