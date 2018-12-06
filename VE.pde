class VE {
  
  void inicio(){
    
    image(img1,0,0);
    
    //Titulo
    font = createFont("Font1.ttf", 50);
    textFont(font);
    fill(255);
    text(" Un desastre en ", 550, 80);
    text(" Navidad", 590,150);
    
    //Instrucciones
    textSize(25);
    fill(255);
    text(" Haz click en A para continuar ", 550, 230);
        
    if(keyPressed &&(key== 'a'||  key == 'A')){
    p=2;
    }      
  }
  
   void historia(){

    // Imagen
    image(img2,0,0);
    
    //Cuadro de texto
    noStroke();
    fill(213, 133, 90);
    rect(245,80,373,90);
    
    //Texto
    font = createFont("Font2.ttf", 20);
    textFont(font);
    fill(0);
    text(" Nala es una perrita curiosa que decide investigar ", 250,100);
    text(" el arbol de navidad, pero accidentalmente lo tira. ", 250,120);
    text(" Las esferas salen volando y tu tienes que ayudarla ", 250,140);
    text(" a atraparlas antes de que se caigan ", 250,160);
    
    //Instrucción
    font = createFont("Font1.ttf", 30);
    textFont(font);
    fill(255);
    text(" Haz click en B para continuar ", 530, 470);
    
    if(keyPressed &&(key== 'B'||  key == 'b')){
    p=3;
    movie1.play();
    }  
  }
  
    void video(){
      
    //Video
    image(movie1,0,0,width,height);
    
    // Instrucción
    textSize(30);
    fill(255);
    text(" Haz click en D para iniciar el juego ", 480, 470);
    
    if(keyPressed &&(key== 'd'||  key == 'D')){
    p=4;
    } 
  }
  
    void instrucciones(){
    
    image(movie2,0,0,width,height);
    
    //Titulo
    font = createFont("Font1.ttf", 50);
    textFont(font);
    fill(255);
    text(" Instrucciones ", 320, 80);

    //Instrucciones
    textSize(30);
    text("Tienes quince segundos para atrapra la mayor cantidad de esferas",110,170);
    text("en el menor tiempo",110,210);
    text("Como se atrapan",110,280);
    text("Coloca el mouse sobre la esfera",110,330);
    
    text(" Haz click en W para iniciar el juego ", 240, 450); 
    
    
    font = createFont("Font2.ttf", 1);
    textFont(font);
    fill(255);
    text(" . ", 320, 80);
    
    if(keyPressed &&(key== 'w'||  key == 'W')){
    p=5;
    }
  }
  
  void juego(){
    
    image(img4,0,0);
    
    //Contador
    textSize(30);
    text("Contador: ",110,120);
    text(contador,240,120);
    
    //Cronometro
    if(inicio == 0){
      fill(0);
    }
    else{
      transcurso = millis() - inicio;
      if(transcurso<limite){
        textSize(30);
        fill(0);
        text("Tiempo: ", 110, 80);
        text(transcurso,240,80);
    }
    else{ p=6;
    }
    }
    
    catcher.Localizacion(mouseX, mouseY); 
    
    if (tiempo.tiempoter()) {
      esferas[totalE] = new Esfera();
      totalE ++ ;
      tiempo.start();
    }

    for (int i = 0; i < totalE; i++ ) {
      esferas[i].caer();
      esferas[i].display();
        if (catcher.choque(esferas[i])) {
          esferas[i].atrapar();
          contador ++;
        }
    } 
  }
  
    void resolucion(){
    
    image(img6,0,0);
    
    //Titulo
    font = createFont("Font1.ttf", 50);
    textFont(font);
    fill(255);
    text(" Gracias por jugar ", 550, 80);
    
    textSize(35);
    fill(255);
    text(" hasta la proxima ", 590, 130);
    
    text(" total: ", 630, 190);
    
    
    font = createFont("Font2.ttf", 35);
    textFont(font);
    fill(255); 
    text(contador,720, 190);
    
    
    font = createFont("Font1.ttf", 25);
    textFont(font);
    fill(255);
    text(" Haz click en M para salir del juego ", 540, 240);
    
    if(keyPressed &&(key== 'm'||  key == 'M')){
    exit();
    }    
  }
  
}

void keyPressed(){
  if (value ==0){
    inicio=millis();
  }
}
