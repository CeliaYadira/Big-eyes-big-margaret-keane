class P11{
  void imagen1(){
    image(img11,0,0);
 
    
    //Boton continuar
    noStroke();
    fill(24,170,170);
    rect(260,423, 121,39);
    textFont(font2);
    fill(255);
    textSize(17);
    text("Continuar", 278,447);
    
    if((mouseX<381&& mouseX>260)&& (mouseY<462 && mouseY >423)){
      noStroke();
      fill(99,224,220);
      rect(260,423, 121,39);
      textFont(font2);
      fill(0);
      textSize(17);
      text("Continuar", 278,447);
    }
    
    if(mousePressed){
      if((mouseX<381&& mouseX>260)&& (mouseY<462 && mouseY >423))
      p=12;
      
      //NEGATIVO
      img11.loadPixels();
      for (int i = 0; i < img11.width; i++)
      for(int j = 0; j < img11.height; j++){
        int loc = i + j * img11.width;
        color c = img11.pixels[loc]; 
        img11.pixels[loc] = color(255 - red(c), 255 - green(c), 255 - blue(c));
      }
      
      img11.updatePixels();
      delay(500);
    } 
  }
}



class P13{
  void imagen2(){
    image(img13,0,0); 
    
    //Boton continuar
    noStroke();
    fill(24,170,170);
    rect(260,423, 121,39);
    textFont(font2);
    fill(255);
    textSize(17);
    text("Continuar", 278,447);
    
    if((mouseX<381&& mouseX>260)&& (mouseY<462 && mouseY >423)){
      noStroke();
      fill(99,224,220);
      rect(260,423, 121,39);
      textFont(font2);
      fill(0);
      textSize(17);
      text("Continuar", 278,447);
    }
    
    if(mousePressed){
      if((mouseX<381&& mouseX>260)&& (mouseY<462 && mouseY >423))
      p=14;
      
      //NEGATIVO
      img13.loadPixels();
      for (int i = 0; i < img13.width; i++)
      for(int j = 0; j < img13.height; j++){
        int loc = i + j * img13.width;
        color c = img13.pixels[loc]; 
        img13.pixels[loc] = color(255 - red(c), 255 - green(c), 255 - blue(c));
      }

      img13.updatePixels();
      delay(500);
    }
  }
}








class P15{
  void imagen3(){
    image(img15,0,0); 
    
    //Boton continuar
    noStroke();
    fill(24,170,170);
    rect(260,423, 121,39);
    textFont(font2);
    fill(255);
    textSize(17);
    text("Continuar", 278,447);
    
    if((mouseX<381&& mouseX>260)&& (mouseY<462 && mouseY >423)){
      noStroke();
      fill(99,224,220);
      rect(260,423, 121,39);
      textFont(font2);
      fill(0);
      textSize(17);
      text("Continuar", 278,447);
    }
    
    if(mousePressed){
      if((mouseX<381&& mouseX>260)&& (mouseY<462 && mouseY >423))
      p=16;
      
      //NEGATIVO
      img15.loadPixels();
      for (int i = 0; i < img15.width; i++)
      for(int j = 0; j < img15.height; j++){
        int loc = i + j * img15.width;
        color c = img15.pixels[loc]; 
        img15.pixels[loc] = color(255 - red(c), 255 - green(c), 255 - blue(c));
      }
      
      img15.updatePixels();
      delay(500);
      
    }
  }
}
