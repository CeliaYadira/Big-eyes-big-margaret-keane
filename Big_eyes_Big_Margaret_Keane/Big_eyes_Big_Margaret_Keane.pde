import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

//Filtro enfocar
int w =120;                 
float [][] matrix = {{ 0,-1,  0},
                     {-1, 5, -1},
                     { 0,-1,  0}};


int p=1;

//Pantallas
P1 p1;
P2 p2;
P3 p3;
P4 p4;
P5 p5;
P6 p6;
P7 p7;
P8 p8;
P9 p9;
P10 p10;
P11 p11;
P12 p12;
P13 p13;
P14 p14;
P15 p15;
P16 p16;
P17 p17;

//Imagenes
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;
PImage img11;
PImage img12;
PImage img13;
PImage img14;
PImage img15;
PImage img16;
PImage img17;

PFont  font;
PFont  font2;

void setup(){
  size(640, 480);
  
  //Imagenes
  img1 = loadImage("intro.jpg");
  img2 = loadImage("galeria.jpg");
  img3 = loadImage("bio.jpg");
  img4 = loadImage("instruccionesj.jpg");
  img5 = loadImage("nivel1.jpg");
  img6 = loadImage("nivel2.jpg");
  img7 = loadImage("nivel3.jpg");
  img8 = loadImage("negro.jpg");
  img9 = loadImage("resolucion.jpg");
  img10 = loadImage("instruccionesq.jpg");
  img11 = loadImage("obra1.jpg");
  img12 = loadImage("pregunta1.jpg");
  img13 = loadImage("obra2.jpg");
  img14 = loadImage("pregunta2.jpg");
  img15 = loadImage("obra3.jpg");
  img16 = loadImage("pregunta3.jpg");
  img17 = loadImage("resolucion2.jpg");
  
  //Fuente
  font = createFont("Photoshoot.ttf", 20);
  font2 = createFont("GOTHIC.TTF",20);
  
  //Pantallas
  p1 = new P1();
  p2 = new P2();
  p3 = new P3();
  p4 = new P4();
  p5 = new P5();
  p6 = new P6();
  p7 = new P7();
  p8 = new P8();
  p9 = new P9();
  p10 = new P10();
  p11 = new P11();
  p12 = new P12();
  p13 = new P13();
  p14 = new P14();
  p15 = new P15();
  p16 = new P16();
  p17 = new P17();
  
  //
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_EYE);  

  video.start();
}


void draw(){
  if (p==1){
    p1.inicio();
  }
  
  if (p==2){
    p2.galeria();
  }
  
  if (p==3){
    p3.bio();
  }
  
  if (p==4){
    p4.cam();
  }
  
  if (p==5){
    p5.instruccionesj();
  }
  
  if (p==6){
    p6.nivel1();
  }
  
  if (p==7){
    p7.nivel2();
  }
  
  if (p==8){
    p8.nivel3();
  }
  
  if (p==9){
    p9.finalj();
  }
  
  if (p==10){
    p10.instruccionesp();
  }
  
  if (p==11){
    p11.imagen1();
  }
  
  if (p==12){
    p12.pregunta1();
  }
  
  if (p==13){
    p13.imagen2();
  }
  
  if (p==14){
    p14.pregunta2();
  }
  
  if (p==15){
    p15.imagen3();
  }
  
  if (p==16){
    p16.pregunta3();
  }
  
  if (p==17){
    p17.finalq();
  }
}
