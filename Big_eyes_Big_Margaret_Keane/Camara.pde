class P4{
  void cam(){
    scale(2);
    opencv.loadImage(video);

    image(video, 0, 0 );

    noFill();
    stroke(0, 255, 0);
    strokeWeight(3);
    Rectangle[] faces = opencv.detect();
    println(faces.length);

    for (int i = 0; i < faces.length; i++) {
      println(faces[i].x + "," + faces[i].y);
      rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    }
  
    //Boton regresar
    scale(0.5);
    noStroke();
    fill(24,170,170);
    rect(27,410, 120,39);
  
    fill(255);
    textFont(font2);
    textSize(16);
    text("Regresar", 53,433);
  
    if(mousePressed){
      if((mouseX<147&& mouseX>27)&& (mouseY<449 && mouseY >410))
      p=2;
    }
  
    if((mouseX<147&& mouseX>27)&& (mouseY<449 && mouseY >410)){
      noStroke();
      fill(99,224,220);
      rect(27,410, 120,39);
      fill(0);
      textFont(font2);
      textSize(16);
      text("Regresar", 53,433);  
    }
  }
}

void captureEvent(Capture c) {
  c.read();
}
