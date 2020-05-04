class P1{
  void inicio(){
    image(img1,0,0);
  
    fill(0);
    textFont(font);
    textSize(18);
    text("Big eyes, Big Margaret Keane", 152,355);
  
    //Boton continuar
    noStroke();
    fill(24,170,170);
    rect(260,392, 120,39);
    fill(255);
    textFont(font2);
    textSize(16);
    text("Continuar", 280,415);
  
    if(mousePressed){
      if((mouseX<380&& mouseX>260)&& (mouseY<431 && mouseY >392))
      p=2;
    }

    if((mouseX<380&& mouseX>260)&& (mouseY<431 && mouseY >393)){
      noStroke();
      fill(99,224,220);
      rect(260,392, 120,39);
      fill(0);
      textFont(font2);
      textSize(16);
      text("Continuar", 280,415);
    } 
  }
}


class P2{
  void galeria(){
    image(img2,0,0);
    
    //Boton intro
    if((mouseX<108&& mouseX>32)&& (mouseY<248 && mouseY >148)){
      noStroke();
      fill(0,0,0,200);
      rect(32,148, 76,100);
      textFont(font);
      fill(255);
      textSize(17);
      text("Intro", 46,205);
    }
  
    if(mousePressed){
      if((mouseX<108&& mouseX>32)&& (mouseY<248 && mouseY >148))
      p=3;
    }
  
  
    //Boton obras
    if((mouseX<389&& mouseX>257)&& (mouseY<282 && mouseY >141)){
      noStroke();
      fill(0,0,0,200);
      rect(257,141, 132,141);
      textFont(font);
      fill(255);
      textSize(17);
      text("Obras", 293,215);
    }
    
    if(mousePressed){
      if((mouseX<389&& mouseX>257)&& (mouseY<282 && mouseY >141))
      p=10;
    }
    
    //Boton juego
    if((mouseX<608&& mouseX>532)&& (mouseY<253 && mouseY >147)){
      noStroke();
      fill(0,0,0,200);
      rect(532,147, 76,106);
      textFont(font);
      fill(255);
      textSize(17);
      text("Juego", 538,205);
    }
  
    if(mousePressed){
      if((mouseX<608&& mouseX>532)&& (mouseY<253 && mouseY >147))
      p=5;
    }
  }
}





class P3{
  void bio(){
    image(img3,0,0);
  
    noStroke();
    fill(24,170,170);
    rect(407,365, 120,39);
    fill(255);
    textFont(font2);
    textSize(16);
    text("Continuar", 428,389);
  
    if(mousePressed){
      if((mouseX<527&& mouseX>407)&& (mouseY<404 && mouseY >365))
      p=4;
    }
  

    if((mouseX<527&& mouseX>407)&& (mouseY<404 && mouseY >365)){
      noStroke();
      fill(99,224,220);
      rect(407,365, 120,39);
      fill(0);
      textFont(font2);
      textSize(16);
      text("Continuar", 428,389);
    } 
  }
}


//Instrucciones del juego 
class P5{
  void instruccionesj(){
    image(img4,0,0);
  
    noStroke();
    fill(24,170,170);
    rect(399,352, 121,39);
    fill(255);
    textFont(font2);
    textSize(16);
    text("Continuar", 421,376);
  
    if(mousePressed){
      if((mouseX<520&& mouseX>399)&& (mouseY<391 && mouseY >352))
      p=6;
    }
    
    if((mouseX<520&& mouseX>399)&& (mouseY<391 && mouseY >352)){
      noStroke();
      fill(99,224,220);
      rect(399,352, 121,39);
      fill(0);
      textFont(font2);
      textSize(16);
      text("Continuar", 421,376);  
    }
  }
}

//Instrucciones preguntas obras 
class P10{
  void instruccionesp(){
    image(img10,0,0);
    
    noStroke();
    fill(24,170,170);
    rect(260,384, 121,39);
    textFont(font2);
    fill(255);
    textSize(17);
    text("Continuar", 280,410);
    
    if((mouseX<381&& mouseX>260)&& (mouseY<423 && mouseY >384)){
      noStroke();
      fill(99,224,220);
      rect(260,384, 121,39);
      textFont(font2);
      fill(0);
      textSize(17);
      text("Continuar", 280,410);
    }
    
    if(mousePressed){
      if((mouseX<381&& mouseX>260)&& (mouseY<423 && mouseY >384))
      p=11;
    }
  }
}

class P17{
  void finalq(){
    image(img17,0,0);
    
    noStroke();
    fill(24,170,170);
    rect(250,400, 120,39);
    textFont(font2);
    fill(255);
    textSize(16);
    text("Regresar", 276,423);
    
    if((mouseX<370&& mouseX>250)&& (mouseY<439 && mouseY >400)){
      noStroke();
      fill(99,224,220);
      rect(250,400, 120,39);
      textFont(font2);
      fill(0);
      textSize(16);
      text("Regresar", 276,423);
    }
    
    if(mousePressed){
      if((mouseX<370&& mouseX>250)&& (mouseY<439 && mouseY >400))
      p=2;
    }
  }
}
