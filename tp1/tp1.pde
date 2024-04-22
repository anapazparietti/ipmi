/* Parietti Ana Paz
tp1 comisión 1
*/

PImage fondo;

void setup(){
  size(800,400);
  fondo = loadImage("mariposa.jpeg");
}

void draw(){
  background(255);
  image(fondo,0,0,400,400);
  
 //coordenadas en la consola 
  println ("(" + mouseX + "," + mouseY + ")");

 //DIBUJO
 
 //alas
strokeWeight(3.5);
stroke(66,51,48);
fill(54,76,87);//azul
triangle(435,110,599,141,488,237);//izda
quad(599,141,590,320,541,345,500,225);//izda
triangle(776,110,612,141,723,237);//dcha
quad(612,141,625,320,680,345,711,225);//dcha

fill(225,121,34);//naranja
noStroke();
quad(449,113,435,109,488,238,501,225);//izda arriba
triangle(536,325,503,227,570,313);//izda
quad(541,345,590,319,590,299,535,323);//izda
quad(762,112,777,110,724,237,711,224);//dcha arriba
triangle(684,325,710,227,640,312);//dcha
quad(680,345,626,319,625,299,684,323);//dcha

fill(255,230,200);//nude
quad(701,125,721,121,742,191,687,204);
quad(504,125,525,128,526,202,464,182);

//circulos alas
strokeWeight(3.5);
stroke(66,51,48);
fill(255,220,100);//amarillo
ellipse(485,146,17,17);//izda 1
ellipse(500,185,30,35);//izda 2
ellipse(545,250,40,55);//izda 3
ellipse(570,295,20,30);//izda 4
ellipse(740,146,17,17);//dcha 1
ellipse(720,185,30,35);//dcha 2
ellipse(675,250,40,55);//dcha 3
ellipse(650,295,20,30);//dcha 4

//antenas
strokeWeight(2);
line(557,47,603,128);//izda
line(607,130,670,87);//dcha
fill(66,51,48);
ellipse(556,45,4,6);//izda
ellipse(670,87,4,6);//dcha


//circulos internos alas 
noStroke();
fill(160,70,160);//violeta
ellipse(545,250,25,45);//izda 3
ellipse(675,250,25,45);//dcha 3
fill(0);
ellipse(500,185,20,25);//izda 2
ellipse(720,185,20,25);//dcha 2

//cuerpo
fill(66,51,48);//marrón
ellipse(607,195,20,150);

//cabeza
ellipse(606,130,25,25);





}
