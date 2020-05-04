class P6 {
  void nivel1(){
    
    image(img8,0,0);  
    int xstart =  constrain(mouseX -w/2, 0, img5.width);
    int ystart =  constrain(mouseY -w/2, 0, img5.height);
    int xend =  constrain(mouseX +w/2, 0, img5.width);
    int yend =  constrain(mouseY +w/2, 0, img5.height);
    int matrixsize =3;
    loadPixels();
    for(int x= xstart; x<xend; x++){
      for (int y= ystart; y<yend; y++){
        color c = convolution(x, y, matrix, matrixsize, img5);
        int loc = x+y*img5.width;
        pixels[loc] = c;
      }
    }
    updatePixels();
    if(mousePressed){
      if((mouseX<297&& mouseX>0)&& (mouseY<480 && mouseY >183))
      p=7;
    }
  }
}


class P7 {
  void nivel2(){
    
    image(img8,0,0);  
    int xstart =  constrain(mouseX -w/2, 0, img6.width);
    int ystart =  constrain(mouseY -w/2, 0, img6.height);
    int xend =  constrain(mouseX +w/2, 0, img6.width);
    int yend =  constrain(mouseY +w/2, 0, img6.height);
    int matrixsize =3;
    loadPixels();
    for(int x= xstart; x<xend; x++){
      for (int y= ystart; y<yend; y++){
        color c = convolution(x, y, matrix, matrixsize, img6);
        int loc = x+y*img6.width;
        pixels[loc] = c;
      }
    }
    updatePixels();

    if(mousePressed){
      if((mouseX<641&& mouseX>432)&& (mouseY<267 && mouseY >0))
      p=8;
    }
  }
}


class P8 {
  void nivel3(){
    
    image(img8,0,0);  
    int xstart =  constrain(mouseX -w/2, 0, img7.width);
    int ystart =  constrain(mouseY -w/2, 0, img7.height);
    int xend =  constrain(mouseX +w/2, 0, img7.width);
    int yend =  constrain(mouseY +w/2, 0, img7.height);
    int matrixsize =3;
    loadPixels();
    for(int x= xstart; x<xend; x++){
      for (int y= ystart; y<yend; y++){
        color c = convolution(x, y, matrix, matrixsize, img7);
        int loc = x+y*img7.width;
        pixels[loc] = c;
      }
    }
    updatePixels();

    if(mousePressed){
      if((mouseX<140&& mouseX>0)&& (mouseY<172 && mouseY >0))
      p=9;
    }
  }
}

class P9{
  void finalj(){
    image(img9,0,0);
    
    //Boton regresar 
    noStroke();
    fill(24,170,170);
    rect(45,400, 120,39);
    fill(255);
    textFont(font2);
    textSize(16);
    text("Regresar", 70,423);
    
    if(mousePressed){
      if((mouseX<166&& mouseX>46)&& (mouseY<439 && mouseY >400))
      p=2;
    }
    
    if((mouseX<166&& mouseX>46)&& (mouseY<439 && mouseY >400)){
      noStroke();
      fill(99,224,220);
      rect(45,400, 120,39);
      fill(0);
      textFont(font2);
      textSize(16);
      text("Regresar", 70,423);
    }
      
    
    //Boton salir 
    noStroke();
    fill(24,170,170);
    rect(495,400, 120,39);
    fill(255);
    textFont(font2);
    textSize(16);
    text("Salir", 540,423);
    
    if(mousePressed){
      if((mouseX<615&& mouseX>495)&& (mouseY<439 && mouseY >400))
      exit();
    }
    
    if((mouseX<615&& mouseX>495)&& (mouseY<439 && mouseY >400)){
      noStroke();
      fill(99,224,220);
      rect(495,400, 120,39);
      fill(0);
      textFont(font2);
      textSize(16);
      text("Salir", 540,423);
    }
  }
}


color convolution(int x, int y, float[][] matrix, int matrixsize, PImage img){
    float rtotal =0.0;
    float gtotal =0.0;
    float btotal =0.0;
    int offset = matrixsize /2;
    for(int i = 0; i< matrixsize; i++){
      for (int j = 0; j< matrixsize; j++){
        int xloc = x+i-offset;
        int yloc = y+j-offset;
        int loc = xloc + img.width*yloc;
        loc=constrain(loc,0,img.pixels.length-1);
        
        rtotal += (red(img.pixels[loc])*matrix[i][j]);
        gtotal += (green(img.pixels[loc])*matrix[i][j]);
        btotal += (blue(img.pixels[loc])*matrix[i][j]);
      }
    }
    
    rtotal = constrain(rtotal, 0, 255);
    gtotal = constrain(gtotal, 0, 255);
    btotal = constrain(btotal, 0, 255);
    return color(rtotal, gtotal, btotal);
}
